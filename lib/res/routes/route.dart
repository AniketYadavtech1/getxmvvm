import 'package:getxmvvm/res/routes/routes_name.dart';
import 'package:getxmvvm/view/login/login_view.dart';
import 'package:getxmvvm/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => SplashScreen(),
          transitionDuration: Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.loginview,
          page: () => LoginView(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
