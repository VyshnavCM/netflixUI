import 'package:flutter/material.dart';
import 'package:netflix/controller/api/api.dart';
import '../../../core/colors/colors.dart';
import 'downloads_image_widget.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 33,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Turn on Downloads for You',
            style: TextStyle(
                color: kWhiteColor, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'We will download movies and shows just for you, so you will have always something to watch',
            style: TextStyle(color: kGreyColor),
          ),
        ),
        FutureBuilder(
          future: Api().getDownloadImageUrls(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting ||
                snapshot.connectionState == ConnectionState.none) {
              return Center(
                child: CircleAvatar(
                  radius: size.width * .31,
                  backgroundColor: const Color.fromARGB(255, 27, 27, 27),
                  child: const CircularProgressIndicator(),
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: CircleAvatar(
                  radius: size.width * .31,
                  backgroundColor: const Color.fromARGB(255, 27, 27, 27),
                  child: const CircularProgressIndicator(),
                ),
              );
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Text('No data available');
            } else {
              return SizedBox(
                // color: kWhiteColor,
                width: size.width,
                height: size.width * .7,
                // color: Colors.white,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: size.width * .31,
                        backgroundColor: const Color.fromARGB(255, 27, 27, 27),
                      ),
                    ),
                    DownloadsImageWidget(
                      imageList: snapshot.data![0],
                      margin: const EdgeInsets.only(left: 152, bottom: 5),
                      angle: 20,
                      size: Size(size.width * .4, size.width * .5),
                      radius: 10,
                    ),
                    DownloadsImageWidget(
                      imageList: snapshot.data![1],
                      margin: const EdgeInsets.only(right: 152, bottom: 5),
                      angle: -20,
                      size: Size(size.width * .4, size.width * .5),
                      radius: 10,
                    ),
                    DownloadsImageWidget(
                      imageList: snapshot.data![2],
                      margin: const EdgeInsets.only(left: 0),
                      size: Size(size.width * .5, size.width * .5),
                      radius: 8,
                    ),
                  ],
                ),
              );
            }
          },
        )
      ],
    );
  }
}
