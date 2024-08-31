import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listlocation2ItemWidget extends StatelessWidget {
  const Listlocation2ItemWidget({super.key});

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
          CustomIconButton(
            height: 68,
            width: 68,
            margin: getMargin(
              left: 16,
              top: 16,
              bottom: 16,
            ),
            variant: IconButtonVariant.GradientGray500Gray500,
            shape: IconButtonShape.CircleBorder34,
            padding: IconButtonPadding.PaddingAll22,
            child: CommonImageView(
              svgPath: ImageConstant.imageNotFound,
            ),
          ),
          Container(
            margin: getMargin(
              left: 20,
              top: 26,
              right: 36,
              bottom: 25,
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
                    "msg_new_services_av",
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
                Padding(
                  padding: getPadding(
                    top: 15,
                  ),
                  child: Text(
                    "msg_now_you_can_tra",
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
        ],
      ),
    );
  }
}
