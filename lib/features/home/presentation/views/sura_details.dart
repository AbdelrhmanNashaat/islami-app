import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/utils/font_styles.dart';
import 'package:islami_app/features/home/data/sura_detail_model.dart';
import 'package:islami_app/theme.dart';

import 'widgets/main_bg_image.dart';

List<String> suraLine = [];

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura_view';

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    loadFile(args.index);
    setState(() {});
    return Stack(
      children: [
        const MainBackgroundImage(),
        Scaffold(
          appBar: AppBar(
            title: Text(args.name),
            automaticallyImplyLeading: true,
          ),
          body: ListView.separated(
              itemCount: suraLine.length,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: MyThemeData.primaryColor,
                );
              },
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    suraLine[index],
                    style: Styles.font25,
                    textAlign: TextAlign.center,
                  ),
                );
              }),
        ),
      ],
    );
  }

  void loadFile(index) async {
    String file = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> spiltLines = file.split('\n');
    suraLine = spiltLines;
  }
}
