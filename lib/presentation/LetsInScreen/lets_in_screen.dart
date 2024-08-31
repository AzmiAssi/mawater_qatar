import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mawater_qatar/translations/locale_keys.g.dart';
import '../../core/app_export.dart';
import '../light_sign_in_filled_form_screen/light_sign_in_filled_form_screen.dart';
import '../light_sign_up_blank_form_screen/light_sign_up_blank_form_screen.dart';

class LetsInScreen extends StatelessWidget {
  const LetsInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Padding(
                //   padding: EdgeInsets.only(
                //     left: getHorizontalSize(
                //       28.08,
                //     ),
                //     top: getVerticalSize(
                //       40.42,
                //     ),
                //     right: getHorizontalSize(
                //       28.08,
                //     ),
                //   ),
                //   child: SizedBox(
                //       height: getVerticalSize(
                //         15.81,
                //       ),
                //       width: getHorizontalSize(
                //         19.25,
                //       ),
                //       child: GestureDetector(
                //           onTap: () {
                //             Navigator.pop(context);
                //           },
                //           child: Icon(
                //             Icons.arrow_back,
                //             color: isDark ? Colors.white : Colors.black,
                //           ))),
                // ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        84.96,
                      ),
                      top: getVerticalSize(
                        47.27,
                      ),
                      right: getHorizontalSize(
                        84.96,
                      ),
                    ),
                    child: SizedBox(
                      height: getVerticalSize(
                        200.00,
                      ),
                      width: getHorizontalSize(
                        200.04,
                      ),
                      child: Image.asset(
                        ImageConstant.appLogo,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                FadeInUp(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              31.60,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: Text(
                            tr(LocaleKeys.letsyouIn),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: getFontSize(
                                48,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              34.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LightSignInFilledFormScreen()),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: getVerticalSize(
                                58.00,
                              ),
                              width: size.width,
                              decoration: BoxDecoration(
                                color: ColorConstant.gray500,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    29.00,
                                  ),
                                ),
                              ),
                              child: Text(
                                tr(LocaleKeys.signInWithPassword),
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
                      ),

                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              34.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  1.00,
                                ),
                                width: getHorizontalSize(
                                  155.00,
                                ),
                                margin: EdgeInsets.only(
                                  top: getVerticalSize(
                                    12.50,
                                  ),
                                  bottom: getVerticalSize(
                                    11.50,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray200,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                child: Text(
                                  tr(LocaleKeys.or),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: isDark
                                        ? Colors.white
                                        : ColorConstant.gray700,
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
                                  1.00,
                                ),
                                width: getHorizontalSize(
                                  155.00,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    12.50,
                                  ),
                                  bottom: getVerticalSize(
                                    11.50,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray200,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Align(
                      //   alignment: Alignment.center,
                      //   child: Padding(
                      //     padding: EdgeInsets.only(
                      //       left: getHorizontalSize(
                      //         24.00,
                      //       ),
                      //       top: getVerticalSize(
                      //         31.70,
                      //       ),
                      //       right: getHorizontalSize(
                      //         24.00,
                      //       ),
                      //       bottom: getVerticalSize(
                      //         48.21,
                      //       ),
                      //     ),
                      //     child: GestureDetector(
                      //       onTap: () {
                      //         Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) =>
                      //                   const LightSignUpBlankFormScreen()),
                      //         );
                      //       },
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         mainAxisSize: MainAxisSize.min,
                      //         children: [
                      //           Text(
                      //             tr(LocaleKeys.dontHaveAnAccount),
                      //             overflow: TextOverflow.ellipsis,
                      //             textAlign: TextAlign.right,
                      //             style: TextStyle(
                      //               color: ColorConstant.gray500,
                      //               fontSize: getFontSize(
                      //                 14,
                      //               ),
                      //               fontFamily: 'Urbanist',
                      //               fontWeight: FontWeight.w400,
                      //               letterSpacing: 0.20,
                      //             ),
                      //           ),
                      //           Padding(
                      //             padding: EdgeInsets.only(
                      //               left: getHorizontalSize(
                      //                 8.00,
                      //               ),
                      //             ),
                      //             child: Text(
                      //               tr(LocaleKeys.signUp),
                      //               overflow: TextOverflow.ellipsis,
                      //               textAlign: TextAlign.start,
                      //               style: TextStyle(
                      //                 color: ColorConstant.gray500,
                      //                 fontSize: getFontSize(
                      //                   14,
                      //                 ),
                      //                 fontFamily: 'Urbanist',
                      //                 fontWeight: FontWeight.w600,
                      //                 letterSpacing: 0.20,
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              34.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LightSignUpBlankFormScreen()),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: getVerticalSize(
                                58.00,
                              ),
                              width: size.width,
                              decoration: BoxDecoration(
                                color: ColorConstant.gray500,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    29.00,
                                  ),
                                ),
                              ),
                              child: Text(
                                tr(LocaleKeys.signUp),
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
