import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/profile/domain/entities/profile.dart';
import 'package:movie_app/features/profile/domain/repositories/profile_repository.dart';

class GetAllUser {
  final ProfileRepository profileRepository;

  const GetAllUser(this.profileRepository);
  Future<Either<Failure, List<Profile>>> execute(int page) async {
    return await profileRepository.getAllUser(page);
  }
}
