import 'package:get/get.dart';
import 'package:getx_roadmap/MVVM/res/routes/routes_name.dart';
import 'package:getx_roadmap/MVVM/view/splash_screen.dart';

class AppRoutes {

  static appRoutes() =>
      [
        GetPage(name: RoutesName.splash_screen,
            page: () => SplashScreen(),
            transitionDuration: Duration(seconds: 1),
            transition: Transition.leftToRightWithFade),
      ];
}
