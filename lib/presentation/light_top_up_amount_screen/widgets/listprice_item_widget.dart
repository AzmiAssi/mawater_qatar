import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

// ignore: must_be_immutable
class ListpriceItemWidget extends StatelessWidget {
  const ListpriceItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          10.00,
        ),
        bottom: getVerticalSize(
          10.00,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: getHorizontalSize(120),
            height: getVerticalSize(45),
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                30.00,
              ),
              top: getVerticalSize(
                10.00,
              ),
              right: getHorizontalSize(
                30.00,
              ),
              bottom: getVerticalSize(
                10.00,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  22.50,
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
              "10",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray500,
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
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                12.00,
              ),
            ),
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                30.00,
              ),
              top: getVerticalSize(
                10.00,
              ),
              right: getHorizontalSize(
                30.00,
              ),
              bottom: getVerticalSize(
                10.00,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  22.50,
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
              "20",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray500,
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
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                11.99,
              ),
            ),
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                30.00,
              ),
              top: getVerticalSize(
                10.00,
              ),
              right: getHorizontalSize(
                30.00,
              ),
              bottom: getVerticalSize(
                10.00,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  22.50,
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
              "50",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray500,
                fontSize: getFontSize(
                  18,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
