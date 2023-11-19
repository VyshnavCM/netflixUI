import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import '../../../core/constatnts.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
              color: kButtonColorBlue,
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Set Up'),
              ),
            ),
          ),
        ),
        KHeight,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            color: kButtonColorDarkGrey,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Find More to Download',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
