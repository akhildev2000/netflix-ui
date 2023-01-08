import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage(mainImage))),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(icon: Icons.add, label: 'My List'),
                _playButton(),
                const CustomButtonWidget(
                    icon: Icons.info_outline, label: 'Info')
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhite)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: Colors.black,
        size: 30,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Text(
          "Play",
          style: GoogleFonts.merriweatherSans(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
