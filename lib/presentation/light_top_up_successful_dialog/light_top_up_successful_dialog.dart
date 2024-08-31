import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LightTopUpSuccessfulDialog extends StatelessWidget {
  const LightTopUpSuccessfulDialog({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          margin: getMargin(
            left: 44,
            top: 153,
            right: 44,
            bottom: 20,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                40.00,
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 32,
                  top: 40,
                  right: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                              right: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        10.00,
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
                                        ColorConstant.bluegray900,
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getSize(
                                    5.00,
                                  ),
                                  width: getSize(
                                    5.00,
                                  ),
                                  margin: getMargin(
                                    left: 74,
                                    top: 2,
                                    bottom: 13,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        2.50,
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
                                        ColorConstant.bluegray900,
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: getHorizontalSize(
                              168.00,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: getSize(
                                    2.00,
                                  ),
                                  width: getSize(
                                    2.00,
                                  ),
                                  margin: getMargin(
                                    top: 54,
                                    bottom: 87,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1.00,
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
                                        ColorConstant.bluegray900,
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getSize(
                                    10.00,
                                  ),
                                  width: getSize(
                                    10.00,
                                  ),
                                  margin: getMargin(
                                    top: 108,
                                    bottom: 25,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
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
                                        ColorConstant.bluegray900,
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: getSize(
                                    143.00,
                                  ),
                                  width: getSize(
                                    143.00,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: getSize(
                                            141.00,
                                          ),
                                          width: getSize(
                                            141.00,
                                          ),
                                          margin: getMargin(
                                            right: 2,
                                            bottom: 2,
                                          ),
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: const EdgeInsets.all(0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  70.50,
                                                ),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      all: 40,
                                                    ),
                                                    child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imageNotFound,
                                                      height: getVerticalSize(
                                                        44.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        49.00,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          height: getSize(
                                            5.00,
                                          ),
                                          width: getSize(
                                            5.00,
                                          ),
                                          margin: getMargin(
                                            left: 10,
                                            top: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                2.50,
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
                                                ColorConstant.bluegray900,
                                              ],
                                            ),
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
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getSize(
                              2.00,
                            ),
                            width: getSize(
                              2.00,
                            ),
                            margin: getMargin(
                              left: 45,
                              top: 7,
                              right: 45,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  1.00,
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
                                  ColorConstant.bluegray900,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getSize(
                              7.00,
                            ),
                            width: getSize(
                              7.00,
                            ),
                            margin: getMargin(
                              left: 59,
                              top: 1,
                              right: 59,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3.50,
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
                                  ColorConstant.bluegray900,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: getMargin(
                        top: 20,
                        bottom: 67,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: getSize(
                                15.00,
                              ),
                              width: getSize(
                                15.00,
                              ),
                              margin: getMargin(
                                left: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    7.50,
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
                                    ColorConstant.bluegray900,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              5.00,
                            ),
                            width: getSize(
                              5.00,
                            ),
                            margin: getMargin(
                              top: 73,
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  2.50,
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
                                  ColorConstant.bluegray900,
                                ],
                              ),
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
                  left: 32,
                  top: 36,
                  right: 32,
                ),
                child: Text(
                  "msg_top_up_successf",
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
                width: getHorizontalSize(
                  202.00,
                ),
                margin: getMargin(
                  left: 32,
                  top: 20,
                  right: 32,
                ),
                child: Text(
                  "msg_you_have_succes2",
                  maxLines: null,
                  textAlign: TextAlign.center,
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
              CustomButton(
                isDark: isDark,
                width: 276,
                text: "lbl_view_e_receipt",
                margin: getMargin(
                  left: 32,
                  top: 35,
                  right: 32,
                ),
                variant: ButtonVariant.FillGray500,
                shape: ButtonShape.CircleBorder29,
                padding: ButtonPadding.PaddingAll18,
                fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
              ),
              CustomButton(
                isDark: isDark,
                width: 276,
                text: "Cancel",
                margin: getMargin(
                  left: 32,
                  top: 12,
                  right: 32,
                  bottom: 20,
                ),
                variant: ButtonVariant.FillGray200,
                shape: ButtonShape.CircleBorder29,
                padding: ButtonPadding.PaddingAll21,
                fontStyle: ButtonFontStyle.UrbanistRomanBold16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
