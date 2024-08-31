import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class LightCheckoutFilledScreen extends StatelessWidget {
  const LightCheckoutFilledScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                top: 33,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: size.width,
                    margin: getMargin(
                      left: 24,
                      right: 24,
                    ),
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
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                  bottom: 3,
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
                                  "lbl_checkout",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
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
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        top: 37,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
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
                              "msg_shipping_addres",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray900,
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
                                top: 24,
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
                                    color:
                                        ColorConstant.gray500.withOpacity(0.2),
                                    spreadRadius: getHorizontalSize(
                                      0.00,
                                    ),
                                    blurRadius: getHorizontalSize(
                                      10.00,
                                    ),
                                    offset: const Offset(
                                      0,
                                      4,
                                    ),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                            color: ColorConstant.black9001e1,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                26.00,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
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
                                                shape: IconButtonShape
                                                    .CircleBorder18,
                                                padding: IconButtonPadding
                                                    .PaddingAll9,
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imageNotFound,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 16,
                                            top: 3,
                                            bottom: 4,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
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
                                                  top: 11,
                                                ),
                                                child: Text(
                                                  "msg_61480_sunbrook",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray700,
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
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 37,
                                      right: 23,
                                      bottom: 37,
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imageNotFound,
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
                                color: ColorConstant.gray900,
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
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    32.00,
                                  ),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        ColorConstant.gray500.withOpacity(0.2),
                                    spreadRadius: getHorizontalSize(
                                      0.00,
                                    ),
                                    blurRadius: getHorizontalSize(
                                      10.00,
                                    ),
                                    offset: const Offset(
                                      0,
                                      4,
                                    ),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                                  color: ColorConstant.gray200,
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
                                                  "lbl_silver",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray700,
                                                    fontSize: getFontSize(
                                                      12,
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
                                        Padding(
                                          padding: getPadding(
                                            top: 12,
                                            right: 10,
                                          ),
                                          child: Text(
                                            "lbl_170_000",
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
                              "lbl_choose_shipping",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray900,
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
                                top: 24,
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
                                    color:
                                        ColorConstant.gray500.withOpacity(0.2),
                                    spreadRadius: getHorizontalSize(
                                      0.00,
                                    ),
                                    blurRadius: getHorizontalSize(
                                      10.00,
                                    ),
                                    offset: const Offset(
                                      0,
                                      4,
                                    ),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomIconButton(
                                    height: 52,
                                    width: 52,
                                    margin: getMargin(
                                      left: 20,
                                      top: 20,
                                      bottom: 20,
                                    ),
                                    shape: IconButtonShape.CircleBorder26,
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imageNotFound,
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 16,
                                      top: 23,
                                      bottom: 24,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
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
                                            "Train",
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
                                            top: 11,
                                          ),
                                          child: Text(
                                            "msg_est_arrival_d",
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
                                  Padding(
                                    padding: getPadding(
                                      left: 45,
                                      top: 34,
                                      bottom: 34,
                                    ),
                                    child: Text(
                                      "lbl_250",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
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
                                      left: 21,
                                      top: 37,
                                      bottom: 37,
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imageNotFound,
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
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        ColorConstant.gray500.withOpacity(0.2),
                                    spreadRadius: getHorizontalSize(
                                      0.00,
                                    ),
                                    blurRadius: getHorizontalSize(
                                      10.00,
                                    ),
                                    offset: const Offset(
                                      0,
                                      4,
                                    ),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                            "lbl_amount",
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
                                          "lbl_170_000",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray801,
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
                                            top: 2,
                                          ),
                                          child: Text(
                                            "lbl_shipping",
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
                                            "lbl_250",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray801,
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
                                            "lbl_tax",
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
                                          "lbl_1_000",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray801,
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
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray201,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 24,
                                      top: 22,
                                      right: 24,
                                      bottom: 26,
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
                                            "lbl_total",
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
                                          "lbl_171_250",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray801,
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
                              color: ColorConstant.whiteA700,
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
                                color: ColorConstant.gray101,
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
                                Container(
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
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.gray500
                                            .withOpacity(0.2),
                                        spreadRadius: getHorizontalSize(
                                          0.00,
                                        ),
                                        blurRadius: getHorizontalSize(
                                          10.00,
                                        ),
                                        offset: const Offset(
                                          4,
                                          8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                            color: ColorConstant.whiteA700,
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
                                          imagePath:
                                              ImageConstant.imageNotFound,
                                          height: getVerticalSize(
                                            10.00,
                                          ),
                                          width: getHorizontalSize(
                                            15.00,
                                          ),
                                        ),
                                      ),
                                    ],
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
      ),
    );
  }
}
