import 'package:app/widgets/bottomNavigationBar/bottom_navigation_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final BottomNavigationBarController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: controller.getCurrentTabIndex(),
      onTap: (index) {
        controller.setCurrentTabIndex(index);
      },
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 24.0,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box,
            size: 24.0,
          ),
          label: "Collection",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline,
            size: 24.0,
          ),
          label: "POST",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message_outlined,
            size: 24.0,
          ),
          label: "Message",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            size: 24.0,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
