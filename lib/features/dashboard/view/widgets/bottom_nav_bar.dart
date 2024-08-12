import 'package:arre_assignmemnt/features/dashboard/view/widgets/mic_widget.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (value) {
        if (value != 2) {
          // tabsRouter.setActiveIndex(value);
        }
      },
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 32,
            ),
            label: ""),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 32,
            ),
            label: ""),
        BottomNavigationBarItem(
          icon: SizedBox.fromSize(
            size: const Size.fromHeight(64),
            child: const Stack(
              children: [
                Positioned(
                  left: 18,
                  right: 18,
                  top: 4,
                  child: MicWidget(),
                ),
              ],
            ),
          ),
          label: "",
        ),
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              size: 32,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(24.0)),
              child: SizedBox(
                height: 32,
                width: 32,
                child: Image.network(
                  "https://randomuser.me/api/portraits/women/58.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            label: ""),
      ],
    );
  }
}
