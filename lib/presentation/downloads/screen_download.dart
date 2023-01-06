import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: "Downloads"),
        ),
        body: ListView(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.settings,
                  color: kwhite,
                ),
                kwidth,
                Text("Smart Downloads")
              ],
            ),
            const Text("Introducing Downloads for you"),
            const Text(
                "We will dwonload a personalised selectionof movies and shows for you, so there is always something to watch on your device"),
            Container(
              width: size.width,
              height: size.height,
              color: Colors.white,
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: size.width * 0.40,
                    ),
                  )
                ],
              ),
            ),
            MaterialButton(
              color: kButtonblue,
              onPressed: () {},
              child: const Text(
                "Set up",
                style: TextStyle(
                    color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            MaterialButton(
              color: kButtonwhit,
              onPressed: () {},
              child: const Text(
                "See what you can download",
                style: TextStyle(
                    color: kButtonblack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
