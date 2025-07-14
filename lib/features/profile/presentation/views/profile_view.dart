import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkedin_profile/core/utils/service_locator.dart';
import 'package:linkedin_profile/features/profile/data/repos/profile_repo_impl.dart';
import 'package:linkedin_profile/features/profile/presentation/blocs/cubit/profile_data_cubit.dart';
import 'package:linkedin_profile/features/profile/presentation/views/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ProfileDataCubit(
          getIt.get<ProfileRepoImpl>(),
        )..getProfileData(),
        child: ProfileViewBody(),
      ),
    );
  }
}
