import 'package:dartz/dartz.dart';
import 'package:linkedin_profile/core/error/failures.dart';
import 'package:linkedin_profile/features/profile/data/models/profile_model/profile.dart';
import 'package:linkedin_profile/features/profile/data/repos/profile_repo.dart';

class ProfileRepoImpl implements ProfileRepo {
  @override
  Future<Either<Failures, List<ProfileModel>>> getProfileData() {
    // TODO: implement getProfileData
    throw UnimplementedError();
  }
}
