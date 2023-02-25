import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_text_title.dart';

class SearchIdleWidgets extends StatelessWidget {
  const SearchIdleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTextTitle(),
          khight,
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const TopSearchItemTile();
              },
              separatorBuilder: (
                context,
                index,
              ) {
                return khight15;
              },
              itemCount: 20,
            ),
          )
        ],
      ),
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key, required});

  final imageurl =
      "https://www.themoviedb.org/t/p/w710_and_h400_multi_faces/d3l7kgFJyLTTQSrR4ysCk5yeVyW.jpg";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          width: size.width * 0.33,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageurl,
              ),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            "Movie Name",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          color: kwhiteColor,
          size: 40,
        ),
      ],
    );
  }
}
