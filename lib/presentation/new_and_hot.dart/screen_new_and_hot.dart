import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/new_and_hot.dart/widgets/newand_hot_com_soon_widget.dart';
import 'widgets/everyone_watching_widgets.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "New & Hot",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              color: Colors.blue,
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 10,
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            labelStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            indicator: BoxDecoration(
              borderRadius: kRadius30,
              color: kwhiteColor,
            ),
            tabs: const [
              Tab(
                text: ("🍿 Coming Soon"),
              ),
              Tab(
                text: ("👀 Everyone's Watching"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [NewandHotComingSoonWidget(), EveryOneWatching()],
        ),
      ),
    );
  }
}

class NewandHotComingSoonWidget extends StatelessWidget {
  const NewandHotComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return NewAndHotComSoonWidget(size: size);
      },
    );
  }
}

class EveryOneWatching extends StatelessWidget {
  const EveryOneWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const EveryOneWatchinWdget();
        });
  }
}
