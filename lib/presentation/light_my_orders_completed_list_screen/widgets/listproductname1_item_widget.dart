import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listproductname1ItemWidget extends StatelessWidget {
  const Listproductname1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: getMargin(
        right: 20,
      ),
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: getVerticalSize(
              102.00,
            ),
            width: getHorizontalSize(
              120.00,
            ),
            margin: getMargin(
              left: 20,
              top: 20,
              bottom: 20,
            ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: const EdgeInsets.all(0),
              color: ColorConstant.gray100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImage102X120,
                        height: getVerticalSize(
                          102.00,
                        ),
                        width: getHorizontalSize(
                          120.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 16,
              top: 23,
              right: 20,
              bottom: 20,
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
                    "lbl_porsche_sports",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        18,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                        margin: getMargin(
                          top: 4,
                          bottom: 4,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.red500,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          "Red",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray700,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                      CustomButton(
                        isDark: isDark,
                        width: 72,
                        text: "lbl_completed",
                        margin: getMargin(
                          left: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    204.00,
                  ),
                  margin: getMargin(
                    top: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          "lbl_172_500",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      CustomButton(
                        isDark: isDark,
                        width: 120,
                        text: "Leave Review",
                        variant: ButtonVariant.FillGray500,
                        shape: ButtonShape.CircleBorder16,
                        padding: ButtonPadding.PaddingAll9,
                        fontStyle: ButtonFontStyle.UrbanistSemiBold14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
