import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';

import '../../../core/constatnts.dart';

class AppBarHotAndNew extends StatelessWidget {
  const AppBarHotAndNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'New & Hot',
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              size: 30,
            )),
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
          child: Image.asset('assets/Netflix-avatar.png'),
        ),
        KWidth
      ],
      bottom: TabBar(
        indicatorWeight:1 ,
        isScrollable: true,
        indicatorPadding: EdgeInsets.zero,
        labelColor: kBlackColor,
        labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        indicator: BoxDecoration(
          color: kWhiteColor,
          borderRadius: kRadius30,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Tab(
              text: '🍿 Coming Soon',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Tab(
              text: "🔥 Everyone's watching",
            ),
          ),
        ],
      ),
    );
  }
}
