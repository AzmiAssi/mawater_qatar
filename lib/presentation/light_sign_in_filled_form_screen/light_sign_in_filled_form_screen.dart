// ignore_for_file: unrelated_type_equality_checks, use_build_context_synchronously

import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/presentation/user_exist_page_dialog/user_exist_page.dart';
import '../../core/app_export.dart';
import '../homePage.dart';
import '../light_forgot_password_method_screen/light_forgot_password_method_screen.dart';
import '../light_sign_up_blank_form_screen/light_sign_up_blank_form_screen.dart';

class LightSignInFilledFormScreen extends StatefulWidget {
  const LightSignInFilledFormScreen({super.key});

  @override
  State<LightSignInFilledFormScreen> createState() =>
      _LightSignInFilledFormScreenState();
}

class _LightSignInFilledFormScreenState
    extends State<LightSignInFilledFormScreen> {
  bool obscure = true;
  bool checkboxVal = false;
  bool loginWait = false;
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      28.08,
                    ),
                    top: getVerticalSize(
                      40.42,
                    ),
                    right: getHorizontalSize(
                      28.08,
                    ),
                  ),
                  child: SizedBox(
                      height: getVerticalSize(
                        15.81,
                      ),
                      width: getHorizontalSize(
                        19.25,
                      ),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: isDark ? Colors.white : Colors.black,
                          ))),
                ),
                FadeInUp(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                55.73,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: Text(
                              "Login to your\nAccount",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
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
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            0.00,
                          ),
                          top: getVerticalSize(
                            60.00,
                          ),
                          right: getHorizontalSize(
                            0.00,
                          ),
                        ),
                        child: SizedBox(
                          height: getVerticalSize(
                            56.00,
                          ),
                          width: getHorizontalSize(
                            380.00,
                          ),
                          child: TextFormField(
                            controller: phoneController,
                            focusNode: FocusNode(),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(
                                fontSize: getFontSize(
                                  14.0,
                                ),
                                color: ColorConstant.gray400,
                              ),
                              prefixIcon: SizedBox(
                                width: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left:
                                            context.locale == Constants.engLocal
                                                ? getHorizontalSize(
                                                    20.00,
                                                  )
                                                : getHorizontalSize(14),
                                        right:
                                            context.locale == Constants.arLocal
                                                ? getHorizontalSize(
                                                    20.00,
                                                  )
                                                : getHorizontalSize(14),
                                        top: getVerticalSize(
                                          21.67,
                                        ),
                                        bottom: getVerticalSize(
                                          21.66,
                                        ),
                                      ),
                                      child: SizedBox(
                                        height: getSize(
                                          16.67,
                                        ),
                                        width: getSize(
                                          14.17,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.blackCall,
                                          fit: BoxFit.fill,
                                          color: ColorConstant.gray500,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "+974",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: ColorConstant.gray500,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              prefixIconConstraints: BoxConstraints(
                                minWidth: getSize(
                                  16.67,
                                ),
                                minHeight: getSize(
                                  16.67,
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  18.21,
                                ),
                                right: getHorizontalSize(
                                  30.00,
                                ),
                                bottom: getVerticalSize(
                                  18.20,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              fontSize: getFontSize(
                                14.0,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            24.00,
                          ),
                          top: getVerticalSize(
                            20.00,
                          ),
                          right: getHorizontalSize(
                            24.00,
                          ),
                        ),
                        child: SizedBox(
                          height: getVerticalSize(
                            60.00,
                          ),
                          width: getHorizontalSize(
                            380.00,
                          ),
                          child: TextFormField(
                            focusNode: FocusNode(),
                            obscuringCharacter: '●',
                            controller: passwordController,
                            obscureText: obscure,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontSize: getFontSize(
                                  14.0,
                                ),
                                color: ColorConstant.gray400,
                              ),
                              prefixIcon: Container(
                                margin: EdgeInsets.only(
                                  left: context.locale == Constants.engLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(14),
                                  right: context.locale == Constants.arLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(14),
                                  top: getVerticalSize(
                                    21.67,
                                  ),
                                  bottom: getVerticalSize(
                                    21.66,
                                  ),
                                ),
                                child: SizedBox(
                                  height: getSize(
                                    16.67,
                                  ),
                                  width: getSize(
                                    14.17,
                                  ),
                                  child: isDark
                                      ? SvgPicture.asset(
                                          ImageConstant.lock,
                                          fit: BoxFit.fill,
                                          color: ColorConstant.gray500,
                                        )
                                      : SvgPicture.asset(
                                          ImageConstant.lock,
                                          fit: BoxFit.fill,
                                          color: ColorConstant.gray500,
                                        ),
                                ),
                              ),
                              prefixIconConstraints: BoxConstraints(
                                minWidth: getSize(
                                  16.67,
                                ),
                                minHeight: getSize(
                                  16.67,
                                ),
                              ),
                              suffixIcon: Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                  right: getHorizontalSize(
                                    21.66,
                                  ),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscure = !obscure;
                                    });
                                  },
                                  child: SizedBox(
                                    height: getSize(
                                      20.17,
                                    ),
                                    width: getSize(
                                      22.67,
                                    ),
                                    child: obscure
                                        ? SvgPicture.asset(
                                            ImageConstant.visibilityOff,
                                            color: ColorConstant.gray500,
                                          )
                                        : SvgPicture.asset(
                                            ImageConstant.visibilityOn,
                                            color: ColorConstant.gray500,
                                          ),
                                  ),
                                ),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                top: getVerticalSize(
                                  20.20,
                                ),
                                bottom: getVerticalSize(
                                  20.21,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              fontSize: getFontSize(
                                14.0,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          width: getHorizontalSize(
                            140.00,
                          ),
                          child: Row(
                            children: [
                              Checkbox(
                                activeColor: ColorConstant.gray500,
                                side: BorderSide(color: ColorConstant.gray500),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: ColorConstant.gray500,
                                    width: getHorizontalSize(
                                      3.00,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      5.00,
                                    ),
                                  ),
                                ),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: checkboxVal,
                                onChanged: (value) {
                                  setState(() {
                                    checkboxVal = !checkboxVal;
                                  });
                                },
                              ),
                              Expanded(
                                child: Text(
                                  "Remember me",
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
                      ),

                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              24.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: loginWait
                                ? null
                                : () async {
                                    setState(() {
                                      loginWait = true;
                                    });
                                    var result =
                                        await userController.checkUserLogin(
                                            phone: phoneController.text.trim(),
                                            pass:
                                                passwordController.text.trim());
                                    if (result == 1) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()),
                                      );
                                      setState(() {
                                        loginWait = false;
                                      });
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlerDialogMessages(
                                              description:
                                                  "Your phone number or password is not correct please try again !!",
                                              title: "Login Failed",
                                            );
                                          });
                                      setState(() {
                                        loginWait = false;
                                      });
                                    }
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Sign in",
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
                                  loginWait
                                      ? const SizedBox(
                                          width: 40,
                                        )
                                      : const SizedBox(),
                                  loginWait
                                      ? const SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                        )
                                      : const SizedBox()
                                ],
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
                              24.00,
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
                                        const LightForgotPasswordMethodScreen()),
                              );
                            },
                            child: Text(
                              "Forgot the password?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.20,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Align(
                      //   alignment: Alignment.center,
                      //   child: Padding(
                      //     padding: EdgeInsets.only(
                      //      left: getHorizontalSize(
                      //         0.00,
                      //       ),
                      //       top: getVerticalSize(
                      //         40.75,
                      //       ),
                      //       right: getHorizontalSize(
                      //         0.00,
                      //       ),
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       mainAxisSize: MainAxisSize.max,
                      //       children: [
                      //         Container(
                      //           height: getVerticalSize(
                      //             1.00,
                      //           ),
                      //           width: getHorizontalSize(
                      //             96.00,
                      //           ),
                      //           margin: EdgeInsets.only(
                      //             top: getVerticalSize(
                      //               12.50,
                      //             ),
                      //             bottom: getVerticalSize(
                      //               11.50,
                      //             ),
                      //           ),
                      //           decoration: BoxDecoration(
                      //             color: ColorConstant.gray200,
                      //           ),
                      //         ),
                      //         Padding(
                      //           padding: EdgeInsets.only(
                      //             left: context.locale==Constants.engLocal? getHorizontalSize(
                      //                       16.00,
                      //                     ):getHorizontalSize(0),
                      //                     right: context.locale==Constants.arLocal? getHorizontalSize(
                      //                       16.00,
                      //                     ):getHorizontalSize(0),
                      //           ),
                      //           child: Text(
                      //             "or continue with",
                      //             overflow: TextOverflow.ellipsis,
                      //             textAlign: TextAlign.center,
                      //             style: TextStyle(
                      //               color:isDark?Colors.white: ColorConstant.gray700,
                      //               fontSize: getFontSize(
                      //                 18,
                      //               ),
                      //               fontFamily: 'Urbanist',
                      //               fontWeight: FontWeight.w600,
                      //               letterSpacing: 0.20,
                      //             ),
                      //           ),
                      //         ),
                      //         Container(
                      //           height: getVerticalSize(
                      //             1.00,
                      //           ),
                      //           width: getHorizontalSize(
                      //             96.00,
                      //           ),
                      //           margin: EdgeInsets.only(
                      //            left: context.locale==Constants.engLocal? getHorizontalSize(
                      //                       16.00,
                      //                     ):getHorizontalSize(0),
                      //                     right: context.locale==Constants.arLocal? getHorizontalSize(
                      //                       16.00,
                      //                     ):getHorizontalSize(0),
                      //             top: getVerticalSize(
                      //               12.50,
                      //             ),
                      //             bottom: getVerticalSize(
                      //               11.50,
                      //             ),
                      //           ),
                      //           decoration: BoxDecoration(
                      //             color: ColorConstant.gray200,
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      //   Align(
                      //   alignment: Alignment.center,
                      //   child: Padding(
                      //     padding: EdgeInsets.only(
                      //       left: getHorizontalSize(
                      //         40.00,
                      //       ),
                      //       top: getVerticalSize(
                      //         30.00,
                      //       ),
                      //       right: getHorizontalSize(
                      //         40.00,
                      //       ),
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       mainAxisSize: MainAxisSize.max,
                      //       children: [
                      //         Container(
                      //           width: getHorizontalSize(88),
                      //           height: getVerticalSize(60),
                      //           padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(18),
                      //           vertical: getVerticalSize(18)),
                      //           decoration: BoxDecoration(
                      //             color: isDark?ColorConstant.darkTextField:Colors.transparent,
                      //             borderRadius: BorderRadius.circular(16),
                      //             border: Border.all(color:isDark?ColorConstant.darkLine: ColorConstant.gray200)
                      //           ),

                      //           child: Image.asset(ImageConstant.facebook),
                      //         ),

                      //       Container(
                      //           width: getHorizontalSize(88),
                      //           height: getVerticalSize(60),
                      //           padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(18),
                      //           vertical: getVerticalSize(18)),
                      //           decoration: BoxDecoration(
                      //             color: isDark?ColorConstant.darkTextField:Colors.transparent,
                      //             borderRadius: BorderRadius.circular(16),
                      //             border: Border.all(color:isDark?ColorConstant.darkLine: ColorConstant.gray200)
                      //           ),

                      //           child: Image.asset(ImageConstant.google),
                      //         ),

                      //          Container(
                      //           width: getHorizontalSize(88),
                      //           height: getVerticalSize(60),
                      //           padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(18),
                      //           vertical: getVerticalSize(18)),
                      //           decoration: BoxDecoration(
                      //             color: isDark?ColorConstant.darkTextField:Colors.transparent,
                      //             borderRadius: BorderRadius.circular(16),
                      //             border: Border.all(color:isDark?ColorConstant.darkLine: ColorConstant.gray200)
                      //           ),

                      //           child: Image.asset(ImageConstant.apple
                      //           ,color: isDark?ColorConstant.whiteA700:Colors.black,
                      //           ),
                      //         ),

                      //       ],
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
                              47.95,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                            bottom: getVerticalSize(
                              48.21,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LightSignUpBlankFormScreen()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Don’t have an account?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      8.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Sign up",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.gray500,
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
