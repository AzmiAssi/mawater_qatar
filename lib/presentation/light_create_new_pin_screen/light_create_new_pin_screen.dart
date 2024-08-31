import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LightCreateNewPinScreen extends StatelessWidget {
  const LightCreateNewPinScreen({super.key});

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
                          bottom: 3,
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
                          "lbl_create_new_pin",
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
                  child: Container(
                    width: getHorizontalSize(
                      324.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 132,
                      right: 24,
                    ),
                    child: Text(
                      "msg_add_a_pin_numbe",
                      maxLines: null,
                      textAlign: TextAlign.center,
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
                      top: 85,
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
                              color: ColorConstant.gray500,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "lbl_72",
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
                          height: getVerticalSize(
                            61.00,
                          ),
                          width: getHorizontalSize(
                            83.00,
                          ),
                          margin: getMargin(
                            left: 16,
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
                    top: 115,
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
