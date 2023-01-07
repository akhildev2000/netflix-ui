import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/downloads/widgets/section1.dart';
import 'package:netflix_app/presentation/downloads/widgets/section2.dart';
import 'package:netflix_app/presentation/downloads/widgets/section3.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [
    const SmartDownloads(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(title: "Downloads"),
          ),
          body: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) => _widgetList[index],
              separatorBuilder: (context, index) => const SizedBox(height: 25),
              itemCount: _widgetList.length)),
    );
  }
}
