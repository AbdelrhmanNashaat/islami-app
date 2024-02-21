import 'package:flutter/material.dart';

import '../../../../../core/utils/font_styles.dart';

class TableHeadRow extends StatelessWidget {
  const TableHeadRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'عدد الآيات',
            style: Styles.font25,
          ),
          Text(
            'اسم السورة',
            style: Styles.font25,
          ),
        ],
      ),
    );
  }
}
