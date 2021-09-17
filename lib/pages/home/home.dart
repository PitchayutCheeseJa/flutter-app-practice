import 'package:app/constants/colors.dart';
import 'package:app/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final gridCount = 1;
  HomeController controller = Get.find();
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    controller.getListings();
    scrollController.addListener(() {
      final isScrollToBottom = scrollController.position.pixels >=
          scrollController.position.maxScrollExtent;
      if (isScrollToBottom) {
        controller.getListings();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            homeAppBar(),
            Expanded(
              child: Obx(
                () => GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (0.95),
                    crossAxisCount: gridCount,
                  ),
                  controller: scrollController,
                  itemCount: controller.listings.length,
                  itemBuilder: (_, i) {
                    return listing(i);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget homeAppBar() {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColor.primaryGradient,
      ),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            appBarIcon(Icons.notifications_active_outlined),
            Expanded(
              child: Text(
                "เลียนแบบ The Collector",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            appBarIcon(Icons.search),
            appBarIcon(Icons.sort_outlined),
            appBarIcon(Icons.filter_list)
          ],
        ),
      ),
    );
  }

  Widget listing(int i) {
    return Container(
      child: Column(
        children: [
          Text("User $i"),
          Container(
            decoration: BoxDecoration(
              gradient: AppColor.primaryGradient,
            ),
            width: Get.width / (1 * gridCount),
            height: Get.width / (1.125 * gridCount),
            child: Center(
              child: Text(
                controller.listings[i].title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Text(controller.listings[i].detail),
        ],
      ),
    );
  }

  IconButton appBarIcon(IconData icon) {
    return IconButton(
      onPressed: null,
      icon: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
