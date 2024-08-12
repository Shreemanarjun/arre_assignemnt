import 'package:arre_assignmemnt/features/dashboard/controller/is_visible_player.dart';
import 'package:arre_assignmemnt/features/dashboard/view/widgets/mic_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final isVisible = ref.watch(isVisiblePod);
      return ClipRRect(
          borderRadius: isVisible
              ? const BorderRadius.all(Radius.zero)
              : const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
          child: BottomNavigationBar(
            currentIndex: 0,
            onTap: (value) {
              context.tabsRouter.setActiveIndex(value);
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: isVisible
                ? Colors.black.withOpacity(0.7)
                : Colors.black.withOpacity(0.4),
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 0.0,
            unselectedFontSize: 0.0,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: ""),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: ""),
              const BottomNavigationBarItem(
                icon: MicWidget(),
                label: "",
              ),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.group,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.network(
                        "https://randomuser.me/api/portraits/women/58.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  label: ""),
            ],
          ));
    });
  }
}
