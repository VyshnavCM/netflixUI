import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KWidth,
        const SizedBox(
          height: 38,
          width: 38,
          child: Image(image:AssetImage('assets/4375011_logo_netflix_icon.png')),
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              size: 30,
            )),
        KWidth,
        Container(
          color: Colors.blue,
          width: 30,
          height: 30,
        ),
        KWidth,
      ],
    );
  }
}
