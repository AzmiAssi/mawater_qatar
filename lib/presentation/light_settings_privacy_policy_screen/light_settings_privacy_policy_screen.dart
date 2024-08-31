import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightSettingsPrivacyPolicyScreen extends StatelessWidget {
  const LightSettingsPrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                          "Privacy Policy",
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
                    left: 24,
                    top: 37,
                    right: 24,
                  ),
                  child: Text(
                    "1. Types of Data We Collect",
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
                    width: getHorizontalSize(
                      376.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 28,
                      right: 24,
                    ),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray801,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 30,
                    right: 24,
                  ),
                  child: Text(
                    "2. Use of Your Personal Data",
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
                    width: getHorizontalSize(
                      380.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 30,
                      right: 24,
                    ),
                    child: Text(
                      "msg_magna_etiam_tem",
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray801,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 30,
                    right: 24,
                  ),
                  child: Text(
                    "3. Disclosure of Your Personal Data",
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
                    width: getHorizontalSize(
                      375.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 30,
                      right: 24,
                    ),
                    child: Text(
                      "msg_consequat_id_po",
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray801,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.20,
                      ),
                    ),
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
