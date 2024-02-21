import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/utils/font_styles.dart';
import 'package:islami_app/image_path.dart';

import '../widgets/icon_button.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 160),
          child: Image.asset(AssetsData.radioImage),
        ),
        SizedBox(height: 45.h),
        Text(
          'إذاعة القرآن الكريم',
          style: Styles.font25,
        ),
        SizedBox(height: 35.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButtonWidget(
                imagePath: AssetsData.radioLeft,
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audio/055.mp3'));
                },
              ),
              IconButtonWidget(
                imagePath: AssetsData.radioPlay,
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audio/071.mp3'));
                },
              ),
              IconButtonWidget(
                imagePath: AssetsData.radioRight,
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('audio/074.mp3'));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
