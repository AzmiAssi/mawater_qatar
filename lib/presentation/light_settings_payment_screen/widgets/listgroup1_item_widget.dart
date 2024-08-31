import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listgroup1ItemWidget extends StatelessWidget {
  const Listgroup1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Padding(
            padding: getPadding(
              left: 29,
              top: 27,
              bottom: 27,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: getVerticalSize(
                    26.00,
                  ),
                  width: getHorizontalSize(
                    22.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 17,
                    top: 5,
                    bottom: 2,
                  ),
                  child: Text(
                    "lbl_paypal",
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
              left: 155,
              top: 32,
              right: 24,
              bottom: 31,
            ),
            child: Text(
              "lbl_connected",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConstant.gray500,
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
    );
  }
}
