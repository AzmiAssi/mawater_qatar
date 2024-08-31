import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightSettingsHelpCenterContactUsScreen extends StatelessWidget {
  const LightSettingsHelpCenterContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width,
                  margin: getMargin(
                    left: 24,
                    top: 33,
                    right: 24,
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
                                "Help Center",
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
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 33,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: getMargin(
                          top: 3,
                          bottom: 2,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 79,
                                right: 78,
                              ),
                              child: Text(
                                "lbl_faq",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.gray502,
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                2.00,
                              ),
                              width: getHorizontalSize(
                                190.00,
                              ),
                              margin: getMargin(
                                top: 15,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray201,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 3,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 51,
                                right: 51,
                              ),
                              child: Text(
                                "lbl_contact_us",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.gray500,
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                4.00,
                              ),
                              width: getHorizontalSize(
                                190.00,
                              ),
                              margin: getMargin(
                                top: 15,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray500,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
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
                      Padding(
                        padding: getPadding(
                          left: 26,
                          top: 26,
                          bottom: 25,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getSize(
                            20.00,
                          ),
                          width: getSize(
                            20.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 18,
                          top: 26,
                          bottom: 27,
                        ),
                        child: Text(
                          "Customer Service",
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
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
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
                      Padding(
                        padding: getPadding(
                          left: 27,
                          top: 27,
                          bottom: 26,
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
                      Padding(
                        padding: getPadding(
                          left: 18,
                          top: 28,
                          bottom: 24,
                        ),
                        child: Text(
                          "lbl_whatsapp",
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
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
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
                      Padding(
                        padding: getPadding(
                          left: 26,
                          top: 26,
                          bottom: 26,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getSize(
                            20.00,
                          ),
                          width: getSize(
                            20.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 18,
                          top: 26,
                          bottom: 27,
                        ),
                        child: Text(
                          "Website",
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
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
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
                      Padding(
                        padding: getPadding(
                          left: 26,
                          top: 26,
                          bottom: 26,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getVerticalSize(
                            19.00,
                          ),
                          width: getHorizontalSize(
                            20.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 18,
                          top: 26,
                          bottom: 27,
                        ),
                        child: Text(
                          "lbl_facebook",
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
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
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
                      Padding(
                        padding: getPadding(
                          left: 26,
                          top: 28,
                          bottom: 28,
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
                          left: 18,
                          top: 26,
                          bottom: 27,
                        ),
                        child: Text(
                          "lbl_twitter",
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
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                    bottom: 169,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
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
                      Padding(
                        padding: getPadding(
                          left: 27,
                          top: 26,
                          bottom: 26,
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
                      Padding(
                        padding: getPadding(
                          left: 18,
                          top: 29,
                          bottom: 24,
                        ),
                        child: Text(
                          "lbl_instagram",
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
      ),
    );
  }
}
