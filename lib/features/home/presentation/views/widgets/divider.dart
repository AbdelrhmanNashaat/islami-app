import 'package:flutter/material.dart';
class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffB7935F),
            thickness: 3.5,
          ),
        ),
      ],
    );
  }
}