import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:linkedin_profile/core/utils/service/api_service.dart';
import 'package:linkedin_profile/features/profile/data/repos/profile_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<ProfileRepoImpl>(
      ProfileRepoImpl(getIt.get<ApiService>()));
}
