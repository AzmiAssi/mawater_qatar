import '../light_top_up_e_wallet_screen/widgets/listprice_one_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LightTopUpEWalletScreen extends StatelessWidget {
  const LightTopUpEWalletScreen({super.key});

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width,
                  margin: getMargin(
                    left: 28,
                    top: 38,
                    right: 28,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 6,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getVerticalSize(
                            15.00,
                          ),
                          width: getHorizontalSize(
                            19.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                        ),
                        child: Text(
                          "lbl_top_up_e_wallet",
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
                      top: 38,
                      right: 24,
                    ),
                    child: Text(
                      "msg_enter_the_amoun",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          28.00,
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
                            left: 92,
                            top: 37,
                            right: 92,
                            bottom: 36,
                          ),
                          child: Text(
                            "lbl_100_000",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                48,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const ListpriceOneItemWidget();
                      },
                    ),
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: 380,
                  text: "Continue",
                  margin: getMargin(
                    left: 24,
                    top: 32,
                    right: 24,
                    bottom: 20,
                  ),
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
