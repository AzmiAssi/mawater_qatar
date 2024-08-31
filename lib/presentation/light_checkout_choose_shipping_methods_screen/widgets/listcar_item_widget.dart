import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListcarItemWidget extends StatelessWidget {
  const ListcarItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(right: 24, bottom: 20),
        decoration: BoxDecoration(
          color: isDark ? ColorConstant.darkTextField : ColorConstant.whiteA700,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              24.00,
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
            CustomIconButton(
              height: 52,
              width: 52,
              margin: getMargin(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              shape: IconButtonShape.CircleBorder26,
              variant: IconButtonVariant.FillGray500,
              child: CommonImageView(
                svgPath: ImageConstant.truck,
              ),
            ),
            Container(
              margin: getMargin(
                left: 16,
                top: 23,
                bottom: 24,
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
                      "truck",
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
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      "Est. Arrival, Dec 20-23",
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
                left: 49,
                top: 34,
                bottom: 34,
              ),
              child: Text(
                "200 ${Constants.currency}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.gray500,
                  fontSize: getFontSize(
                    20,
                  ),
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: getSize(
                20.00,
              ),
              width: getSize(
                20.00,
              ),
              margin: getMargin(
                left: 16,
                top: 36,
                right: 20,
                bottom: 36,
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
            ),
          ],
        ),
      ),
    );
  }
}
