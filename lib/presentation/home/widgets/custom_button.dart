import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final double size;
  final double textsize;
  const CustomButtonWidget({
    Key? key,
    required this.icon,
    required this.label,
    this.size = 30,
    this.textsize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        color: kwhite,
        size: size,
      ),
      Text(label,
          style: GoogleFonts.merriweatherSans(
              fontSize: textsize, fontWeight: FontWeight.w400))
    ]);
  }
}
