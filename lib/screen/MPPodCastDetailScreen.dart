import 'package:flutter/material.dart';
import 'package:music_podcast/screen/MPSearchScreen.dart';
import 'package:music_podcast/screen/PurchaseMoreScreen.dart';
import 'package:music_podcast/utils/MPColors.dart';
import 'package:music_podcast/utils/MPWidget.dart';
import 'package:nb_utils/nb_utils.dart';

class MPPodCastDetailScreen extends StatefulWidget {
  final String? img;

  MPPodCastDetailScreen({this.img});

  @override
  MPPodCastDetailScreenState createState() => MPPodCastDetailScreenState();
}

class MPPodCastDetailScreenState extends State<MPPodCastDetailScreen> {
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
        title: Text('Podcast Detail', style: boldTextStyle(color: white.withOpacity(0.9), size: 18)),
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
      bottomNavigationBar: Container(height: 70, child: playMusicWidget(context)),
    );
  }
}
