import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../image_path.dart';
class SebhaImage extends StatelessWidget {
  const SebhaImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            top: 10.r,
            left: 170.r,
            child: Image.asset(AssetsData.sebhaHead),
          ),
          Positioned(
            top: 81.r,
            left: 78.r,
            child: Image.asset(AssetsData.sebhaBody),
          ),
        ],
      ),
    );
  }
}
