import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LightSettingsPaymentAddNewCardScreen extends StatelessWidget {
  const LightSettingsPaymentAddNewCardScreen({super.key});

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
                                  "lbl_add_new_card",
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
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 3,
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
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getVerticalSize(
                      239.00,
                    ),
                    width: getHorizontalSize(
                      380.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 33,
                      right: 24,
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            24.00,
                          ),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imageNotFound,
                                height: getVerticalSize(
                                  239.00,
                                ),
                                width: getHorizontalSize(
                                  380.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 30,
                                top: 30,
                                right: 29,
                                bottom: 29,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    margin: getMargin(
                                      top: 3,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            right: 10,
                                          ),
                                          child: Text(
                                            "lbl_mocard",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 42,
                                          ),
                                          child: Text(
                                            "•••• •••• •••• ••••",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(
                                                48,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 34,
                                            right: 10,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                margin: getMargin(
                                                  bottom: 2,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "msg_card_holder_nam",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        fontSize: getFontSize(
                                                          10,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 7,
                                                        right: 10,
                                                      ),
                                                      child: Text(
                                                        "•••• ••••",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          fontSize: getFontSize(
                                                            14,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  left: 52,
                                                  bottom: 2,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Expiry date",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        fontSize: getFontSize(
                                                          10,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 6,
                                                        right: 10,
                                                      ),
                                                      child: Text(
                                                        "••••/••••",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          fontSize: getFontSize(
                                                            14,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 35,
                                      bottom: 1,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgAutolayoutver,
                                      height: getVerticalSize(
                                        179.00,
                                      ),
                                      width: getHorizontalSize(
                                        60.00,
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
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 27,
                    right: 24,
                  ),
                  child: Text(
                    "lbl_card_name",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        18,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.20,
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
                    top: 15,
                    right: 24,
                  ),
                  padding: TextFormFieldPadding.PaddingT22,
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 27,
                    right: 24,
                  ),
                  child: Text(
                    "lbl_card_number",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        18,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                CustomTextFormField(
                  isDark: isDark,
                  width: 380,
                  focusNode: FocusNode(),
                  hintText: "msg_2672_4738_7837",
                  margin: getMargin(
                    left: 24,
                    top: 15,
                    right: 24,
                  ),
                  padding: TextFormFieldPadding.PaddingT22,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: getMargin(
                            top: 6,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  right: 10,
                                ),
                                child: Text(
                                  "lbl_expiry_date2",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  180.00,
                                ),
                                margin: getMargin(
                                  top: 12,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        "lbl_09_07_26",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
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
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 3,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  right: 10,
                                ),
                                child: Text(
                                  "lbl_cvv",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                              CustomTextFormField(
                                isDark: isDark,
                                width: 180,
                                focusNode: FocusNode(),
                                hintText: "lbl_699",
                                margin: getMargin(
                                  top: 15,
                                ),
                                padding: TextFormFieldPadding.PaddingT22,
                                textInputAction: TextInputAction.done,
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
                  width: 380,
                  text: "Add",
                  margin: getMargin(
                    left: 24,
                    top: 90,
                    right: 24,
                    bottom: 20,
                  ),
                  variant: ButtonVariant.OutlineBlack9003f,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll21,
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
