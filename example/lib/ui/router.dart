import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/bindings/home_bindings.dart';
import '../core/bindings/login_bindings.dart';
import '../core/bindings/post_bindings.dart';
import 'views/home_view.dart';
import 'views/login_view.dart';
import 'views/post_view.dart';
import 'views/test_view.dart';

class Router {
  static const String homeViewRoute = '/home';
  static const String loginViewRoute = '/';
  static const String postViewRoute = '/post';
  static const String testViewRoute = '/test';

  static List<GetPage> namedRoutes = <GetPage>[
    GetPage(
      name: homeViewRoute,
      page: () => HomeView(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: loginViewRoute,
      page: () => LoginView(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: postViewRoute,
      page: () => PostView(),
      binding: PostBindings(),
    ),
    GetPage(
      name: testViewRoute,
      page: () => TestView(),
    )
  ];

  /*static Route<dynamic> onUnknownRoute(RouteSettings settings){
    return GetRouteBase(page: null)
  }
*/
  static GetPage errorRoute = GetPage(
    name: 'error',
    page: () => Scaffold(
      body: Center(
        child: Text('No route defined for selected route'),
      ),
    ),
  );
}
