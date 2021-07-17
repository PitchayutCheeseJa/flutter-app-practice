import 'package:app/pages/home/home.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const home = "/home";

  static List<GetPage> getPages() {
    return [
      GetPage(
        name: home,
        page: () => Home(),
      )
    ];
  }
}
