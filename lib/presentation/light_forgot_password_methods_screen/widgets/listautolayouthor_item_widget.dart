import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class ListautolayouthorItemWidget extends StatelessWidget {
  const ListautolayouthorItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          right: 23.99997,
        ),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              32.00,
            ),
          ),
        ),
        child: OutlineGradientButton(
          padding: EdgeInsets.only(
            left: getHorizontalSize(
              2.00,
            ),
            top: getVerticalSize(
              2.00,
            ),
            right: getHorizontalSize(
              2.00,
            ),
            bottom: getVerticalSize(
              2.00,
            ),
          ),
          strokeWidth: getHorizontalSize(
            2.00,
          ),
          gradient: LinearGradient(
            begin: const Alignment(
              1.0000000298023233,
              1.0000000298023233,
            ),
            end: const Alignment(
              1.1102230246251565e-16,
              0,
            ),
            colors: [
              ColorConstant.gray500,
              ColorConstant.gray702,
              ColorConstant.bluegray900,
            ],
          ),
          corners: const Corners(
            topLeft: Radius.circular(
              32,
            ),
            topRight: Radius.circular(
              32,
            ),
            bottomLeft: Radius.circular(
              32,
            ),
            bottomRight: Radius.circular(
              32,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomIconButton(
                height: 80,
                width: 80,
                margin: getMargin(
                  left: 24,
                  top: 24,
                  bottom: 24,
                ),
                variant: IconButtonVariant.FillBlack90015,
                shape: IconButtonShape.CircleBorder40,
                padding: IconButtonPadding.PaddingAll26,
                child: CommonImageView(
                  svgPath: ImageConstant.imageNotFound,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 42,
                  right: 163,
                  bottom: 41,
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
                        "via SMS:",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 14,
                      ),
                      child: Text(
                        "+1 111 ******99",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.black903,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
