import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  const ListgroupItemWidget({super.key});
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
            Container(
              height: getSize(
                20.00,
              ),
              width: getSize(
                20.00,
              ),
              margin: getMargin(
                left: 215,
                top: 30,
                right: 24,
                bottom: 30,
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
