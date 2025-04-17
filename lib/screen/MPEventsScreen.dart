import 'package:flutter/material.dart';
import 'package:music_podcast/models/MusicModel.dart';
import 'package:music_podcast/screen/MPSearchScreen.dart';
import 'package:music_podcast/screen/PurchaseMoreScreen.dart';
import 'package:music_podcast/utils/MPColors.dart';
import 'package:music_podcast/utils/MPDataGenerator.dart';
import 'package:music_podcast/utils/MPWidget.dart';
import 'package:nb_utils/nb_utils.dart';

class MPEventsScreen extends StatefulWidget {
  final String? name;

  MPEventsScreen({this.name});

  static String tag = '/MPEventsScreen';

  @override
  MPEventsScreenState createState() => MPEventsScreenState();
}

class MPEventsScreenState extends State<MPEventsScreen> {
  List<NewsList> newsList = getNewsList();
  List<MusicModel> eventDateList = getDateList();
  List<MusicModel> eventList = getEventsList();

  int current = 3;
  int i = 1;

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
        title: Text(widget.name!, style: boldTextStyle(color: white.withOpacity(0.9), size: 18)),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: white.withOpacity(0.9)),
        actions: [
          searchIconWidget(onPressed: () {
            MPSearchScreen().launch(context);
          }),
        ],
        elevation: 0.0,
      ),
      body: PurchaseMoreScreen(),
    );
  }
}
