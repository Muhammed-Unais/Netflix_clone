import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/downloads/widgets/buttos_widget.dart';
import 'package:netflix_clone/presentation/downloads/widgets/image_post_widget.dart';
import 'package:netflix_clone/presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List images = [
    "https://www.themoviedb.org/t/p/w1280/3510HNgfSUegvMpy09sMfwFtvNM.jpg",
    "https://www.themoviedb.org/t/p/w1280/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg",
    "https://www.themoviedb.org/t/p/w1280/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(53.0),
        child: AppbarWidget(title: "Downloads"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Row(
              children: const [
                kwidth,
                Icon(Icons.settings, color: kwhiteColor),
                kwidth,
                Text("Smart Downloads"),
              ],
            ),
            const Text(
              "Introducing Downloads for you",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "We will download a personalized selection of\n movies and shows for you so there is\n always to something to watch on your\n device",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: size.width,
              height: size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    radius: size.width * 0.36,
                  ),
                  ImagePostWidget(
                    size: size,
                    images: images[0],
                    angle: 20,
                    margin: const EdgeInsets.only(left: 100),
                  ),
                  ImagePostWidget(
                    size: size,
                    images: images[1],
                    angle: -20,
                    margin: const EdgeInsets.only(right: 100),
                  ),
                  ImagePostWidget(
                    size: size,
                    images: images[2],
                    angle: 0,
                    margin: const EdgeInsets.only(top: 0),
                  ),
                ],
              ),
            ),
            const ButtonWidget(
              btnBckgrdBttn: kblueColorbutton,
              title: "Setup",
            ),
            SizedBox(
              width: size.width * 0.75,
              child: const ButtonWidget(
                btnBckgrdBttn: kwhiteColor,
                title: "See what you can download",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
