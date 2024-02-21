import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/features/home/presentation/views/home_view.dart';
import 'package:islami_app/features/home/presentation/views/sura_details.dart';
import 'package:islami_app/features/splash/presentation/views/splash_view.dart';
import 'package:islami_app/theme.dart';

import 'features/home/presentation/views/widgets/hadeth_details.dart';

void main() {
  runApp(const IslamicApp());
}

class IslamicApp extends StatelessWidget {
  const IslamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: MyThemeData.lightTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: SplashView.routeName,
          routes: {
            HomeView.routeName: (context) => const HomeView(),
            SplashView.routeName: (context) => const SplashView(),
            SuraDetails.routeName: (context) => const SuraDetails(),
            HadethDetails.routeName: (context) => const HadethDetails(),
          },
        );
      },
    );
  }
}
