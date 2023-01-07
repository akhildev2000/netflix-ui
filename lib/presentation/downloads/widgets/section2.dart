import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/downloads/widgets/download_image.dart';

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
