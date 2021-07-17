import 'package:app/pages/home/home.dart';
import 'package:app/pages/home/home_binding.dart';
import 'package:app/pages/profile/profile.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const home = "/home";
  static const profile = "/profile";

  static List<GetPage> getPages() {
    return [
      GetPage(
        name: home,
        page: () => Home(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: profile,
        page: () => Profile(),
      )
    ];
  }
}
