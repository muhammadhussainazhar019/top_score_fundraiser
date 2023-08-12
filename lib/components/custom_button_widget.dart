import 'package:flutter/material.dart';
import 'package:top_score_fundraiser/utilities/app_constants.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonText;
  final bool isFullWidth;
  final void Function()? onTap;
  const CustomButtonWidget(
      {
        super.key,
        required this.isFullWidth,
        required this.buttonText,
        required this.onTap
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: AppTheme.padding,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                color: isFullWidth?
                Colors.transparent:AppTheme.themeColor,
                borderRadius: BorderRadius.circular(AppTheme.appBaseRadius*2)
            ),
            height: AppTheme.appHeight*.050,
            width: isFullWidth?
            AppTheme.appWidth:AppTheme.appWidth*.40,
            child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                      color: AppTheme.textStyleThemeBackgroundColor,
                      fontWeight: FontWeight.w800, fontFamily: AppTheme.fontFamily,
                      fontSize: AppTheme.getDynamicFontSize(4)),
                )
            ),
          ),
        ),
    );
  }
}