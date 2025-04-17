import 'package:flutter/material.dart';
import 'package:music_podcast/component/MPDrawerScreen.dart';
import 'package:music_podcast/models/MusicModel.dart';
import 'package:music_podcast/screen/PurchaseMoreScreen.dart';
import 'package:music_podcast/utils/MPColors.dart';
import 'package:music_podcast/utils/MPDataGenerator.dart';
import 'package:music_podcast/utils/MPImages.dart';
import 'package:music_podcast/utils/MPWidget.dart';
import 'package:nb_utils/nb_utils.dart';

class MPOurChoicesScreen extends StatefulWidget {
  @override
  MPOurChoicesScreenState createState() => MPOurChoicesScreenState();
}

class MPOurChoicesScreenState extends State<MPOurChoicesScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  List<MusicModel> trendList1 = getTrendList1();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: mpAppBackGroundColor,
        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: mpAppBackGroundColor,
          leading: IconButton(
            icon: Icon(Icons.menu, color: white),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
          title: SizedBox(
            height: 40,
            child: AppTextField(
              textStyle: primaryTextStyle(color: Colors.white.withOpacity(0.4)),
              textFieldType: TextFieldType.EMAIL,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                contentPadding:  EdgeInsets.all(1),
                prefixIcon: Icon(Icons.search, color: Colors.white.withOpacity(0.2)),
                fillColor: mpSearchBarBackGroundColor,
                hintText: 'Search album, song...',
                hintStyle: primaryTextStyle(color: Colors.white.withOpacity(0.4)),
                focusedBorder: OutlineInputBorder (borderRadius: BorderRadius.circular(25.7)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.7)),
              ),
            ),
          ),
          bottom: TabBar(
            unselectedLabelColor: white.withOpacity(0.7),
            labelColor: white,
            tabs: [
              Tab(child: Text('Trend')),
              Tab(child: Text('Recommended')),
            ],
            controller: _tabController,
            indicatorColor: mpAppButtonColor,
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.values[1],
          ),
          actions: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(right: 16),
              decoration: boxDecorationWithShadow(
                boxShape: BoxShape.circle,
                decorationImage: DecorationImage(image: Image.network(mpImages_4).image, fit: BoxFit.cover),
              ),
            )
          ],
        ),        drawer: DrawerScreen(),
        body: TabBarView(
          controller: _tabController,
          children: [
            PurchaseMoreScreen(),
            PurchaseMoreScreen(),
          ],
        ),
        bottomNavigationBar: SizedBox(height: 70, child: playMusicWidget(context)),
      ),
    );
  }
}
