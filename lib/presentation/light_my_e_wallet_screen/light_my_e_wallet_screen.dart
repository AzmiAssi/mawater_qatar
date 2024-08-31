import 'package:animate_do/animate_do.dart';
import 'package:mawater_qatar/presentation/light_top_up_amount_screen/light_top_up_amount_screen.dart';
import 'package:mawater_qatar/presentation/light_transaction_history_screen/light_transaction_history_screen.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../light_my_e_wallet_screen/widgets/listname_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightMyEWalletScreen extends StatelessWidget {
  const LightMyEWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      margin:
                          getMargin(left: 24, right: 24, top: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 5,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 4,
                                    bottom: 3,
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.appLogo,
                                    height: getVerticalSize(
                                      30.00,
                                    ),
                                    width: getHorizontalSize(
                                      30.00,
                                    ),
                                  ),
                                ),
                                HorizontalSpace(width: 16),
                                Padding(
                                  padding: getPadding(
                                    left: 0,
                                  ),
                                  child: Text(
                                    "My E-Wallet",
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
                          Padding(
                            padding: getPadding(
                              top: 3,
                              right: 3,
                              bottom: 2,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: CommonImageViewWithDarkOption(
                                    isDark: isDark,
                                    svgPath: ImageConstant.imgSearch,
                                    height: getVerticalSize(
                                      20.00,
                                    ),
                                    width: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                ),
                                HorizontalSpace(width: 26),
                                Padding(
                                  padding: getPadding(
                                    left: 0,
                                    bottom: 1,
                                  ),
                                  child: CommonImageViewWithDarkOption(
                                    isDark: isDark,
                                    svgPath: ImageConstant.icon,
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 24,
                        top: 33,
                        right: 24,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FadeInUp(
                            child: SizedBox(
                              height: getVerticalSize(
                                241.00,
                              ),
                              width: getHorizontalSize(
                                380.00,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          32.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.credit,
                                        height: getVerticalSize(
                                          221.00,
                                        ),
                                        width: getHorizontalSize(
                                          380.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: getMargin(
                                        left: 32,
                                        top: 32,
                                        right: 32,
                                        bottom: 37,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            32.00,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                margin: getMargin(
                                                  top: 4,
                                                  bottom: 2,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          right: 1,
                                                        ),
                                                        child: Text(
                                                          "andrew ainsley",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA700,
                                                            fontSize:
                                                                getFontSize(
                                                              20,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 11,
                                                      ),
                                                      child: Text(
                                                        "●●●● ●●●● ●●●● 3629",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          fontSize: getFontSize(
                                                            14,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  bottom: 20,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgAutolayouthorWhiteA700,
                                                  height: getVerticalSize(
                                                    32.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    114.00,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 26,
                                              right: 10,
                                            ),
                                            child: Text(
                                              "Your balance",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 10,
                                              bottom: 4,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "299,677 ${Constants.currency}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(
                                                      24,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              LightTopUpAmountScreen()),
                                                    );
                                                  },
                                                  child: Container(
                                                    width:
                                                        getHorizontalSize(120),
                                                    height: getVerticalSize(40),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SvgPicture.asset(
                                                            ImageConstant
                                                                .download),
                                                        HorizontalSpace(
                                                            width: 5),
                                                        const Text(
                                                          "Top up",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Urbanist',
                                                              color:
                                                                  Colors.black),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 27,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Transaction History",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        20,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 5,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LightTransactionHistoryScreen()),
                                      );
                                    },
                                    child: Text(
                                      "see all",
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
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                            ),
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return VerticalSpace(height: 16);
                              },
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return ListnameItemWidget(index: index);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
