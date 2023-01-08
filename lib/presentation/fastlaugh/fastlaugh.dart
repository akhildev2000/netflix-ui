import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/fastlaugh/widgets/video_list_item.dart';

class FastLaugh extends StatelessWidget {
  const FastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            20,
            (index) {
              return VideoListItem(index: index);
            },
          ),
        ),
      ),
    );
  }
}
