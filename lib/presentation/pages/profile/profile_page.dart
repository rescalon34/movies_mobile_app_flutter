import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:movies_mobile_app_flutter/core/util/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/data/util/string_extensions.dart';

import '../../../core/navigation/routes/general_routes/general_routes.dart';
import '../../../core/navigation/routes/profile_routes.dart';
import '../../../data/util/network_constants.dart';
import '../../bloc/user_authentication/user_authentication_bloc.dart';
import '../../components/circle_gradient_avatar.dart';
import '../../components/custom_appbar.dart';
import '../../components/horizontal_list_item.dart';
import '../../components/rounded_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Profile",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(16),
            _buildProfileHeader(),
            const Gap(24),
            _buildProfileOptions(context),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Version 1.0.0",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleGradientAvatar(
            imageUrl: Constants.profileImage.getPosterUrl(
              posterWidth: Constants.w150ProfileSize,
            ),
            imageSize: 45,
          ),
          const Gap(8),
          RoundedButton(
            text: "Edit Profile",
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOptions(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HorizontalListItem(
          text: "App Settings",
          onItemClick: () => context.navigator.pushPage(SettingsAPageRoute()),
        ),
        HorizontalListItem(
          text: "Account Policy",
          onItemClick: () {
            context.navigator
                .pushPage(GenericPageRoute(title: "Account Policy"));
          },
        ),
        HorizontalListItem(
          text: "Privacy Policy",
          onItemClick: () {
            context.navigator
                .pushPage(GenericPageRoute(title: "Privacy Policy"));
          },
        ),
        HorizontalListItem(
          text: "Credits",
          onItemClick: () {
            context.navigator.pushPage(GenericPageRoute(title: "Credits"));
          },
        ),
        HorizontalListItem(
          text: "Log out",
          showArrowIcon: false,
          onItemClick: () =>
              context.read<UserAuthenticationBloc>().add(const LoggedOut()),
        ),
      ],
    );
  }
}
