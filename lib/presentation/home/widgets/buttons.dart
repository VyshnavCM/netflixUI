import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 45,
      child: TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kWhiteColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        icon: const Icon(
          Icons.play_arrow,
          size: 30,
          color: kBlackColor,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Play',
            style: TextStyle(color: kBlackColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          width: 150,
          height: 45,
          child: TextButton.icon(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(88, 172, 169, 169)),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: kWhiteColor,
            ),
            label: const Text(
              'My List',
              style: TextStyle(color: kWhiteColor),
            ),
          ),
        ),
      ],
    );
  }
}