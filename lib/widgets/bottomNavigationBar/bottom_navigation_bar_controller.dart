import 'package:get/get.dart';

class BottomNavigationBarController {
  RxInt _currentTabIndex = 0.obs;

  int getCurrentTabIndex() {
    return _currentTabIndex.value;
  }

  setCurrentTabIndex(int index) {
    _currentTabIndex.value = index;
  }
}
