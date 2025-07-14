import 'package:dartz/dartz.dart';
import 'package:linkedin_profile/core/error/failures.dart';
import 'package:linkedin_profile/features/profile/data/models/profile_model/profile.dart';

abstract class ProfileRepo {
  Future<Either<Failures, List<ProfileModel>>> getProfileData();
}
