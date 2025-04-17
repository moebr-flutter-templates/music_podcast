import 'package:flutter/material.dart';
import 'package:music_podcast/screen/PurchaseButton.dart';
import 'package:music_podcast/utils/AppWidget.dart';
import 'package:music_podcast/utils/MPColors.dart';
import 'package:nb_utils/nb_utils.dart';

class PurchaseMoreScreen extends StatefulWidget {
  final bool? enableAppbar;

  PurchaseMoreScreen({this.enableAppbar = false});

  @override
  _PurchaseMoreScreenState createState() => _PurchaseMoreScreenState();
}

class _PurchaseMoreScreenState extends State<PurchaseMoreScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
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
        body: Stack(
          children: [
            Icon(Icons.arrow_back, size: 24).paddingAll(16).onTap(() {
              finish(context);
            }).visible(widget.enableAppbar!),
            SizedBox(
              width: context.width(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      decoration: boxDecorationDefault(shape: BoxShape.circle),
                      padding: EdgeInsets.all(16),
                      child: commonCacheImageWidget(
                        "https://i.ibb.co/4TTC8yN/logo.png",
                        height: 100,
                      ).cornerRadiusWithClipRRect(90)),
                  22.height,
                  Text(
                    'This is the Lite Version of the Music Podcast app',
                    style: boldTextStyle(size: 22, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  16.height,
                  PurchaseButton(),
                ],
              ),
            ).paddingAll(16),
          ],
        ),
      ),
    );
  }
}
