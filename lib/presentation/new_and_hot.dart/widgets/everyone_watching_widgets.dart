import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/widgets/text_icon_buttos.dart';
import 'package:netflix_clone/presentation/widgets/vidoe_widget.dart';

class EveryOneWatchinWdget extends StatelessWidget {
  const EveryOneWatchinWdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Friends",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: kwhiteColor),
        ),
        khight,
        const Text(
          "Coming On Friday jdsfjkhsdfkhj jsknfkjdskjnkjdh skdbnfkdjsk sknfkjsdkjfkjsbkjsd kjdsnfkjndsfkjdsf ksdfkdskjkkf kdjsfkjsdfkdsj djfnkjkjs niathin nfijtkka fdiia dnneaortbi nkiebbdejtneh fioneonnaudndjeof efjjdiodnc dcioncdojfjdnfodf idjfiodjoxj",
          style: TextStyle(color: Colors.grey),
        ),
        khight,
        const VideosWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            TextIconButton(
              icon: Icons.share,
              iconsize: 25,
              title: "Share",
              textsize: 20,
            ),
            TextIconButton(
              icon: Icons.add,
              iconsize: 25,
              title: "Share",
              textsize: 20,
            ),
            TextIconButton(
              icon: Icons.play_arrow,
              iconsize: 25,
              title: "Share",
              textsize: 20,
            ),
          ],
        ),
      ],
    );
  }
}
