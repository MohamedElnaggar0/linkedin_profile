import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:linkedin_profile/core/error/failures.dart';
import 'package:linkedin_profile/core/utils/service/api_service.dart';
import 'package:linkedin_profile/features/profile/data/models/profile_model/profile.dart';
import 'package:linkedin_profile/features/profile/data/repos/profile_repo.dart';

class ProfileRepoImpl implements ProfileRepo {
  final ApiService apiService;

  ProfileRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<ProfileModel>>> getProfileData() async {
    final String endpoint =
        '/get-linkedin-profile?linkedin_url=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fmohamedelnaggar09%2F&include_skills=false&include_certifications=false&include_publications=false&include_honors=false&include_volunteers=false&include_projects=false&include_patents=false&include_courses=false&include_organizations=false&include_profile_status=false&include_company_public_url=false';
    final Map<String, String> headers = {
      'x-rapidapi-key': '4d66a08721msh898331184e80ba9p1de85djsnc353527ea8e2',
      'x-rapidapi-host': 'fresh-linkedin-profile-data.p.rapidapi.com',
    };
    try {
      var data = await apiService.get(endpoint: endpoint, headers: headers);
      List<ProfileModel> profileList = [];
      profileList.add(
        ProfileModel.fromJson(data),
      );
      return right(profileList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
