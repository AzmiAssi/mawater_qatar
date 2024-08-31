import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LightLetsYouInScreen extends StatelessWidget {
  const LightLetsYouInScreen({super.key});

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    left: 28,
                    top: 40,
                    right: 28,
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 89,
                      right: 24,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgVectorGray500,
                      height: getVerticalSize(
                        112.00,
                      ),
                      width: getHorizontalSize(
                        180.00,
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
                    child: Text(
                      "lbl_let_s_you_in",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          48,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 24,
                      top: 29,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.gray201,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          margin: getMargin(
                            top: 18,
                            bottom: 18,
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: const EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  12.00,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 10,
                                      right: 6,
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imageNotFound,
                                      height: getVerticalSize(
                                        17.00,
                                      ),
                                      width: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 22,
                            bottom: 21,
                          ),
                          child: Text(
                            "msg_continue_with_f",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 24,
                      top: 16,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.gray201,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 18,
                            bottom: 18,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getSize(
                              23.00,
                            ),
                            width: getSize(
                              23.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 24,
                            bottom: 19,
                          ),
                          child: Text(
                            "msg_continue_with_g",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 24,
                      top: 16,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.gray201,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 18,
                            bottom: 18,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getVerticalSize(
                              24.00,
                            ),
                            width: getHorizontalSize(
                              19.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 14,
                            top: 24,
                            bottom: 19,
                          ),
                          child: Text(
                            "msg_continue_with_a",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 39,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            155.00,
                          ),
                          margin: getMargin(
                            top: 7,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray201,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                          ),
                          child: Text(
                            "or",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray700,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            155.00,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 7,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray201,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: 380,
                  text: "Sign in with password",
                  margin: getMargin(
                    left: 24,
                    top: 35,
                    right: 24,
                  ),
                  variant: ButtonVariant.OutlineBlack9003f,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 33,
                      right: 24,
                      bottom: 48,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 3,
                          ),
                          child: Text(
                            "msg_don_t_have_an_a",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray502,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 2,
                          ),
                          child: Text(
                            "Sign up",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
