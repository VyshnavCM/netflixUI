import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constatnts.dart';

class AppBarWidget
 extends StatelessWidget {
  const AppBarWidget
  ({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KWidth,
         Expanded(child: Text(title,style: GoogleFonts.montserrat(textStyle: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),),)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.search,size: 30,)),
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