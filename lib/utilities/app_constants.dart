import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppConstants {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static String title = "Top Score Fundraising";
  static String slogan = "This is an Fundraising App";
  static const String baseURL = 'https://';
  static String initialRoute = '/splash';
}

class AppTheme {
  static const String fontFamily = "Roboto";
  static const FontWeight fontWeight = FontWeight.w400;
  static TextStyle h1 = TextStyle(color: textStylePrimaryColor,fontWeight: fontWeight,
      fontSize: AppTheme.getDynamicFontSize(1),fontFamily: fontFamily);

  static double radius = getDynamicRadius();
  static EdgeInsets padding = EdgeInsets.all(getDynamicPadding(16));
  static double appWidth = Get.width;
  static double appHeight = Get.height;
  static double appBaseRadius = 8.0;

  static Color themeBackgroundColor = const Color(0xFF16181F);
  static Color themeTextFieldBackgroundColor = const Color(0xFF20232D);
  static Color themeColor = const Color(0xFFE9C451);
  static Color themeButtonColor = const Color(0xFFE9C451);
  static Color textStylePrimaryColor = const Color(0xFFFFFFFF);
  static Color textStyleSecondaryColor = const Color(0xFF7D848D);
  static Color textStyleThemeColor = const Color(0xFFE9C451);
  static Color textStyleThemeBackgroundColor = const Color(0xFF16181F);
  static Color textStyleRedColor = const Color(0xFFF50000);
  static Color textStyleTGreenColor = const Color(0xFF00DF80);
  static Color iconPrimaryColor = const Color(0xFFFFFFFF);
  static Color iconThemeColor = const Color(0xFFE9C451);
  static Color iconSecondaryColor = const Color(0xFF16181F);
  static Color successfulLoaderColor = const Color(0xFF00DF80);

  static double getDynamicFontSize(int headingLevel) {
    double screenHeight = Get.height;
    double screenWidth =  Get.width;

    double scaleFactor;

    // Define the scaling factor based on the app's height or width
    if (screenHeight > screenWidth) {
      scaleFactor = screenHeight / 1000; // Adjust this value as needed
    } else {
      scaleFactor = screenWidth / 1000; // Adjust this value as needed
    }

    double baseFontSize = 16.0; // Base font size for reference

    switch (headingLevel) {
      case 1:
        return baseFontSize * scaleFactor * 1.8; // Scale the font size for H1
      case 2:
        return baseFontSize * scaleFactor * 1.6; // Scale the font size for H2
      case 3:
        return baseFontSize * scaleFactor * 1.4; // Scale the font size for H3
      case 4:
        return baseFontSize * scaleFactor * 1.2; // Scale the font size for H4
      case 5:
        return baseFontSize * scaleFactor * 1.0; // Scale the font size for H5
      case 6:
        return baseFontSize * scaleFactor * 0.8; // Scale the font size for H6
      default:
        return baseFontSize * scaleFactor; // Scale the default font size
    }
  }

  static double getDynamicRadius() {
    double screenHeight = Get.height;
    double screenWidth = Get.width;

    double scaleFactor;

    // Define the scaling factor based on the app's height or width
    if (screenHeight > screenWidth) {
      scaleFactor = screenHeight / 1000; // Adjust this value as needed
    } else {
      scaleFactor = screenWidth / 1000; // Adjust this value as needed
    }

    double baseRadius = 10.0; // Base radius for reference

    return baseRadius * scaleFactor; // Scale the radius based on the scaling factor
  }

  static double getDynamicPadding(double basePadding) {
    double screenHeight = Get.height;
    double screenWidth = Get.width;

    double scaleFactor;

    // Define the scaling factor based on the app's height or width
    if (screenHeight > screenWidth) {
      scaleFactor = screenHeight / 1000; // Adjust this value as needed
    } else {
      scaleFactor = screenWidth / 1000; // Adjust this value as needed
    }
    return basePadding * scaleFactor; // Scale the padding based on the scaling factor
  }
  static double getDynamicPaddingValue(double basePadding) {
    double screenHeight = Get.height;
    double screenWidth = Get.width;

    double scaleFactor;

    // Define the scaling factor based on the app's height or width
    if (screenHeight > screenWidth) {
      scaleFactor = screenHeight / 1000; // Adjust this value as needed
    } else {
      scaleFactor = screenWidth / 1000; // Adjust this value as needed
    }
    return basePadding * scaleFactor; // Scale the padding based on the scaling factor
  }
}

class AppIcons {
  static String logoImagePath = "assets/logo/logo.png";
  static String ellipseImagePath = "assets/graphics/ellipse.png";
  static String userImagePath = "assets/graphics/user.png";
  static String welcomeImagePath = "assets/graphics/welcome.png";
  static String barcodeImagePath = "assets/icons/barcode.png";
  static String contactsImportImagePath = "assets/icons/contacts_import.png";
  static String drawerCloseImagePath = "assets/icons/drawer_close.png";
  static String drawerOpenImagePath = "assets/icons/drawer_open.png";
  static String emailImagePath = "assets/icons/email.png";
  static String contactsImagePath = "assets/icons/contacts.png";
  static String fundraisersImagePath = "assets/icons/fundraisers.png";
  static String leaderboardImagePath = "assets/icons/leaderboard.png";
  static String logoutImagePath = "assets/icons/logout.png";
  static String organizationImagePath = "assets/icons/organization.png";
  static String phoneImagePath = "assets/icons/phone.png";
  static String shareImagePath = "assets/icons/share.png";
  static String smsImagePath = "assets/icons/sms.png";
  static String timelineImagePath = "assets/icons/timeline.png";
}