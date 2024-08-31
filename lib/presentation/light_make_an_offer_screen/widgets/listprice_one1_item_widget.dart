import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListpriceOne1ItemWidget extends StatelessWidget {
  const ListpriceOne1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          right: 24,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: getPadding(
                left: 26,
                top: 11,
                right: 26,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    19.00,
                  ),
                ),
                border: Border.all(
                  color: ColorConstant.gray500,
                  width: getHorizontalSize(
                    2.00,
                  ),
                ),
              ),
              child: Text(
                "174,500",
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
            Container(
              margin: getMargin(
                left: 16,
              ),
              padding: getPadding(
                left: 25,
                top: 11,
                right: 25,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    19.00,
                  ),
                ),
                border: Border.all(
                  color: ColorConstant.gray500,
                  width: getHorizontalSize(
                    2.00,
                  ),
                ),
              ),
              child: Text(
                "174,000",
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
            Container(
              margin: getMargin(
                left: 16,
              ),
              padding: getPadding(
                left: 26,
                top: 11,
                right: 26,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    19.00,
                  ),
                ),
                border: Border.all(
                  color: ColorConstant.gray500,
                  width: getHorizontalSize(
                    2.00,
                  ),
                ),
              ),
              child: Text(
                "173,500",
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
          ],
        ),
      ),
    );
  }
}
