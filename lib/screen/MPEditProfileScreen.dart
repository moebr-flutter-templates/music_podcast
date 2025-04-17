import 'package:flutter/material.dart';
import 'package:music_podcast/screen/PurchaseMoreScreen.dart';
import 'package:music_podcast/utils/MPColors.dart';
import 'package:nb_utils/nb_utils.dart';

class MPEditProfileScreen extends StatefulWidget {
  @override
  MPEditProfileScreenState createState() => MPEditProfileScreenState();
}

class MPEditProfileScreenState extends State<MPEditProfileScreen> {
  bool isSelected = true;

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
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: mpDrawerBackGroundColor,
        title: Text("Edit Profile", style: boldTextStyle(color: white.withOpacity(0.9))),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: PurchaseMoreScreen(),
    );
  }
}
