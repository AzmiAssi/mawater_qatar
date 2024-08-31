import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../accountsetupsuccessfuldialog_page/accountsetupsuccessfuldialog_page.dart';

class LightSetFingerprintScreen extends StatelessWidget {
  const LightSetFingerprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Set Your FingerPrint",
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
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: getHorizontalSize(
                  380.00,
                ),
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    85.70,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Text(
                  "Add a fingerprint to make your account\nmore secure.",
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
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    108.46,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: FadeInUp(
                  child: Image.asset(
                    ImageConstant.fingerprint,
                    height: getVerticalSize(
                      236.10,
                    ),
                    width: getHorizontalSize(
                      228.09,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  380.00,
                ),
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    107.44,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Text(
                  "Please put your finger on the fingerprint scanner to get started.",
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
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    24.00,
                  ),
                  top: getVerticalSize(
                    76.00,
                  ),
                  right: getHorizontalSize(
                    24.00,
                  ),
                  bottom: getVerticalSize(
                    48.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AccountsetupsuccessfuldialogPage();
                            });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          58.00,
                        ),
                        width: getHorizontalSize(
                          184.00,
                        ),
                        decoration: BoxDecoration(
                          color: isDark
                              ? ColorConstant.darkLine
                              : ColorConstant.gray100,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              29.00,
                            ),
                          ),
                        ),
                        child: Text(
                          "Skip",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                isDark ? Colors.white : ColorConstant.gray500,
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
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AccountsetupsuccessfuldialogPage();
                              });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            58.00,
                          ),
                          width: getHorizontalSize(
                            184.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                29.00,
                              ),
                            ),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: ColorConstant.gray5003f,
                            //     spreadRadius: getHorizontalSize(
                            //       5.00,
                            //     ),
                            //     blurRadius: getHorizontalSize(
                            //       7.00,
                            //     ),
                            //     offset: Offset(
                            //       0,
                            //       3,
                            //     ),
                            //   ),
                            // ],
                          ),
                          child: Text(
                            "Continue",
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
