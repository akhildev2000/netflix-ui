import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  const CustomButtonWidget({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        color: kwhite,
        size: 30,
      ),
      Text(label,
          style: GoogleFonts.merriweatherSans(
              fontSize: 16, fontWeight: FontWeight.w400))
    ]);
  }
}
