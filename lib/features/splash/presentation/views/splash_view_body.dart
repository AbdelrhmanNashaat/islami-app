import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/features/home/presentation/views/home_view.dart';
import 'package:islami_app/image_path.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity.sw,
      height: double.infinity.sh,
      child: Image.asset(
            AssetsData.splashViewLight,
        fit: BoxFit.fill,
      ),
    );
  }

  void startTimer() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    });
  }
}
