import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListautolayoutverItemWidget extends StatelessWidget {
  const ListautolayoutverItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        right: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: getPadding(
              left: 30,
              top: 16,
              right: 30,
              bottom: 15,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray50,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  12.00,
                ),
              ),
            ),
            child: Text(
              "lbl_1",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 8,
            ),
            padding: getPadding(
              left: 30,
              top: 15,
              right: 30,
              bottom: 16,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray50,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  12.00,
                ),
              ),
            ),
            child: Text(
              "2",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 8,
            ),
            padding: getPadding(
              left: 30,
              top: 16,
              right: 30,
              bottom: 15,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray50,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  12.00,
                ),
              ),
            ),
            child: Text(
              "3",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConstant.gray900,
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
