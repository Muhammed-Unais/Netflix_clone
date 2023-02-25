import 'dart:math';

import 'package:flutter/material.dart';

class ImagePostWidget extends StatelessWidget {
  const ImagePostWidget({
    super.key,
    required this.size,
    required this.images,
    required this.angle,
    this.margin
  });

  final Size size;
  final String images;
  final double angle;
  final dynamic margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.38,
        height: size.width * 0.54,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(images[0]),
          ),
        ),
      ),
    );
  }
}
