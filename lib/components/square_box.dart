import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SquareBox extends StatelessWidget {
  final String imagePath;
  const SquareBox({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(imagePath),
    );
  }
}
