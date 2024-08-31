import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/custom_icon_button.dart';
import 'package:mawater_qatar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LightInboxChatSentMessageScreen extends StatelessWidget {
  const LightInboxChatSentMessageScreen({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: size.width,
                    margin: getMargin(
                      left: 24,
                      top: 33,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 2,
                            bottom: 2,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
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
                                  "BMW Store",
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
                              Padding(
                                padding: getPadding(
                                  left: 9,
                                  top: 3,
                                  bottom: 3,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgVector17X17,
                                  height: getSize(
                                    17.00,
                                  ),
                                  width: getSize(
                                    17.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                            right: 3,
                            bottom: 3,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CommonImageView(
                                imagePath: ImageConstant.imageNotFound,
                                height: getSize(
                                  22.00,
                                ),
                                width: getSize(
                                  22.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 26,
                                  top: 1,
                                  bottom: 1,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: getSize(
                                    21.00,
                                  ),
                                  width: getSize(
                                    21.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: 50,
                  text: "lbl_today",
                  margin: getMargin(
                    left: 24,
                    top: 33,
                    right: 24,
                  ),
                  variant: ButtonVariant.FillGray6001e,
                  fontStyle: ButtonFontStyle.UrbanistSemiBold10,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 121,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray101,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                        bottomLeft: Radius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                        bottomRight: Radius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            166.00,
                          ),
                          margin: getMargin(
                            left: 20,
                            top: 17,
                            bottom: 15,
                          ),
                          child: Text(
                            "msg_hello_welcome",
                            maxLines: null,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 44,
                            top: 39,
                            bottom: 14,
                          ),
                          child: Text(
                            "lbl_09_41",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: getMargin(
                      left: 24,
                      top: 12,
                      right: 121,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray101,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                        bottomLeft: Radius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                        bottomRight: Radius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            197.00,
                          ),
                          margin: getMargin(
                            left: 20,
                            top: 17,
                            bottom: 12,
                          ),
                          child: Text(
                            "msg_is_there_anythi",
                            maxLines: null,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 13,
                            top: 39,
                            bottom: 14,
                          ),
                          child: Text(
                            "lbl_09_41",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    283.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      bottomLeft: Radius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      bottomRight: Radius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              bottomLeft: Radius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              bottomRight: Radius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                            ),
                            gradient: LinearGradient(
                              begin: const Alignment(
                                1.0000000298023233,
                                1.0000000298023233,
                              ),
                              end: const Alignment(
                                1.1102230246251565e-16,
                                0,
                              ),
                              colors: [
                                ColorConstant.gray500,
                                ColorConstant.gray500,
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  190.00,
                                ),
                                margin: getMargin(
                                  top: 17,
                                  bottom: 12,
                                ),
                                child: Text(
                                  "Hi Good Morning, I want to buy a BMW M5 Series",
                                  maxLines: null,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 39,
                                  bottom: 14,
                                ),
                                child: Text(
                                  "lbl_09_41",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray300,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
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
                Container(
                  width: getHorizontalSize(
                    283.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 10,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      bottomLeft: Radius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      bottomRight: Radius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              bottomLeft: Radius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              bottomRight: Radius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                            ),
                            gradient: LinearGradient(
                              begin: const Alignment(
                                1.0000000298023233,
                                1.0000000298023233,
                              ),
                              end: const Alignment(
                                1.1102230246251565e-16,
                                0,
                              ),
                              colors: [
                                ColorConstant.gray500,
                                ColorConstant.gray500,
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  193.00,
                                ),
                                margin: getMargin(
                                  top: 17,
                                  bottom: 12,
                                ),
                                child: Text(
                                  "msg_my_previous_bmw",
                                  maxLines: null,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 61,
                                  bottom: 14,
                                ),
                                child: Text(
                                  "lbl_09_41",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray300,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
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
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        24.00,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            24.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImage120X120,
                          height: getSize(
                            120.00,
                          ),
                          width: getSize(
                            120.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgImage7,
                            height: getSize(
                              120.00,
                            ),
                            width: getSize(
                              120.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    283.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      bottomLeft: Radius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      bottomRight: Radius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              bottomLeft: Radius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              bottomRight: Radius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                            ),
                            gradient: LinearGradient(
                              begin: const Alignment(
                                1.0000000298023233,
                                1.0000000298023233,
                              ),
                              end: const Alignment(
                                1.1102230246251565e-16,
                                0,
                              ),
                              colors: [
                                ColorConstant.gray500,
                                ColorConstant.gray500,
                              ],
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
                                  top: 15,
                                  bottom: 14,
                                ),
                                child: Text(
                                  "msg_can_i_make_a_of",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 17,
                                  right: 20,
                                  bottom: 14,
                                ),
                                child: Text(
                                  "lbl_09_41",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray300,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 80,
                      right: 24,
                      bottom: 48,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomTextFormField(
                          isDark: isDark,
                          width: 312,
                          focusNode: FocusNode(),
                          hintText: "Message...",
                          padding: TextFormFieldPadding.PaddingT22,
                          fontStyle: TextFormFieldFontStyle.UrbanistRegular14,
                          textInputAction: TextInputAction.done,
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
                        CustomIconButton(
                          height: 56,
                          width: 56,
                          margin: getMargin(
                            left: 12,
                          ),
                          variant: IconButtonVariant.GradientGray500Gray500,
                          child: CommonImageView(
                            svgPath: ImageConstant.imageNotFound,
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
