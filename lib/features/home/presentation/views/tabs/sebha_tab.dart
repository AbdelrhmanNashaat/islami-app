import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/utils/font_styles.dart';

import '../widgets/sebha_counter.dart';
import '../widgets/sebha_image.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.sw,
      height: double.infinity.sh,
      child: Column(
        children: [
          const SebhaImage(),
          Text(
            'عدد التسبيحات',
            style: Styles.font25,
          ),
          SizedBox(height: 20.h),
          const SebhaCounter(),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
