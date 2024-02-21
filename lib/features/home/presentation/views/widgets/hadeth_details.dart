import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/font_styles.dart';
import 'package:islami_app/features/home/data/ahdes_model.dart';

import 'main_bg_image.dart';

class HadethDetails extends StatelessWidget {
  static String routeName = 'ahdes_details';
  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as ahdesModel;
    return Stack(
      children: [
        const MainBackgroundImage(),
        Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
          body: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Text(
                    args.hadesContent[index],
                    textAlign: TextAlign.center,
                    style: Styles.font25
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                );
              },
              itemCount: args.hadesContent.length),
        ),
      ],
    );
  }
}
