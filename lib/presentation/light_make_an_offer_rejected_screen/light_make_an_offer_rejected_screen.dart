import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/presentation/homePage.dart';
import 'package:mawater_qatar/widgets/back_btn.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';

class LightMakeAnOfferRejectedScreen extends StatelessWidget {
  const LightMakeAnOfferRejectedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: size.width,
                  margin: getMargin(
                    left: 28,
                    top: 35,
                    right: 28,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const BackBtn(),
                      HorizontalSpace(width: 20),
                      Padding(
                        padding: getPadding(
                          left: 0,
                        ),
                        child: Text(
                          "Your Offer",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: getFontSize(
                              24,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 118,
                      right: 24,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgFrame191X260,
                      height: getVerticalSize(
                        191.00,
                      ),
                      width: getHorizontalSize(
                        260.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      372.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 53,
                      right: 24,
                    ),
                    child: Text(
                      "We're sorry, your offer has been rejected",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: getFontSize(
                          32,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      380.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 29,
                      right: 24,
                    ),
                    child: Text(
                      "Don't worry, you will always be able to make another offer that is more suitable, so that your offer is accepted.",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: 380,
                  text: "Make an Offer Again",
                  margin: getMargin(
                    left: 24,
                    top: 105,
                    right: 24,
                  ),
                  variant: ButtonVariant.OutlineBlack9003f,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                  alignment: Alignment.center,
                ),
                CustomButton(
                  isDark: isDark,
                  width: 380,
                  text: "Back to Home",
                  margin: getMargin(
                    left: 24,
                    top: 20,
                    right: 24,
                    bottom: 20,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  variant: ButtonVariant.FillGray200,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
