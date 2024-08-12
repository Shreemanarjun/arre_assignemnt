import 'package:arre_assignmemnt/core/router/router.gr.dart';
import 'package:arre_assignmemnt/features/dashboard/controller/is_visible_player.dart';
import 'package:arre_assignmemnt/features/dashboard/view/widgets/bottom_nav_bar.dart';
import 'package:arre_assignmemnt/features/dashboard/view/widgets/mic_widget.dart';
import 'package:arre_assignmemnt/features/dashboard/view/widgets/mini_music_player.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage(
  deferredLoading: true,
)
class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.builder(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        AddNewMicRoute(),
        GroupsRoute(),
        ProfileRoute(),
      ],
      builder: (context, children, tabsRouter) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          // bottomSheet: BottomNavBar(),
          body: Stack(
            children: [
              Positioned.fill(
                child: children[tabsRouter.activeIndex],
              ),
              Positioned(
                bottom: -40,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    const MiniMusicPlayer(),
                    Consumer(
                      builder: (context, ref, child) {
                        return BottomSheet(
                          shape: ref.watch(isVisiblePod)
                              ? const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                )
                              : null,
                          enableDrag: false,
                          onClosing: () {
                            print("closing");
                          },
                          builder: (context) {
                            return const BottomNavBar();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
