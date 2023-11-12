import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/buttons.dart';

import '../../../core/constatnts.dart';

Stack BackgroundCard() {
    return Stack(alignment: Alignment.center, children: [
            Container(
              width: 350,
              height: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                image: DecorationImage(
                    image: NetworkImage(kMainImage), fit: BoxFit.cover),
              ),
            ),
           const  Positioned(
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