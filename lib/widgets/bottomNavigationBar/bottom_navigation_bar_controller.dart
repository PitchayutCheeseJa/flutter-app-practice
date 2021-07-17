import 'package:app/constants/bottom_navigation_bar_path.dart';
import 'package:get/get.dart';

class BottomNavigationBarController {
  RxInt _currentTabIndex = 0.obs;
  late BottomNavigationBarView _view;

  int getCurrentTabIndex() {
    return _currentTabIndex.value;
  }

  setCurrentTabIndex(int index) {
    _currentTabIndex.value = index;
    _view.changeTab(tabRoutes[index].path);
  }

  setView(BottomNavigationBarView view) {
    _view = view;
  }
}

class BottomNavigationBarView {
  changeTab(String path) {}
}
