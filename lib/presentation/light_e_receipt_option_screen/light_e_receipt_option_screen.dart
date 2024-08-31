import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LightEReceiptOptionScreen extends StatelessWidget {
  const LightEReceiptOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                left: 24,
                top: 33,
                right: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        right: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 5,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
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
                                    "E-Receipt",
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
                  ),
                  Container(
                    height: getVerticalSize(
                      876.00,
                    ),
                    width: getHorizontalSize(
                      380.00,
                    ),
                    margin: getMargin(
                      top: 1,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: getMargin(
                              top: 10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 35,
                                    right: 35,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          112.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          bottom: 25,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          112.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 3,
                                          bottom: 25,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          6.00,
                                        ),
                                        margin: getMargin(
                                          left: 4,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 6,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          6.00,
                                        ),
                                        margin: getMargin(
                                          left: 6,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 6,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 2,
                                          bottom: 11,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                width: getHorizontalSize(
                                                  38.00,
                                                ),
                                                margin: getMargin(
                                                  left: 4,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      height: getVerticalSize(
                                                        100.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        9.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black903,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        100.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        3.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black903,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        100.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        3.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black903,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        100.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        12.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black903,
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
                                                  top: 13,
                                                  right: 1,
                                                ),
                                                child: Text(
                                                  "273628",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black903,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 6,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 9,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 3,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 12,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          112.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 5,
                                          bottom: 25,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          112.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 3,
                                          bottom: 25,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 5,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 9,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 6,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 6,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 9,
                                          bottom: 11,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                width: getHorizontalSize(
                                                  55.00,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      height: getVerticalSize(
                                                        100.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        3.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black903,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        100.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        3.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black903,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        100.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        9.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black903,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        100.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        3.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black903,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        100.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        9.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black903,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 2,
                                                top: 13,
                                                right: 10,
                                              ),
                                              child: Text(
                                                "lbl_837279",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.black903,
                                                  fontSize: getFontSize(
                                                    12,
                                                  ),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 3,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          9.00,
                                        ),
                                        margin: getMargin(
                                          left: 6,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          100.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 3,
                                          bottom: 37,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          112.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 5,
                                          bottom: 25,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          112.00,
                                        ),
                                        width: getHorizontalSize(
                                          3.00,
                                        ),
                                        margin: getMargin(
                                          left: 3,
                                          bottom: 25,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black903,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: getMargin(
                                      top: 20,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  20.00,
                                                ),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        20.00,
                                                      ),
                                                    ),
                                                    child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage,
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
                                            top: 47,
                                            bottom: 46,
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
                                                  color: ColorConstant.gray900,
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                      height: getSize(
                                                        16.00,
                                                      ),
                                                      width: getSize(
                                                        16.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .gray200,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray700,
                                                          fontSize: getFontSize(
                                                            12,
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
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: double.infinity,
                                    margin: getMargin(
                                      top: 20,
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
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                              Padding(
                                                padding: getPadding(
                                                  bottom: 1,
                                                ),
                                                child: Text(
                                                  "lbl_250",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray801,
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
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: double.infinity,
                                    margin: getMargin(
                                      top: 20,
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
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                  top: 2,
                                                ),
                                                child: Text(
                                                  "lbl_payment_methods",
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
                                              Padding(
                                                padding: getPadding(
                                                  bottom: 1,
                                                ),
                                                child: Text(
                                                  "lbl_e_wallet",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray801,
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
                                            top: 25,
                                            right: 24,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  bottom: 3,
                                                ),
                                                child: Text(
                                                  "Date",
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
                                              Padding(
                                                padding: getPadding(
                                                  left: 109,
                                                  top: 1,
                                                ),
                                                child: Text(
                                                  "Dec 15, 2024 | 10:00:27 AM",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray801,
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
                                            top: 20,
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
                                                  top: 4,
                                                  bottom: 3,
                                                ),
                                                child: Text(
                                                  "lbl_transaction_id",
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
                                              Padding(
                                                padding: getPadding(
                                                  top: 2,
                                                  right: 3,
                                                  bottom: 2,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 1,
                                                      ),
                                                      child: Text(
                                                        "SK7263727399",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray801,
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 11,
                                                        bottom: 1,
                                                      ),
                                                      child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imageNotFound,
                                                        height: getVerticalSize(
                                                          16.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          13.00,
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
                                            left: 24,
                                            top: 20,
                                            right: 24,
                                            bottom: 24,
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
                                                  top: 5,
                                                  bottom: 4,
                                                ),
                                                child: Text(
                                                  "lbl_status",
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
                                              CustomButton(
                                                isDark: isDark,
                                                width: 40,
                                                text: "lbl_paid",
                                                variant:
                                                    ButtonVariant.FillGray500,
                                                fontStyle: ButtonFontStyle
                                                    .UrbanistSemiBold10WhiteA700,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: getMargin(
                                      top: 20,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 24,
                                            top: 25,
                                            bottom: 25,
                                          ),
                                          child: Text(
                                            "Category",
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
                                            left: 13,
                                            top: 24,
                                            bottom: 24,
                                          ),
                                          child: Text(
                                            "Orders",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
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
                                        Padding(
                                          padding: getPadding(
                                            left: 16,
                                            top: 32,
                                            bottom: 32,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownGray9005X11,
                                            height: getVerticalSize(
                                              5.00,
                                            ),
                                            width: getHorizontalSize(
                                              11.00,
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
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: getHorizontalSize(
                              211.00,
                            ),
                            margin: getMargin(
                              left: 10,
                              right: 2,
                              bottom: 10,
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
                                  color: ColorConstant.black90014,
                                  spreadRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  offset: const Offset(
                                    0,
                                    20,
                                  ),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 22,
                                    top: 22,
                                    right: 22,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 2,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imageNotFound,
                                          height: getSize(
                                            15.00,
                                          ),
                                          width: getSize(
                                            15.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 14,
                                          top: 2,
                                        ),
                                        child: Text(
                                          "Share E-Receipt",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              14,
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
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: getHorizontalSize(
                                    163.00,
                                  ),
                                  margin: getMargin(
                                    left: 20,
                                    top: 16,
                                    right: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray201,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 20,
                                      top: 17,
                                      right: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 2,
                                          ),
                                          child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imageNotFound,
                                            height: getVerticalSize(
                                              15.00,
                                            ),
                                            width: getHorizontalSize(
                                              13.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 14,
                                            top: 2,
                                          ),
                                          child: Text(
                                            "Download E-Receipt",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
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
                                ),
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: getHorizontalSize(
                                    163.00,
                                  ),
                                  margin: getMargin(
                                    left: 20,
                                    top: 16,
                                    right: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray201,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 23,
                                    top: 17,
                                    right: 23,
                                    bottom: 22,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        imagePath: ImageConstant.imageNotFound,
                                        height: getVerticalSize(
                                          15.00,
                                        ),
                                        width: getHorizontalSize(
                                          13.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 15,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "Print",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              14,
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
                      ],
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
