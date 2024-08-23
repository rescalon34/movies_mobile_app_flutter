import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movies_mobile_app_flutter/core/extension/app_core_extensions.dart';
import 'package:movies_mobile_app_flutter/core/extension/navigation_extensions.dart';
import 'package:movies_mobile_app_flutter/data/util/string_extensions.dart';

import '../../../core/di/di_main_module.dart';
import '../../../core/navigation/routes/general_routes/general_routes.dart';
import '../../../core/navigation/routes/login/authentication_routes.dart';
import '../../../core/navigation/routes/profile/profile_routes.dart';
import '../../../core/util/shared_pref_helper.dart';
import '../../../data/util/network_constants.dart';
import '../../components/circle_gradient_avatar.dart';
import '../../components/custom_appbar.dart';
import '../../components/horizontal_list_item.dart';
import '../../components/rounded_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final SharedPrefHelper sharedPref = getIt<SharedPrefHelper>();

    return Scaffold(
      appBar: const CustomAppBar(
        title: "Profile",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(16),
            _buildProfileHeader(sharedPref),
            const Gap(24),
            _buildProfileOptions(
              context,
              sharedPref,
            ),
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

  /// MARK: - Profile header
  Widget _buildProfileHeader(SharedPrefHelper sharedPref) {
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
          Text("${sharedPref.getString(SharedPrefHelper.userNameKey)}"),
          const Gap(8),
          RoundedButton(
            text: "Edit Profile",
            onPressed: () {
              setState(() {
                sharedPref.setString(
                    SharedPrefHelper.userNameKey, "rescalon34");
              });
            },
          ),
        ],
      ),
    );
  }

  /// MARK: - Profile list options
  Widget _buildProfileOptions(
    BuildContext context,
    SharedPrefHelper sharedPref,
  ) {
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
          onItemClick: () {
            context.showCustomAdaptiveDialog(
              title: "Confirm Logout",
              description:
                  "Are you sure you want to log out? You will need to log in again to access your account.",
              cancelButtonText: "Cancel",
              positiveButtonText: "Ok",
              positiveAction: () {
                Navigator.pop(context); // Dismiss dialog.
                // TODO: Simulating a logout for now.
                sharedPref.setBoolean(SharedPrefHelper.isUserLoggedIn, false);
                context.navigator.navigateTo(LoginPageRoute());
              },
            );
          },
        ),
      ],
    );
  }
}
