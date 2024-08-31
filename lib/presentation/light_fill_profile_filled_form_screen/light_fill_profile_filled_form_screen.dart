import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LightFillProfileFilledFormScreen extends StatelessWidget {
  const LightFillProfileFilledFormScreen({super.key});

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
                Container(
                  width: size.width,
                  margin: getMargin(
                    left: 28,
                    top: 35,
                    right: 28,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          "msg_fill_your_profi",
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
                    height: getSize(
                      140.00,
                    ),
                    width: getSize(
                      140.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 36,
                      right: 24,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                70.00,
                              ),
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgEllipse120X120,
                              height: getSize(
                                140.00,
                              ),
                              width: getSize(
                                140.00,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                              top: 10,
                              right: 2,
                              bottom: 2,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imageNotFound,
                              height: getSize(
                                29.00,
                              ),
                              width: getSize(
                                29.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomTextFormField(
                  isDark: isDark,
                  width: 380,
                  focusNode: FocusNode(),
                  hintText: "lbl_andrew_ainsley",
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  padding: TextFormFieldPadding.PaddingT22,
                  alignment: Alignment.center,
                ),
                CustomTextFormField(
                  isDark: isDark,
                  width: 380,
                  focusNode: FocusNode(),
                  hintText: "lbl_andrew",
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray50,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          12.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 20,
                            top: 21,
                            bottom: 20,
                          ),
                          child: Text(
                            "12/27/1995",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 19,
                            right: 22,
                            bottom: 19,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getVerticalSize(
                              16.00,
                            ),
                            width: getHorizontalSize(
                              15.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomTextFormField(
                  isDark: isDark,
                  width: 380,
                  focusNode: FocusNode(),
                  hintText: "msg_andrew_ainsley",
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  padding: TextFormFieldPadding.PaddingT22,
                  alignment: Alignment.center,
                  suffix: Container(
                    margin: getMargin(
                      left: 30,
                      top: 20,
                      right: 22,
                      bottom: 20,
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imageNotFound,
                      height: getSize(
                        15.00,
                      ),
                      width: getSize(
                        15.00,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    minWidth: getHorizontalSize(
                      15.00,
                    ),
                    minHeight: getVerticalSize(
                      15.00,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray50,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          12.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 20,
                            top: 19,
                            bottom: 19,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getVerticalSize(
                              18.00,
                            ),
                            width: getHorizontalSize(
                              24.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 11,
                            top: 25,
                            bottom: 25,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgArrowdownGray900,
                            height: getVerticalSize(
                              4.00,
                            ),
                            width: getHorizontalSize(
                              9.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 15,
                            top: 21,
                            bottom: 20,
                          ),
                          child: Text(
                            "+1 111 467 378 399",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
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
                CustomTextFormField(
                  isDark: isDark,
                  width: 380,
                  focusNode: FocusNode(),
                  hintText: "lbl_male",
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  suffix: Container(
                    margin: getMargin(
                      left: 30,
                      top: 23,
                      right: 25,
                      bottom: 23,
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imageNotFound,
                      height: getVerticalSize(
                        8.00,
                      ),
                      width: getHorizontalSize(
                        10.00,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    minWidth: getHorizontalSize(
                      10.00,
                    ),
                    minHeight: getVerticalSize(
                      8.00,
                    ),
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: 380,
                  text: "Continue",
                  margin: getMargin(
                    left: 24,
                    top: 60,
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
