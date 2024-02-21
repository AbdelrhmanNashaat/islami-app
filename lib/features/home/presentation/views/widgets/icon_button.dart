import 'package:flutter/material.dart';
class IconButtonWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  const IconButtonWidget({
    super.key,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: ImageIcon(
        AssetImage(imagePath),
        color: const Color(0xffB7935F),
        size: 28,
      ),
    );
  }
}