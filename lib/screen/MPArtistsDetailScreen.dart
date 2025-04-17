import 'package:flutter/material.dart';
import 'package:music_podcast/models/MusicModel.dart';
import 'package:music_podcast/screen/MPSearchScreen.dart';
import 'package:music_podcast/screen/PurchaseMoreScreen.dart';
import 'package:music_podcast/utils/MPColors.dart';
import 'package:music_podcast/utils/MPDataGenerator.dart';
import 'package:music_podcast/utils/MPWidget.dart';
import 'package:nb_utils/nb_utils.dart';

class MPArtistsDetailScreen extends StatefulWidget {
  final String? img;

  MPArtistsDetailScreen({this.img});

  @override
  MPArtistsDetailScreenState createState() => MPArtistsDetailScreenState();
}

class MPArtistsDetailScreenState extends State<MPArtistsDetailScreen> {
  List<MusicModel> podCastDetailList = getPodCastDetailList();
  List<MusicModel> artistsDetailAlbumList = getArtistsDetailAlbumList();

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
        backgroundColor: mpAppBackGroundColor,
        title: Text('Artists Detail', style: boldTextStyle(color: white.withOpacity(0.9), size: 18)),
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: white.withOpacity(0.9)),
        actions: [
          searchIconWidget(onPressed: () {
            MPSearchScreen().launch(context);
          }),
        ],
      ),
      body: PurchaseMoreScreen(),
    );
  }
}
