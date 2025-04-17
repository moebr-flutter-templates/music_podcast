import 'package:flutter/material.dart';
import 'package:music_podcast/screen/MPTabBarSignInScreen.dart';
import 'package:music_podcast/utils/AppWidget.dart';
import 'package:music_podcast/utils/MPColors.dart';
import 'package:music_podcast/utils/MPImages.dart';
import 'package:nb_utils/nb_utils.dart';

class MPSignInAndSignUpScreen extends StatefulWidget {
  @override
  MPSignInAndSignUpScreenState createState() => MPSignInAndSignUpScreenState();
}

class MPSignInAndSignUpScreenState extends State<MPSignInAndSignUpScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mpAppBackGroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          commonCacheImageWidget(mpImages_16, height: 240, width: 240, fit: BoxFit.cover).cornerRadiusWithClipRRect(120),
          70.height,
          AppButton(
              child: Text('Sign in', style: boldTextStyle(color: mpAppButtonColor)),
              color: white,
              width: context.width(),
              onTap: () {
                finish(context);
                MPTabBarSignInScreen(0).launch(context);
              }).cornerRadiusWithClipRRect(24),
          16.height,
          AppButton(
              child: Text('Sign up', style: primaryTextStyle(color: Colors.white)),
              color: mpAppButtonColor,
              width: context.width(),
              onTap: () {
                finish(context);
                MPTabBarSignInScreen(1).launch(context);
              }).cornerRadiusWithClipRRect(24),
          16.height,
          Text('Terms of Service', style: primaryTextStyle(color: mpAppButtonColor, size: 14))
        ],
      ).paddingSymmetric(horizontal: 16),
    );
  }
}
