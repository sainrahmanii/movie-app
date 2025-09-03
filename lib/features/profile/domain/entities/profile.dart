// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Profile extends Equatable {
  final int id;
  final String fullName;
  final String email;
  final String avatarUrl;

  const Profile({
    required this.id,
    required this.fullName,
    required this.email,
    required this.avatarUrl,
  });

  @override
  List<Object> get props => [id, fullName, email, avatarUrl];
}
