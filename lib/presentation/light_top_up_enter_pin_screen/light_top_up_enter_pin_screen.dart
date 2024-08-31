import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LightTopUpEnterPinScreen extends StatelessWidget {
  const LightTopUpEnterPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  margin: getMargin(
                    left: 28,
                    top: 36,
                    right: 28,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 4,
                          bottom: 4,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getVerticalSize(
                            15.00,
                          ),
                          width: getHorizontalSize(
                            19.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                        ),
                        child: Text(
                          "lbl_enter_your_pin",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: getFontSize(
                              24,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 145,
                      right: 24,
                    ),
                    child: Text(
                      "Enter your PIN to confirm top up",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 80,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: getPadding(
                            left: 29,
                            top: 16,
                            right: 29,
                            bottom: 16,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray50,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray201,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "⚫",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            left: 29,
                            top: 16,
                            right: 29,
                            bottom: 16,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray50,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray201,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "⚫",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            left: 29,
                            top: 16,
                            right: 29,
                            bottom: 16,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray50,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray201,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "⚫",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            left: 30,
                            top: 18,
                            right: 30,
                            bottom: 18,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray50,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray800,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "lbl_9",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: 380,
                  text: "Continue",
                  margin: getMargin(
                    left: 24,
                    top: 128,
                    right: 24,
                    bottom: 20,
                  ),
                  variant: ButtonVariant.OutlineBlack9003f,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
