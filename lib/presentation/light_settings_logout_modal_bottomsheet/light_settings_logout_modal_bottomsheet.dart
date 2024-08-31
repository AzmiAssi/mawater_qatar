import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LightSettingsLogoutModalBottomsheet extends StatelessWidget {
  const LightSettingsLogoutModalBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      3.00,
                    ),
                    width: getHorizontalSize(
                      38.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 8,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray300,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          1.50,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 29,
                      right: 24,
                    ),
                    child: Text(
                      "Logout",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.redA200,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      380.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 23,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray201,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 27,
                      right: 24,
                    ),
                    child: Text(
                      "Are you sure you want to log out?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          20,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                      right: 24,
                      bottom: 48,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomButton(
                          isDark: isDark,
                          width: 184,
                          text: "Cancel",
                          variant: ButtonVariant.FillGray200,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingAll18,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                        ),
                        CustomButton(
                          isDark: isDark,
                          width: 184,
                          text: "Yes, Logout",
                          margin: getMargin(
                            left: 12,
                          ),
                          variant: ButtonVariant.OutlineBlack9003f,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingAll18,
                          fontStyle:
                              ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
