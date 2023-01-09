import 'package:flutter/material.dart';

import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button.dart';
import 'package:netflix_app/presentation/new_hot.dart/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'FEB',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              Text(
                '11',
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top Gun: Maverick',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  //Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.add_alert_rounded,
                        label: 'Reminder',
                        size: 15,
                        textsize: 12,
                      ),
                      kwidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        label: 'Info',
                        size: 15,
                        textsize: 12,
                      ),
                      kwidth,
                    ],
                  )
                ],
              ),
              //kheight,
              Container(
                width: 15,
                height: 25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://static.wikia.nocookie.net/logopedia/images/b/be/Netflix_N.svg/revision/latest/scale-to-width-down/100?cb=20220429163838'),
                      scale: 10),
                ),
              ),
              const Text('Coming On Friday'),
              kheight,
              const Text(
                'Top Gun: Maverick',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                '''After more than thirty years of service as one of the Navy’s top aviators, and dodging the advancement in rank that would ground him, Pete “Maverick” Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.''',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
