import 'package:get/get.dart';
import '../bindings/authentication_binding.dart';
import '../bindings/dashboard_binding.dart';
import '../bindings/organization_binding.dart';
import '../bindings/profile_binding.dart';
import '../bindings/welcome_binding.dart';
import '../views/dashboard_view.dart';
import '../views/organization_view.dart';
import '../views/profile_view.dart';
import '../views/welcome_view.dart';
import '../bindings/initial_binding.dart';
import '../views/authentication_view.dart';
import '../views/splash_view.dart';

appRoutes() => [
  GetPage(
    name: '/splash',
    page: () => SplashView(),
    binding: InitialBinding(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/welcome',
    page: () => WelcomeView(),
    binding: WelcomeBinding(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/authentication',
    page: () => AuthenticationView(),
    binding: AuthenticationBinding(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/dashboard',
    page: () => DashboardView(),
    binding: DashboardBinding(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/profile',
    page: () => ProfileView(),
    binding: ProfileBinding(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/organization',
    page: () => OrganizationView(),
    binding: OrganizationBinding(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  )
];