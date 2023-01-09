import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/background_card.dart';

import 'package:netflix_app/presentation/home/widgets/main_tile_sect.dart';

import 'package:netflix_app/presentation/home/widgets/number_tile_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: ((notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              }),
              child: Stack(
                children: [
                  ListView(
                    children: const [
                      BackgroundCard(),
                      MainTileSection(title: "Released in the past year"),
                      kheight,
                      MainTileSection(title: "Trending Now"),
                      kheight,
                      NumberTileWidget(),
                      kheight,
                      MainTileSection(title: "Tense Drama"),
                      kheight,
                      MainTileSection(title: "South Indian Cinemas"),
                    ],
                  ),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          width: double.infinity,
                          height: 80,
                          color: Colors.black.withOpacity(0.3),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "asset/netflix/pngimg.com - netflix_PNG15.png",
                                    width: 40,
                                    height: 40,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  kwidth,
                                  const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ],
                              ),
                              kheight,
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('TV Shows', style: khometext),
                                  Text('Movies', style: khometext),
                                  Text('Categories', style: khometext)
                                ],
                              )
                            ],
                          ),
                        )
                      : kheight
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
