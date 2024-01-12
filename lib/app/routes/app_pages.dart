import 'package:get/get.dart';
import 'package:reeco/app/modules/ScanGarbage/views/recommendation_recycle_view.dart';
import 'package:reeco/app/modules/ScanGarbage/views/result_scan_view.dart';

import '../modules/Authentication/bindings/login_binding.dart';
import '../modules/Authentication/bindings/register_binding.dart';
import '../modules/Authentication/views/login_view.dart';
import '../modules/Authentication/views/register_view.dart';
import '../modules/NavigationBar/bindings/navigation_bar_binding.dart';
import '../modules/NavigationBar/views/navigation_bar_view.dart';
import '../modules/ScanGarbage/bindings/scan_garbage_binding.dart';
import '../modules/ScanGarbage/views/scan_garbage_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.register,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.navigationBar,
      page: () => const NavigationBarView(),
      binding: NavigationBarBinding(),
    ),

    GetPage(
      name: _Paths.scanGarbage,
      page: () => const ScanGarbageView(),
      binding: ScanGarbageBinding(),
    ),
    GetPage(
      name: _Paths.resultScan,
      page: () => const ResultScanView(),
      binding: ScanGarbageBinding()
    ),
    GetPage(
      name: _Paths.recommendationResult,
      page: () => const RecommendationRecycleView(),
      binding: ScanGarbageBinding()
    )
  ];
}
