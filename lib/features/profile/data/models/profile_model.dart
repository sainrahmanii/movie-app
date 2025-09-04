import '../../domain/entities/profile.dart';

class ProfileModel extends Profile {
  final String firstName;
  final String lastName;
  final String avatar;

  const ProfileModel({
    required super.id,
    required this.firstName,
    required this.lastName,
    required super.email,
    required this.avatar,
  }) : super(fullName: '$firstName $lastName', avatarUrl: avatar);

  factory ProfileModel.fromJson(Map<String, dynamic> dataJson) {
    Map<String, dynamic> data = dataJson["data"];
    return ProfileModel(
      id: data["id"],
      firstName: data["first_name"],
      lastName: data["last_name"],
      email: data["email"],
      avatar: data["avatar"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "email": email,
      "firstName": firstName,
      "lastName": lastName,
      "avatar": avatar,
    };
  }
}
