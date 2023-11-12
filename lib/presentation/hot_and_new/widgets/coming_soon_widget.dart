import 'package:flutter/material.dart';
import 'package:netflix/presentation/hot_and_new/widgets/custom_icon_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constatnts.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          const SizedBox(
            width: 70,
            height: 350,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "DEC",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kGreyColor),
                    ),
                    Text(
                      "07",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            width: size.width - 80,
            height: 350,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(image: newAndHotTempImage,),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'KILLER',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          CustomIconWidget(
                            icon: Icons.notifications_none_outlined,
                            title: 'Remind me',
                            iconSize: 18,
                          ),
                          KWidth20,
                          CustomIconWidget(
                            icon: Icons.info_outline,
                            title: 'info',
                            iconSize: 18,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Text(
                  'Seasons comming on 7 December',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                KHeight10,
                Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  normal distribution of letters,',
                  style: TextStyle(fontSize: 12, color: kGreyColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
