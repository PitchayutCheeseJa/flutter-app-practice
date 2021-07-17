import 'package:app/widgets/bottomNavigationBar/bottom_navigation_bar_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  group("manage route from tab", () {
    test("should return current index", () {
      var controller = BottomNavigationBarController();
      expect(controller.getCurrentTabIndex(), 0);
    });

    test("should set current index when tap bottom navigation bar", () {
      var controller = BottomNavigationBarController();
      var view = MockView();
      controller.setView(view);
      controller.setCurrentTabIndex(1);
      expect(controller.getCurrentTabIndex(), 1);
    });

    test("should route to given path", () {
      var controller = BottomNavigationBarController();
      var view = MockView();
      controller.setView(view);
      controller.setCurrentTabIndex(4);
      verify(view.changeTab("/profile")).called(1);
    });
  });
}

class MockView extends Mock implements BottomNavigationBarView {}
