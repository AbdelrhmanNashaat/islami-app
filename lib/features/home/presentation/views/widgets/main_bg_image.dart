import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../image_path.dart';
class MainBackgroundImage extends StatelessWidget {
  const MainBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsData.mainBg,
      width: double.infinity.sw,
      fit: BoxFit.fill,
    );
  }
}