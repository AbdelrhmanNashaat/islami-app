import 'package:flutter/material.dart';

import '../../../../image_path.dart';
import 'tabs/ahdes_tab.dart';
import 'tabs/quran_tab.dart';
import 'tabs/radio_tab.dart';
import 'tabs/sebha_tab.dart';
import 'widgets/main_bg_image.dart';

final List<Widget> tabs = [
  const RadioTab(),
  const SebhaTab(),
  const AhdesTab(),
  const QuarnTab(),
];
int currentIndex = 0;

class HomeView extends StatefulWidget {
  static const String routeName = 'home_view';
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MainBackgroundImage(),
        Scaffold(
          bottomNavigationBar: bottomNavBarMethod(),
          appBar: AppBar(
            title: const Text('إسلامي'),
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }

  BottomNavigationBar bottomNavBarMethod() {
    return BottomNavigationBar(
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AssetsData.radioIcon),
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AssetsData.sebhaIcon),
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AssetsData.bookIcon),
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetsData.moshafIcon),
              size: 30,
            ),
            label: ''),
      ],
    );
  }
}
