import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/widgets/text_icon_buttos.dart';
import 'package:netflix_clone/presentation/widgets/vidoe_widget.dart';

class NewAndHotComSoonWidget extends StatelessWidget {
  const NewAndHotComSoonWidget({
    super.key,
    required this.size,
  });

  final Size size;
  // final String mnthText;
  // final String dayText;
  // final String bigMovieTitle;
  // final String mnthText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          height: size.height * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: styleMnth,
              ),
              Text(
                "11",
                style: styleNumber,
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.6,
          width: size.width - 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideosWidget(),
              Row(
                children: const [
                  Text(
                    "TALL GIRL 2",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextIconButton(
                    icon: Icons.notifications_sharp,
                    title: "Remind me",
                    iconsize: 20,
                    textsize: 16,
                  ),
                  TextIconButton(
                    icon: Icons.info,
                    title: "Info",
                    iconsize: 20,
                    textsize: 20,
                  )
                ],
              ),
              khight,
              const Text(
                "Coming On Friday",
                style: style,
              ),
              khight,
              const Text(
                "Tall Girl 2",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kwhiteColor),
              ),
              khight,
              const Text(
                "Coming On Friday jdsfjkhsdfkhj jsknfkjdskjnkjdh skdbnfkdjsk sknfkjsdkjfkjsbkjsd kjdsnfkjndsfkjdsf ksdfkdskjkkf kdjsfkjsdfkdsj djfnkjkjs",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
