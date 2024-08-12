import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MicWidget extends StatelessWidget {
  const MicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFFA552), Color(0xFFEE8C34), Color(0xFFE95433)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x4CF79944),
            blurRadius: 60,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/svg/add_mic-optimized.svg',
          height: 36,
        ),
      ),
    );
  }
}
