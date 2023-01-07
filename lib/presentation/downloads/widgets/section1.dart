import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        kwidth,
        Text("Smart Downloads")
      ],
    );
  }
}
