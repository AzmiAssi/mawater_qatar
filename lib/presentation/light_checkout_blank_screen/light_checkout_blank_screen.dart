import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/presentation/light_checkout_choose_payment_methods_screen/light_checkout_choose_payment_methods_screen.dart';
import 'package:mawater_qatar/presentation/light_checkout_choose_shipping_address_screen/light_checkout_choose_shipping_address_screen.dart';
import 'package:mawater_qatar/presentation/light_checkout_choose_shipping_methods_screen/light_checkout_choose_shipping_methods_screen.dart';
import 'package:mawater_qatar/widgets/back_btn.dart';
import 'package:mawater_qatar/widgets/custom_icon_button.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LightCheckoutBlankScreen extends StatelessWidget {
  const LightCheckoutBlankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              margin: getMargin(left: 24, right: 24, top: 24, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 4,
                      top: 2,
                      bottom: 2,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const BackBtn(),
                        Padding(
                          padding: getPadding(
                            left: 20,
                          ),
                          child: Text(
                            "Checkout",
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
                      bottom: 3,
                    ),
                    child: CommonImageViewWithDarkOption(
                      isDark: isDark,
                      svgPath: ImageConstant.icon,
                      height: getSize(
                        21.00,
                      ),
                      width: getSize(
                        21.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: getMargin(
                    top: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: double.infinity,
                          margin: getMargin(
                            top: 37,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  right: 24,
                                ),
                                child: Text(
                                  "Shipping Addres",
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
                              Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LightCheckoutChooseShippingAddressScreen()),
                                    );
                                  },
                                  child: Container(
                                    margin: getMargin(
                                      left: 24,
                                      top: 24,
                                      right: 24,
                                    ),
                                    decoration: BoxDecoration(
                                      color: isDark
                                          ? ColorConstant.darkTextField
                                          : ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 20,
                                            top: 20,
                                            bottom: 20,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: isDark
                                                      ? ColorConstant.darkLine
                                                      : ColorConstant
                                                          .black9001e1,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      26.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomIconButton(
                                                      height: 36,
                                                      width: 36,
                                                      margin: getMargin(
                                                        all: 8,
                                                      ),
                                                      variant: IconButtonVariant
                                                          .FillGray500,
                                                      shape: IconButtonShape
                                                          .CircleBorder18,
                                                      padding: IconButtonPadding
                                                          .PaddingAll9,
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .boldLocation,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              HorizontalSpace(width: 16),
                                              Container(
                                                margin: getMargin(
                                                  left: 0,
                                                  top: 3,
                                                  bottom: 4,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        right: 10,
                                                      ),
                                                      child: Text(
                                                        "Home",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 11,
                                                      ),
                                                      child: Text(
                                                        "61480 Sunbrook Park, PC 5679",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray700,
                                                          fontSize: getFontSize(
                                                            14,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                        Padding(
                                          padding: getPadding(
                                            top: 37,
                                            right: 23,
                                            bottom: 37,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.edit2,
                                            height: getSize(
                                              18.00,
                                            ),
                                            width: getSize(
                                              18.00,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 25,
                                  right: 24,
                                ),
                                child: Text(
                                  "Order",
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
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: getMargin(
                                    left: 24,
                                    top: 26,
                                    right: 24,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isDark
                                        ? ColorConstant.darkTextField
                                        : ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        32.00,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          102.00,
                                        ),
                                        width: getHorizontalSize(
                                          120.00,
                                        ),
                                        margin: getMargin(
                                          left: 20,
                                          top: 20,
                                          bottom: 20,
                                        ),
                                        child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: const EdgeInsets.all(0),
                                          color: ColorConstant.gray100,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                20.00,
                                              ),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  child: CommonImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage,
                                                    height: getVerticalSize(
                                                      102.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      120.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 16,
                                          top: 30,
                                          bottom: 29,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "BMW M5 Series",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 14,
                                                right: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    height: getSize(
                                                      16.00,
                                                    ),
                                                    width: getSize(
                                                      16.00,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          ColorConstant.gray200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          8.00,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 8,
                                                      top: 1,
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      "Silver",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray700,
                                                        fontSize: getFontSize(
                                                          12,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 12,
                                                right: 10,
                                              ),
                                              child: Text(
                                                "170,000 ${Constants.currency}",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
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
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 28,
                                  right: 24,
                                ),
                                child: Text(
                                  "Choose shipping",
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
                              Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LightCheckoutChooseShippingMethodsScreen()),
                                    );
                                  },
                                  child: Container(
                                    margin: getMargin(
                                      left: 24,
                                      top: 24,
                                      right: 24,
                                    ),
                                    decoration: BoxDecoration(
                                      color: isDark
                                          ? ColorConstant.darkTextField
                                          : ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          20.00,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 21,
                                            top: 24,
                                            bottom: 23,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  bottom: 1,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .chooseShipping,
                                                  height: getVerticalSize(
                                                    22.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    25.00,
                                                  ),
                                                ),
                                              ),
                                              HorizontalSpace(width: 16),
                                              Padding(
                                                padding: getPadding(
                                                  left: 0,
                                                  top: 1,
                                                ),
                                                child: Text(
                                                  "Choose Shipping",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
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
                                            top: 27,
                                            right: 28,
                                            bottom: 27,
                                          ),
                                          child: CommonImageViewWithDarkOption(
                                            isDark: isDark,
                                            isRtl: isRtl,
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getVerticalSize(
                                              14.00,
                                            ),
                                            width: getHorizontalSize(
                                              7.00,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: double.infinity,
                                  margin: getMargin(
                                    left: 24,
                                    top: 24,
                                    right: 24,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isDark
                                        ? ColorConstant.darkTextField
                                        : ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        16.00,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 27,
                                          right: 24,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "Amount",
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
                                            Text(
                                              "170,000 ${Constants.currency}",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 26,
                                          right: 24,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Text(
                                                "Shipping",
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
                                            Padding(
                                              padding: getPadding(
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "-",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 24,
                                          right: 24,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "Tax",
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
                                            Text(
                                              "1,000 ${Constants.currency}",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                        width: getHorizontalSize(
                                          332.00,
                                        ),
                                        margin: getMargin(
                                          left: 24,
                                          top: 22,
                                          right: 24,
                                        ),
                                      ),
                                      CustomDivider(isDark: isDark),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 22,
                                          right: 24,
                                          bottom: 25,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "Total",
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
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Text(
                                                "171,000 ${Constants.currency}",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w600,
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
                              Container(
                                width: double.infinity,
                                margin: getMargin(
                                  top: 28,
                                ),
                                decoration: BoxDecoration(
                                  color: isDark
                                      ? ColorConstant.darkBg
                                      : ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        24.00,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        24.00,
                                      ),
                                    ),
                                  ),
                                  border: Border.all(
                                    color: isDark
                                        ? ColorConstant.darkLine
                                        : ColorConstant.gray101,
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const LightCheckoutChoosePaymentMethodsScreen()));
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 24,
                                          top: 24,
                                          right: 24,
                                          bottom: 36,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray500,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              29.00,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: getMargin(
                                                top: 18,
                                                bottom: 18,
                                              ),
                                              decoration: const BoxDecoration(),
                                              child: Text(
                                                "Continue to Payment",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 18,
                                                top: 24,
                                                bottom: 24,
                                              ),
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.arrowRight,
                                                height: getVerticalSize(
                                                  20.00,
                                                ),
                                                width: getHorizontalSize(
                                                  20.00,
                                                ),
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
                      ),
                    ],
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
