import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 160,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kradius,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w220_and_h330_face/ob9YxdzRu5lfKgz0PNrlL45dorf.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 12,
          bottom: 0,
          top: 85,
          child: BorderedText(
            strokeWidth: 5.0,
            strokeColor: Colors.white,
            child: Text(
              "${index + 1}",
              style: GoogleFonts.numans(
                  fontSize: 120,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
