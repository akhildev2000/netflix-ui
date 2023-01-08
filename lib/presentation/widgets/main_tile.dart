import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class MainTile extends StatelessWidget {
  const MainTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kradius,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://www.themoviedb.org/t/p/w220_and_h330_face/mruUFlrVKiL994y3vvQBT8R2Vnf.jpg"),
        ),
      ),
    );
  }
}
