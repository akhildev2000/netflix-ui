import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

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
