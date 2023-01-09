import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button.dart';
import 'package:netflix_app/presentation/new_hot.dart/widgets/coming_soon.dart';
import 'package:netflix_app/presentation/new_hot.dart/widgets/video_widget.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenNew extends StatelessWidget {
  const ScreenNew({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              actions: const [
                Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kwidth,
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                kwidth
              ],
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: kwhite,
                labelColor: kButtonblack,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                indicator: BoxDecoration(
                  color: kwhite,
                  borderRadius: kradius30,
                ),
                tabs: const [
                  Tab(
                    text: '🍿Coming Soon',
                  ),
                  Tab(
                    text: "👀 Everyone's watching ",
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            _buildComingSoon(),
            _buildEveryones(),
          ]),
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) {
        return const ComingSoonWidget();
      },
    );
  }

  Widget _buildEveryones() {
    return ListView(
      children: [
        kheight,
        Text(
          'Top Gun: Maverick',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          '''After more than thirty years of service as one of the Navy’s top aviators, and dodging the advancement in rank that would ground him, Pete “Maverick” Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.''',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(
          height: 30,
        ),
        VideoWidget(),
        Row(
          children: [],
        )
      ],
    );
  }
}
