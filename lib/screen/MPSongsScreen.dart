import 'package:flutter/material.dart';
import 'package:music_podcast/component/MPDrawerScreen.dart';
import 'package:music_podcast/models/MusicModel.dart';
import 'package:music_podcast/screen/MPSearchScreen.dart';
import 'package:music_podcast/screen/PurchaseMoreScreen.dart';
import 'package:music_podcast/utils/MPColors.dart';
import 'package:music_podcast/utils/MPDataGenerator.dart';
import 'package:music_podcast/utils/MPWidget.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nb_utils/nb_utils.dart';

class MPSongsScreen extends StatefulWidget {
  @override
  MPSongsScreenState createState() => MPSongsScreenState();
}

class MPSongsScreenState extends State<MPSongsScreen> {
  List<MusicModel> disCoverList = getDisCoverList();
  List<MusicModel> songsList = getSongsList();

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

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
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
          },
          icon: Icon(Icons.menu, color: white.withOpacity(0.9)),
        ),
        backgroundColor: mpAppBackGroundColor,
        elevation: 0.0,
        title: Text("Songs", style: boldTextStyle(color: Colors.white.withOpacity(0.9))),
        actions: [
          searchIconWidget(onPressed: () {
            MPSearchScreen().launch(context);
          }),
        ],
      ),
      drawer: DrawerScreen(),
      body: PurchaseMoreScreen(),
    );
  }
}
