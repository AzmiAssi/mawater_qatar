import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listellipse1ItemWidget extends StatelessWidget {
  const Listellipse1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        right: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                right: 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorConstant.gray100,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              24.00,
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    24.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgEllipse48X48,
                                  height: getSize(
                                    48.00,
                                  ),
                                  width: getSize(
                                    48.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 16,
                          bottom: 15,
                        ),
                        child: Text(
                          "Darlene Robertson",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                      bottom: 8,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                16.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray500,
                              width: getHorizontalSize(
                                2.00,
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 17,
                                  top: 11,
                                  bottom: 11,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: getVerticalSize(
                                    9.00,
                                  ),
                                  width: getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 9,
                                  top: 9,
                                  right: 16,
                                  bottom: 8,
                                ),
                                child: Text(
                                  "5",
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
                        Padding(
                          padding: getPadding(
                            left: 14,
                            top: 6,
                            bottom: 6,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getSize(
                              18.00,
                            ),
                            width: getSize(
                              18.00,
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
          Container(
            width: getHorizontalSize(
              380.00,
            ),
            margin: getMargin(
              top: 16,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'The car is awesome and very fast, my family and I really like it, wow!! ?',
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.20,
                    ),
                  ),
                  TextSpan(
                    text: '',
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.20,
                    ),
                  ),
                  TextSpan(
                    text: '',
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.20,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 2,
                    bottom: 2,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imageNotFound,
                    height: getVerticalSize(
                      19.00,
                    ),
                    width: getHorizontalSize(
                      20.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Text(
                    "729",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        12,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Text(
                    "lbl_6_days_ago",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
