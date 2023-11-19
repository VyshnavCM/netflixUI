import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 130,
      height: 180,
      // color: Colors.amber,
      decoration:  BoxDecoration(
        borderRadius: kRadius10,
        
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://www.themoviedb.org/t/p/w220_and_h330_face/zN80Tlly8oMpKbVJv2TfRIj8dHG.jpg'),
        ),
      ),
    );
  }
}

