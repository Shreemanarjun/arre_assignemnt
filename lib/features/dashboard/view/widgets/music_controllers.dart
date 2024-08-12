import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class MusicControllers extends StatelessWidget {
  const MusicControllers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                child: VxMarquee(
                  text: 'How to make your business grow faster and help you',
                  textStyle: TextStyle(
                    color: Color(0xFFE4F1EE),
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Flexible(
                child: const Text(
                  '@ShellyShah',
                  style: TextStyle(
                    color: Color(0xFF4BC7B6),
                    fontSize: 12,
                    fontFamily: 'Hind',
                    fontWeight: FontWeight.w800,
                  ),
                ).pOnly(top: 4),
              )
            ],
          ).p8(),
        ),
        Flexible(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset(
                  "assets/svg/like-optimized.svg",
                  height: 26,
                  fit: BoxFit.cover,
                ).pOnly(right: 8),
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/svg/play_btn-optimized.svg",
                  height: 44,
                  fit: BoxFit.cover,
                ).pOnly(right: 8),
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/svg/playlist-optimized.svg",
                  height: 36,
                  fit: BoxFit.cover,
                ).pOnly(right: 8),
              ),
            ],
          ),
        )
      ],
    );
  }
}
