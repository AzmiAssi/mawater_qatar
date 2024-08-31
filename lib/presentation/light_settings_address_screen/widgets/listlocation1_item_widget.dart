import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listlocation1ItemWidget extends StatelessWidget {
  const Listlocation1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
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
              24.00,
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
              margin: getMargin(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.black9001e1,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    26.00,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 36,
                    width: 36,
                    margin: getMargin(
                      all: 8,
                    ),
                    shape: IconButtonShape.CircleBorder18,
                    padding: IconButtonPadding.PaddingAll9,
                    child: CommonImageView(
                      svgPath: ImageConstant.imageNotFound,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                left: 16,
                top: 21,
                bottom: 23,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 3,
                          ),
                          child: Text(
                            "Home",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
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
                          width: 54,
                          text: "lbl_default",
                          margin: getMargin(
                            left: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                      right: 10,
                    ),
                    child: Text(
                      "msg_61480_sunbrook",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray700,
                        fontSize: getFontSize(
                          14,
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
            Padding(
              padding: getPadding(
                left: 15,
                top: 37,
                right: 23,
                bottom: 37,
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
    );
  }
}
