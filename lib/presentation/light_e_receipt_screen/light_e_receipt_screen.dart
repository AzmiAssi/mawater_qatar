import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/presentation/homePage.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';

class LightEReceiptScreen extends StatelessWidget {
  const LightEReceiptScreen({super.key});

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
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()),
                                        (Route<dynamic> route) => false);
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: isDark ? Colors.white : Colors.black,
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
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 33,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: getVerticalSize(
                                                100.00,
                                              ),
                                              width: getHorizontalSize(
                                                9.00,
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
                                              decoration: BoxDecoration(
                                                color: ColorConstant.black903,
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
                                                color: ColorConstant.black903,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        width: getHorizontalSize(
                                          55.00,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: getVerticalSize(
                                                100.00,
                                              ),
                                              width: getHorizontalSize(
                                                3.00,
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
                                              decoration: BoxDecoration(
                                                color: ColorConstant.black903,
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
                              color: isDark
                                  ? ColorConstant.darkTextField
                                  : ColorConstant.whiteA700,
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
                                    color: isDark
                                        ? ColorConstant.darkLine
                                        : ColorConstant.gray100,
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
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                20.00,
                                              ),
                                            ),
                                            child: CommonImageView(
                                              imagePath: ImageConstant.imgImage,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                            HorizontalSpace(width: 8),
                                            Padding(
                                              padding: getPadding(
                                                left: 0,
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "Silver",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray700,
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
                              color: isDark
                                  ? ColorConstant.darkTextField
                                  : ColorConstant.whiteA700,
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
                                          top: 2,
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
                                          "250 ${Constants.currency}",
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
                                      Text(
                                        "171,250 ${Constants.currency}",
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
                              color: isDark
                                  ? ColorConstant.darkTextField
                                  : ColorConstant.whiteA700,
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
                                          top: 2,
                                        ),
                                        child: Text(
                                          "Payment Methods",
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
                                          "e wallet",
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
                                    top: 25,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          left: 109,
                                          top: 1,
                                        ),
                                        child: Text(
                                          "Dec 15, 2024 | 10:00:27 AM",
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
                                          "Transaction",
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
                                          top: 2,
                                          right: 3,
                                          bottom: 2,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Text(
                                                "SK7263727399",
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
                                            Padding(
                                              padding: getPadding(
                                                left: 11,
                                                bottom: 1,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant.copy,
                                                height: getVerticalSize(
                                                  16.00,
                                                ),
                                                width: getHorizontalSize(
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
                                          "status",
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
                                      CustomButton(
                                        isDark: isDark,
                                        width: 40,
                                        text: "paid",
                                        variant: ButtonVariant.FillGray500,
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
