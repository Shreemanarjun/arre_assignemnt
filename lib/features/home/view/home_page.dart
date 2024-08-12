import 'package:arre_assignmemnt/features/dashboard/controller/is_visible_player.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  deferredLoading: true,
)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) => const Divider().p16(),
      itemBuilder: (context, index) {
        return Consumer(
          builder: (context, ref, child) {
            return InkWell(
              onTap: () {
                ref.read(isVisiblePod.notifier).update(
                      (state) => true,
                    );
              },
              child: SvgPicture.asset(
                "assets/svg/card_img-optimized.svg",
              ),
            );
          },
        );
      },
    );
  }
}
