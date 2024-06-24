import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final String nameVal;
  final String locationVal;
  final AppCardInfo? app;

  const MainPage({
    super.key,
    this.nameVal = "NULL",
    this.app,
    required this.locationVal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*1*/
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*2*/
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      app == null ? "0" : '${app!.title}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    locationVal,
                    style: const TextStyle(color: Colors.red),
                  ),
                ],
              )),
              /*3*/
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.star,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(app == null ? "0" : '${app!.likeCount}'),
              ),
            ]));
  }
}

class AppCardInfo {
  String? title;
  String? subTitle;
  bool like;
  int likeCount;

  AppCardInfo(this.title, this.subTitle, this.like, this.likeCount);
}
