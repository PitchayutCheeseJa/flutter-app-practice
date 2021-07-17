import 'package:app/widgets/bottomNavigationBar/bottom_navigation_bar_controller.dart';
import 'package:get/instance_manager.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BottomNavigationBarController>(BottomNavigationBarController());
  }
}
