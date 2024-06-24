import 'package:flutter/material.dart';
import 'main_page.dart';

void main() {
  runApp(const MainApp());
}

var data = [
  AppCardInfo("title1", null, false, 0),
  AppCardInfo("title2", "", false, 0),
  AppCardInfo("title3", "", false, 0),
  AppCardInfo("title4", "", false, 0),
  AppCardInfo("title5", "", false, 0),
  AppCardInfo("title6", "", false, 0),
  AppCardInfo("title6", "", false, 0),
  AppCardInfo("title6", "", false, 0),
  AppCardInfo("title6", "", false, 0),
  AppCardInfo("title6", "", false, 0),
  AppCardInfo("title6", "", false, 0),
  AppCardInfo("title6", "", false, 0),
  AppCardInfo("title6", "", false, 0),
  AppCardInfo("title6", "", false, 0),
  AppCardInfo("title6", "", false, 4),
  AppCardInfo("title6", "", false, 3),
  AppCardInfo("title6", "", false, 1),
];

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String titleApp = "app title";
    const String name = "name";
    const String location = "location";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(titleApp),
        ),
        body: ListView(
            children: data
                .map<MainPage>((c) =>
                    MainPage(nameVal: name, app: c, locationVal: location))
                .toList()
            //  [
            //   MainPage(
            //     nameVal: name,
            //     app: null,
            //     locationVal: location,
            //   ),
            //   MainPage(
            //     nameVal: name,
            //     app: null,
            //     locationVal: location,
            //   ),
            //   MainPage(
            //     nameVal: name,
            //     app: null,
            //     locationVal: location,
            //   )
            // ],
            ),
      ),
    );
  }
}
