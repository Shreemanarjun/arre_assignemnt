import 'package:arre_assignmemnt/features/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0)),
      child: Container(
        color: Colors.black26,
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/svg/arrevoice.svg"),
            Row(
              children: [
                SvgPicture.asset("assets/svg/alarm.svg"),
                SvgPicture.asset("assets/svg/saved.svg"),
              ],
            )
          ],
        ).p12(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
