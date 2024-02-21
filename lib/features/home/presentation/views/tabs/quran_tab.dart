import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../image_path.dart';
import '../widgets/divider.dart';
import '../widgets/tabel_body.dart';
import '../widgets/table_head.dart';

class QuarnTab extends StatelessWidget {
  const QuarnTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.sw,
      child: Column(
        children: [
          Image.asset(AssetsData.mainIcon),
          const HorizontalDivider(),
          const TableHeadRow(),
          const HorizontalDivider(),
          const TableBody(),
        ],
      ),
    );
  }
}
