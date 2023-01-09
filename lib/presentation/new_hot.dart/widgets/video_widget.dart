import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/AaV1YIdWKnjAIAOe8UUKBFm327v.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_mute_rounded,
                color: kwhite,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
