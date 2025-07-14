import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkedin_profile/features/profile/data/models/profile_model/profile.dart';
import 'package:linkedin_profile/features/profile/data/repos/profile_repo.dart';

part 'profile_data_state.dart';

class ProfileDataCubit extends Cubit<ProfileDataState> {
  ProfileDataCubit(this.profileRepo) : super(ProfileDataInitial());
  final ProfileRepo profileRepo;

  Future<void> getProfileData() async {
    emit(ProfileDataLoading());
    final result = await profileRepo.getProfileData();
    result.fold(
      (failure) {
        emit(
          ProfileDataFailure(message: failure.errorMessage),
        );
      },
      (profiledata) {
        emit(ProfileDataSuccess(profileList: profiledata));
      },
    );
  }
}
