import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/main_tile.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';

class MainTileSection extends StatelessWidget {
  final String title;
  const MainTileSection({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              ((index) => const MainTile()),
            ),
          ),
        )
      ],
    );
  }
}
