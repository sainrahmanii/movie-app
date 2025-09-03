import 'package:movie_app/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:movie_app/features/profile/data/models/profile_model.dart';

class ProfileRepositoryImplementation extends ProfileRemoteDataSource {
  @override
  Future<List<ProfileModel>> getAllUser(int page) {
    // TODO: implement getAllUser
    throw UnimplementedError();
  }

  @override
  Future<ProfileModel> getUserById(int id) {
    // TODO: implement getUserById
    throw UnimplementedError();
  }
}
