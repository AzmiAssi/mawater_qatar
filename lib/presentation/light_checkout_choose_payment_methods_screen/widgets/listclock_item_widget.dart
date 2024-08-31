import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListclockItemWidget extends StatelessWidget {
  const ListclockItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          right: 24,
        ),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorConstant.gray500.withOpacity(0.2),
              spreadRadius: getHorizontalSize(
                0.00,
              ),
              blurRadius: getHorizontalSize(
                10.00,
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
            Padding(
              padding: getPadding(
                left: 26,
                top: 28,
                bottom: 28,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CommonImageView(
                    imagePath: ImageConstant.imageNotFound,
                    height: getVerticalSize(
                      24.00,
                    ),
                    width: getHorizontalSize(
                      26.00,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 14,
                      top: 4,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_my_wallet",
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
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 106,
                top: 30,
                right: 24,
                bottom: 30,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 2,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_299_677",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray801,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          10.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.gray500,
                        width: getHorizontalSize(
                          3.00,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getSize(
                            11.00,
                          ),
                          width: getSize(
                            11.00,
                          ),
                          margin: getMargin(
                            all: 4,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                5.83,
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
          ],
        ),
      ),
    );
  }
}
