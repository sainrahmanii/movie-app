import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/features/profile/data/models/profile_model.dart';

import 'profile_remote_data_source.dart';

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  const ProfileRemoteDataSourceImpl();

  @override
  Future<List<ProfileModel>> getAllUser(int page) async {
    Uri url = Uri.parse("https://reqres.in/api/users?page=$page");
    var response = await http.get(url);

    Map<String, dynamic> dataBody = jsonDecode(response.body);
    List<Map<String, dynamic>> data = dataBody['data'];
    return ProfileModel.fromJsonList(data);
  }

  @override
  Future<ProfileModel> getUserById(int id) {
    Uri url = Uri.parse("https://reqres.in/api/users/$id");
    return http.get(url).then((response) {
      Map<String, dynamic> dataBody = jsonDecode(response.body);
      return ProfileModel.fromJson(dataBody);
    });
  }
}
