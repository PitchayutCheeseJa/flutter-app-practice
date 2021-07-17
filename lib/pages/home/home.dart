import 'package:app/widgets/bottomNavigationBar/bottom_navigation_bar.dart';
import 'package:app/widgets/bottomNavigationBar/bottom_navigation_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final BottomNavigationBarController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: [
          Text("Home"),
          Text("Collection"),
          Text("POST"),
          Text("Message"),
          Text("Profile")
        ][controller.getCurrentTabIndex()],
        bottomNavigationBar: AppBottomNavigationBar(),
      ),
    );
  }
}
