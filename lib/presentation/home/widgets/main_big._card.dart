import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';

class MainBigCardWidget extends StatelessWidget {
  const MainBigCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      
        Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 160,
        height: 300,
        // color: Colors.amber,
        decoration:  BoxDecoration(
          borderRadius: kRadius10,
          
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://www.themoviedb.org/t/p/w220_and_h330_face/A7vhdyGrpPMKXsuFBZzxmave94F.jpg'),
          ),
        ),
      ),
        Positioned(
          right: 5,
          child: Container(
            height: 50,
            width: 35,
            decoration: const BoxDecoration(
            color: Color.fromARGB(255, 229, 9, 20),
            borderRadius: BorderRadius.only(topRight: Radius.circular(10))
              
            ),
            child:const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('TOP',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
                Text('10',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
              ],
            ),
          ),
        ),]
    );
  }
}