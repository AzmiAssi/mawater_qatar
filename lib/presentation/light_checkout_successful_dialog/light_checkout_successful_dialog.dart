import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/presentation/light_e_receipt_screen/light_e_receipt_screen.dart';
import 'package:mawater_qatar/presentation/light_my_orders_active_track_order_screen/light_my_orders_active_track_order_screen.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LightCheckoutSuccessfulDialog extends StatelessWidget {
  const LightCheckoutSuccessfulDialog({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            margin: getMargin(
              left: 44,
              top: 20,
              right: 44,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  40.00,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: getPadding(
                      left: 32,
                      top: 40,
                      right: 32,
                    ),
                    child: Image.asset(ImageConstant.paymentSucessful)),
                Padding(
                  padding: getPadding(
                    left: 32,
                    top: 34,
                    right: 32,
                  ),
                  child: Text(
                    "Order Successfull",
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
                Padding(
                  padding: getPadding(
                    left: 0,
                    top: 23,
                    right: 0,
                  ),
                  child: Text(
                    "You have successfully made order",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: getFontSize(
                        16,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: size.width,
                  text: "View Order",
                  margin: getMargin(
                    left: 0,
                    top: 32,
                    right: 0,
                  ),
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) =>
                                const LightMyOrdersActiveTrackOrderScreen()),
                        (Route<dynamic> route) => false);
                  },
                  variant: ButtonVariant.FillGray500,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll21,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                ),
                CustomButton(
                  isDark: isDark,
                  width: size.width,
                  text: "View E-Receipt",
                  margin: getMargin(
                    left: 0,
                    top: 12,
                    right: 0,
                    bottom: 20,
                  ),
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LightEReceiptScreen()),
                        (Route<dynamic> route) => false);
                  },
                  variant: ButtonVariant.FillGray200,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
