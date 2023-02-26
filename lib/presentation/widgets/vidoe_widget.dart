import 'package:flutter/material.dart';

class VideosWidget extends StatelessWidget {
  const VideosWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.25,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/netflix.jpg',
          ),
        ),
      ),
    );
  }
}
