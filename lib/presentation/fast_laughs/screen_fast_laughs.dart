import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fast_laughs/fast_laughs_bloc.dart';
import 'package:netflix_clone/presentation/fast_laughs/widgets/video_list_item.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughsBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) => VideoListItem(index: index),
          ),
        ),
      ),
    );
  }
}
