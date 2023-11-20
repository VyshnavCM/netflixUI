import 'package:flutter/material.dart';

import '../../core/constatnts.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,required this.image,
  });
  final image;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 190,
          child: Image.network(
            "$imagePath$image",
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
            bottom: 20,
            right: 20,
            child: Icon(Icons.volume_off_outlined))
      ],
    );
  }
}