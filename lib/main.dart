import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../router/my_route_path.dart';
import '../utilities/app_services.dart';
import '../utilities/app_constants.dart';

void main() {
  initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      navigatorKey: AppConstants.navigatorKey,
      defaultTransition: Transition.leftToRightWithFade,
      title: AppConstants.title,
      color: AppTheme.themeBackgroundColor,
      themeMode: ThemeMode.light,
      initialRoute: AppConstants.initialRoute,
      getPages: appRoutes(),
    );
  }
}