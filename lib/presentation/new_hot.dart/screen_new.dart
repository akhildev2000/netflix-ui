import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenNew extends StatelessWidget {
  const ScreenNew({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('New & Hot'),
        ),
      ),
    );
  }
}
