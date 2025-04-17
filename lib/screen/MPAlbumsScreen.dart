import 'package:flutter/material.dart';
import 'package:music_podcast/models/MusicModel.dart';
import 'package:music_podcast/screen/MPAlbumsDetailScreen.dart';
import 'package:music_podcast/screen/MPSearchScreen.dart';
import 'package:music_podcast/screen/MPSongsScreen.dart';
import 'package:music_podcast/screen/PurchaseMoreScreen.dart';
import 'package:music_podcast/utils/AppWidget.dart';
import 'package:music_podcast/utils/MPColors.dart';
import 'package:music_podcast/utils/MPDataGenerator.dart';
import 'package:music_podcast/utils/MPWidget.dart';
import 'package:nb_utils/nb_utils.dart';

// ignore: must_be_immutable
class MPAlbumsScreen extends StatefulWidget {
  static String tag = '/ MPAlbumsScreen';
  bool? isTab = true;

  MPAlbumsScreen({this.isTab});

  @override
  MPAlbumsScreenState createState() => MPAlbumsScreenState();
}

class MPAlbumsScreenState extends State<MPAlbumsScreen> {
  List<MusicModel> trendingList = getAlbumsList();
  List<MusicModel> topAlbumList = getAlbumGridList();

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
    return SingleChildScrollView(
      child: Column(
        children: [
          16.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('New Trending', style: boldTextStyle(color: Colors.white)),
              Text('View All', style: primaryTextStyle(color: mpAppButtonColor)).paddingOnly(right: 8).onTap(() {
                MPSongsScreen().launch(context);
              }),
            ],
          ).paddingOnly(left: 16, right: 16),
          16.height,
          SizedBox(
            height: 190,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 8, right: 8),
              scrollDirection: Axis.horizontal,
              itemCount: trendingList.length,
              itemBuilder: (BuildContext context, int index) {
                MusicModel data = trendingList[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    commonCacheImageWidget(data.img, height: 130, width: 250, fit: BoxFit.cover).cornerRadiusWithClipRRect(10).onTap(() {
                      MPAlbumsDetailScreen(data: data).launch(context);
                    }),
                    4.height,
                    Text(data.title!, style: primaryTextStyle(color: Colors.white)),
                    4.height,
                    Text(data.subtitle!, style: secondaryTextStyle(color: Colors.grey)),
                  ],
                ).paddingOnly(left: 8, right: 8);
              },
            ),
          ),
          8.height,
          Divider(color: Colors.grey),
          8.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Top Albums', style: boldTextStyle(color: Colors.white)).onTap(() {}),
              Text('View All', style: primaryTextStyle(color: mpAppButtonColor)).paddingOnly(right: 8).onTap(() {
                MPSongsScreen().launch(context);
              }),
            ],
          ).paddingOnly(left: 16, right: 16),
          16.height,
          PurchaseMoreScreen().withHeight(context.height() * 0.5)
        ],
      ),
    );
  }
}
