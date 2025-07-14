part of 'profile_data_cubit.dart';

sealed class ProfileDataState extends Equatable {
  const ProfileDataState();

  @override
  List<Object> get props => [];
}

final class ProfileDataInitial extends ProfileDataState {}

final class ProfileDataLoading extends ProfileDataState {}

final class ProfileDataFailure extends ProfileDataState {
  final String message;
  const ProfileDataFailure({required this.message});
}

final class ProfileDataSuccess extends ProfileDataState {
  final List<ProfileModel> profileList;
  const ProfileDataSuccess({required this.profileList});
}
