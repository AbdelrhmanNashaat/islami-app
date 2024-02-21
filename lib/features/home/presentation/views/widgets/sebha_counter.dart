import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/font_styles.dart';

int counter = 0;

class SebhaCounter extends StatefulWidget {
  const SebhaCounter({
    super.key,
  });

  @override
  State<SebhaCounter> createState() => _SebhaCounterState();
}

class _SebhaCounterState extends State<SebhaCounter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 69.w,
          height: 81.h,
          decoration: BoxDecoration(
            color: const Color(0xFFC9B396),
            borderRadius: BorderRadiusDirectional.circular(24),
            border: Border.all(
              color: const Color(0xff707070),
            ),
          ),
          child: Center(
            child: Text(
              '$counter',
              style: Styles.font25.copyWith(fontFamily: 'monotype koufi'),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        ElevatedButton(
          style: buttonStyleMethod(),
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text(
            'سبحان الله',
            style: Styles.font25.copyWith(fontFamily: 'monotype koufi'),
          ),
        ),
      ],
    );
  }

  ButtonStyle buttonStyleMethod() {
    return ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(
        Color(0xFFB7935F),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
    );
  }
}
