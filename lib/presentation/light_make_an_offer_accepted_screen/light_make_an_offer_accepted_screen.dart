import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/presentation/light_checkout_blank_screen/light_checkout_blank_screen.dart';
import 'package:mawater_qatar/widgets/back_btn.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';

class LightMakeAnOfferAcceptedScreen extends StatelessWidget {
  const LightMakeAnOfferAcceptedScreen({super.key});

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
                      top: 146,
                      right: 24,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgFrame238X200,
                      height: getVerticalSize(
                        238.00,
                      ),
                      width: getHorizontalSize(
                        200.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      345.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 53,
                      right: 24,
                    ),
                    child: Text(
                      "Congrats! Your offer has been accepted!",
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
                      368.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 29,
                      right: 24,
                    ),
                    child: Text(
                      "Your offer has been accepted by the seller for ${Constants.currency}170,000",
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
                  text: "Proceed to Checkout",
                  margin: getMargin(
                    left: 24,
                    top: 137,
                    right: 24,
                    bottom: 20,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LightCheckoutBlankScreen()),
                    );
                  },
                  variant: ButtonVariant.OutlineBlack9003f,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
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
