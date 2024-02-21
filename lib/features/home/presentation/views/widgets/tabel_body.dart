import 'package:flutter/material.dart';
import 'package:islami_app/features/home/presentation/views/sura_details.dart';

import '../../../../../core/utils/font_styles.dart';
import '../../../data/ayat_number.dart';
import '../../../data/sura_detail_model.dart';
import '../../../data/sura_name.dart';

class TableBody extends StatelessWidget {
  const TableBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: SurasName.surasName.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${NumberOfAyat.ayat[index]}',
                  style: Styles.font25.copyWith(
                    fontSize: 25,
                    fontFamily: ' monotype koufi',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      SuraDetails.routeName,
                      arguments: SuraModel(
                        index: index,
                        name: SurasName.surasName[index],
                      ),
                    );
                  },
                  child: Text(
                    SurasName.surasName[index],
                    style: Styles.font25.copyWith(
                      fontSize: 25,
                      fontFamily: ' monotype koufi',
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
