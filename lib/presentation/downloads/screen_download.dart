import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(title: "Downloads"),
          ),
          body: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) => _widgetList[index],
              separatorBuilder: (context, index) => SizedBox(height: 25),
              itemCount: _widgetList.length)),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/6N346GcTUjhYa0InIiGHW61Zo3O.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/mruUFlrVKiL994y3vvQBT8R2Vnf.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/ob9YxdzRu5lfKgz0PNrlL45dorf.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhite,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        kheight,
        const Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's always something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
        SizedBox(
          width: size.width * 0.8,
          height: size.width * 0.7,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(.5),
                radius: size.width * 0.45,
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(
                  left: 140,
                  bottom: 50,
                ),
                angle: 25,
                size: Size(
                  size.width * 0.3,
                  size.width * 0.5,
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(
                  right: 140,
                  bottom: 50,
                ),
                angle: -25,
                size: Size(
                  size.width * 0.3,
                  size.width * 0.5,
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                margin: const EdgeInsets.only(bottom: 15),
                size: Size(
                  size.width * 0.35,
                  size.width * 0.55,
                ),
                radius: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonblue,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set up",
                style: TextStyle(
                    color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kButtonwhit,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                  color: kButtonblack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
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

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList),
            ),
          ),
        ),
      ),
    );
  }
}
