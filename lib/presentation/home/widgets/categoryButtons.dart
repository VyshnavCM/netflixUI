import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class mianCategoryButtons extends StatelessWidget {
  const mianCategoryButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(onPressed: () {},style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(side: const BorderSide(
                color: kWhiteColor,
                width: 1
              ),
              borderRadius: BorderRadius.circular(25))
            ),
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(0, 172, 169, 169)),
          ), child: const Text('TV Shows',style: TextStyle(color: kWhiteColor,fontSize: 12),),),
          SizedBox(width: 15,),
        TextButton(onPressed: () {},style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(side: const BorderSide(
                color: kWhiteColor,
                width: 1
              ),
              borderRadius: BorderRadius.circular(25))
            ),
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(0, 172, 169, 169)),
          ), child: const Text('Movies',style: TextStyle(color: kWhiteColor,fontSize: 12)),),
          SizedBox(width: 15,),
            
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(side: const BorderSide(
                color: kWhiteColor,
                width: 1
              ),
              borderRadius: BorderRadius.circular(25))
            ),
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(0, 172, 169, 169)),
          ),
          child: const Text('Categories',style: TextStyle(color: kWhiteColor,fontSize: 12)),
        ),
      ],
    );
  }
}
