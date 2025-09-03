import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/profile/domain/entities/profile.dart';
import 'package:movie_app/features/profile/domain/repositories/profile_repository.dart';

class GetUserById {
  final ProfileRepository profileRepository;
  const GetUserById(this.profileRepository);
  Future<Either<Failure, Profile>> execute(int id) async {
    return await profileRepository.getUserById(id);
  }
}
