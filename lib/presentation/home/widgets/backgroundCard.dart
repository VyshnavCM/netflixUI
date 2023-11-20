import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/buttons.dart';

import '../../../core/constatnts.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key, required this.image});
  final String image;
  
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        width: 350,
        height: 500,
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          image: DecorationImage(
              image: NetworkImage(imagePath + image), fit: BoxFit.cover),
        ),
      ),
      const Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PlayButton(),
            CustomButton(),
          ],
        ),
      )
    ]);
  }
}
