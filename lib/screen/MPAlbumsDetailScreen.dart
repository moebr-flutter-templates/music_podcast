import 'package:flutter/material.dart';
import 'package:music_podcast/models/MusicModel.dart';
import 'package:music_podcast/screen/MPSearchScreen.dart';
import 'package:music_podcast/screen/PurchaseMoreScreen.dart';
import 'package:music_podcast/utils/MPColors.dart';
import 'package:music_podcast/utils/MPWidget.dart';
import 'package:nb_utils/nb_utils.dart';

class MPAlbumsDetailScreen extends StatefulWidget {
  final MusicModel? data;

  MPAlbumsDetailScreen({this.data});

  static String tag = '/MPAlbumsDetailScreen';

  @override
  MPAlbumsDetailScreenState createState() => MPAlbumsDetailScreenState();
}

class MPAlbumsDetailScreenState extends State<MPAlbumsDetailScreen> {
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
      appBar: AppBar(
        title: Text('Album Detail').center(),
        backgroundColor: mpAppBackGroundColor,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          searchIconWidget(onPressed: () {
            MPSearchScreen().launch(context);
          }),
        ],
      ),
      backgroundColor: mpAppBackGroundColor,
      body: PurchaseMoreScreen(),
    );
  }
}
