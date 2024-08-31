import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listellipse3ItemWidget extends StatelessWidget {
  const Listellipse3ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: getPadding(
          right: 24,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.gray100,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        30.00,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              30.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgEllipse11,
                            height: getSize(
                              60.00,
                            ),
                            width: getSize(
                              60.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 20,
                    top: 10,
                    bottom: 9,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_tynisha_obey",
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
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            top: 7,
                            right: 4,
                          ),
                          child: Text(
                            "lbl_1_300_555_0135",
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomButton(
              isDark: isDark,
              width: 68,
              text: "lbl_invite",
              margin: getMargin(
                left: 121,
                top: 14,
                bottom: 14,
              ),
              variant: ButtonVariant.FillGray500,
              shape: ButtonShape.CircleBorder16,
              padding: ButtonPadding.PaddingAll9,
              fontStyle: ButtonFontStyle.UrbanistSemiBold14,
            ),
          ],
        ),
      ),
    );
  }
}
