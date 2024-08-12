import 'package:arre_assignmemnt/core/router/router.gr.dart';
import 'package:arre_assignmemnt/features/dashboard/view/widgets/bottom_nav_bar.dart';
import 'package:arre_assignmemnt/features/dashboard/view/widgets/custom_app_bar.dart';
import 'package:arre_assignmemnt/features/dashboard/view/widgets/mini_music_player.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
          appBar: const CustomAppBar(),
          body: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: children[tabsRouter.activeIndex],
              ),
              const Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MiniMusicPlayer(),
                    BottomNavBar(),
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
