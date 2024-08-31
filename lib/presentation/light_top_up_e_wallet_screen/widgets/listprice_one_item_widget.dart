import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListpriceOneItemWidget extends StatelessWidget {
  const ListpriceOneItemWidget({super.key});

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
                left: 29,
                top: 11,
                right: 29,
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
                "lbl_10_000",
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
                left: 27,
                top: 11,
                right: 27,
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
                "lbl_50_000",
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
                left: 24,
                top: 11,
                right: 24,
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
                "lbl_100_000",
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
