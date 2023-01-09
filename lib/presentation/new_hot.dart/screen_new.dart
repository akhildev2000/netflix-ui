import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

import 'package:netflix_app/presentation/new_hot.dart/widgets/coming_soon.dart';
import 'package:netflix_app/presentation/new_hot.dart/widgets/every_one.dart';

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
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) {
        return const EveryOneWatching();
      },
    );
  }
}
