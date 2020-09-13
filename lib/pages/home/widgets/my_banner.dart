import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class MyBanner extends StatefulWidget {
  final double top;

  const MyBanner({Key key, this.top}) : super(key: key);

  @override
  _MyBannerState createState() => _MyBannerState();
}

class _MyBannerState extends State<MyBanner> {
  MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['condominio', 'apto', 'apartamento'],
    contentUrl: 'https://flutter.io',
    childDirected: false,
    testDevices: <String>[],
  );
  BannerAd myBanner;

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-7757411465214169~9574871066");

    startBanner();
    displayBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void startBanner() {
    myBanner = BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.smartBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        if (event == MobileAdEvent.opened) {
          // MobileAdEvent.opened
          // MobileAdEvent.clicked
          // MobileAdEvent.closed
          // MobileAdEvent.failedToLoad
          // MobileAdEvent.impression
          // MobileAdEvent.leftApplication
        }
        print("BannerAd event is $event");
      },
    );
  }

  void displayBanner() {
    myBanner
      ..load()
      ..show(
        anchorOffset: 0,
      );
  }

  @override
  void dispose() {
    myBanner?.dispose();
    super.dispose();
  }

}
