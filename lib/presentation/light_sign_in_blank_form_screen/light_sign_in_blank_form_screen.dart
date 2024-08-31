import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/custom_checkbox.dart';
import 'package:mawater_qatar/widgets/custom_icon_button.dart';
import 'package:mawater_qatar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LightSignInBlankFormScreen extends StatelessWidget {
  bool checkbox = false;

  LightSignInBlankFormScreen({super.key});

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
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
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 70,
                      right: 24,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgVectorGray500,
                      height: getVerticalSize(
                        90.00,
                      ),
                      width: getHorizontalSize(
                        144.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 61,
                      right: 24,
                    ),
                    child: Text(
                      "msg_login_to_your_a",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          32,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                CustomTextFormField(
                  isDark: isDark,
                  width: 380,
                  focusNode: FocusNode(),
                  hintText: "lbl_email",
                  margin: getMargin(
                    left: 24,
                    top: 19,
                    right: 24,
                  ),
                  fontStyle: TextFormFieldFontStyle.UrbanistRegular14,
                  alignment: Alignment.center,
                  prefix: Container(
                    margin: getMargin(
                      left: 21,
                      top: 22,
                      right: 13,
                      bottom: 22,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgExcludeGray502,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    minWidth: getSize(
                      15.00,
                    ),
                    minHeight: getSize(
                      15.00,
                    ),
                  ),
                ),
                CustomTextFormField(
                  isDark: isDark,
                  width: 380,
                  focusNode: FocusNode(),
                  hintText: "Password",
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  fontStyle: TextFormFieldFontStyle.UrbanistRegular14,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  prefix: Container(
                    margin: getMargin(
                      left: 22,
                      top: 21,
                      right: 14,
                      bottom: 21,
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imageNotFound,
                      height: getVerticalSize(
                        16.00,
                      ),
                      width: getHorizontalSize(
                        14.00,
                      ),
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    minWidth: getSize(
                      16.00,
                    ),
                    minHeight: getSize(
                      16.00,
                    ),
                  ),
                  suffix: Container(
                    margin: getMargin(
                      left: 30,
                      top: 22,
                      right: 21,
                      bottom: 22,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgUnionGray502,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    minWidth: getHorizontalSize(
                      16.00,
                    ),
                    minHeight: getVerticalSize(
                      14.00,
                    ),
                  ),
                  isObscureText: true,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomCheckbox(
                    alignment: Alignment.center,
                    text: "lbl_remember_me",
                    iconSize: 24,
                    value: checkbox,
                    padding: getPadding(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    onChange: (value) {
                      checkbox = value;
                    },
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: 380,
                  text: "lbl_sign_in",
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  variant: ButtonVariant.FillGray500,
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
                      top: 29,
                      right: 24,
                    ),
                    child: Text(
                      "Forgot the password?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray500,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
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
                      top: 33,
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
                            96.00,
                          ),
                          margin: getMargin(
                            top: 9,
                            bottom: 7,
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
                            "or continue with",
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
                            96.00,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 9,
                            bottom: 7,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray201,
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
                      top: 33,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
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
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 24,
                                width: 24,
                                margin: getMargin(
                                  left: 32,
                                  top: 18,
                                  right: 32,
                                  bottom: 18,
                                ),
                                variant: IconButtonVariant
                                    .GradientBlue500Lightblue700,
                                shape: IconButtonShape.CircleBorder12,
                                child: CommonImageView(
                                  svgPath: ImageConstant.imageNotFound,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            60.00,
                          ),
                          width: getHorizontalSize(
                            87.00,
                          ),
                          margin: getMargin(
                            left: 20,
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: const EdgeInsets.all(0),
                            color: ColorConstant.whiteA700,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: ColorConstant.gray201,
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 31,
                                      top: 18,
                                      right: 31,
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            60.00,
                          ),
                          width: getHorizontalSize(
                            88.00,
                          ),
                          margin: getMargin(
                            left: 20,
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: const EdgeInsets.all(0),
                            color: ColorConstant.whiteA700,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: ColorConstant.gray201,
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 34,
                                      top: 18,
                                      right: 34,
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
                                ),
                              ],
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
                      top: 22,
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
