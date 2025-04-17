import 'package:flutter/material.dart';
import 'package:music_podcast/screen/PurchaseMoreScreen.dart';
import 'package:music_podcast/utils/MPColors.dart';

class MPSongTypeScreen extends StatefulWidget {
  static String tag = '/ MPSongScreen';

  @override
  MPSongTypeScreenState createState() => MPSongTypeScreenState();
}

class MPSongTypeScreenState extends State<MPSongTypeScreen> {
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
    return PurchaseMoreScreen();
  }
}
