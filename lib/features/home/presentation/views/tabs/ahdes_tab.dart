import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/features/home/data/ahdes_model.dart';
import 'package:islami_app/image_path.dart';
import 'package:islami_app/theme.dart';

import '../../../../../core/utils/font_styles.dart';
import '../widgets/divider.dart';
import '../widgets/hadeth_details.dart';

class AhdesTab extends StatefulWidget {
  const AhdesTab({super.key});

  @override
  State<AhdesTab> createState() => _AhdesTabState();
}

class _AhdesTabState extends State<AhdesTab> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  List<ahdesModel> ahdethData = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    setState(() {});
    return SizedBox(
      width: double.infinity.sw,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetsData.ahdesImage),
          const HorizontalDivider(),
          Text(
            'الأحاديث',
            style: Styles.font25,
          ),
          const HorizontalDivider(),
          Expanded(
            child: ListView.separated(
                itemCount: ahdethData.length,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: MyThemeData.primaryColor,
                  );
                },
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HadethDetails.routeName,
                          arguments: ahdethData[index]);
                    },
                    child: Text(
                      ahdethData[index].name,
                      style:
                          Styles.font25.copyWith(fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  void loadHadeth() async {
    String file = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> ahdes = file.split('#');
    for (int i = 0; i < ahdes.length; i++) {
      List<String> lines = ahdes[i].trim().split('\n');
      String hadesTitle = lines[0];
      lines.removeAt(0);
      List<String> hadesContent = lines;
      ahdethData.add(
        ahdesModel(name: hadesTitle, hadesContent: hadesContent),
      );
    }
  }
}
