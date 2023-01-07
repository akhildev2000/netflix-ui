import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/downloads/screen_download.dart';
import 'package:netflix_app/presentation/fastlaugh/fastlaugh.dart';
import 'package:netflix_app/presentation/home/screen_home.dart';
import 'package:netflix_app/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_app/presentation/new_hot.dart/screen_new.dart';
import 'package:netflix_app/presentation/search/screen_search.dart';

class ScreenMainPAge extends StatelessWidget {
  ScreenMainPAge({super.key});
  final pages = [
    const ScreenHome(),
    const ScreenNew(),
    const FastLaugh(),
    const SearchScreen(),
    ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
