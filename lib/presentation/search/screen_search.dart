import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/search/widget/search_idle.dart';
import 'package:netflix/presentation/search/widget/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
            child: CupertinoSearchTextField(
              backgroundColor: kButtonColorDarkGrey,
              padding: EdgeInsets.all(17),
              suffixIcon: Icon(CupertinoIcons.xmark_circle_fill),
              style: TextStyle(color: Colors.white),
            ),
          ),
          
          Expanded(child: SearchResultWidget())
        ],
      ),
    ));
  }
}
