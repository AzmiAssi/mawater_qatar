import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/app_export.dart';
import '../resetpasswordsuccessfuldialog_page/resetpasswordsuccessfuldialog_page.dart';

class LightCreateNewPasswordScreen extends StatefulWidget {
  const LightCreateNewPasswordScreen({super.key});

  @override
  State<LightCreateNewPasswordScreen> createState() =>
      _LightCreateNewPasswordScreenState();
}

class _LightCreateNewPasswordScreenState
    extends State<LightCreateNewPasswordScreen> {
  bool obscure1 = true;
  bool obscure2 = true;

  bool checkboxVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Create New Password",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
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
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    80.70,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: SizedBox(
                  height: getVerticalSize(
                    250.00,
                  ),
                  width: getHorizontalSize(
                    328.59,
                  ),
                  child: Image.asset(
                    ImageConstant.createNewPassword,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    71.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Text(
                  "Create Your New Password",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: getFontSize(
                      18,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
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
                    24.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
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
                    obscuringCharacter: '●',
                    obscureText: obscure1,
                    focusNode: FocusNode(),
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
                          left: getHorizontalSize(
                            22.92,
                          ),
                          top: getVerticalSize(
                            21.67,
                          ),
                          right: getHorizontalSize(
                            14.91,
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
                            ImageConstant.lock,
                            fit: BoxFit.fill,
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
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscure1 = !obscure1;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              30.00,
                            ),
                            top: getVerticalSize(
                              20.92,
                            ),
                            right: getHorizontalSize(
                              21.66,
                            ),
                            bottom: getVerticalSize(
                              20.91,
                            ),
                          ),
                          child: SizedBox(
                            height: getSize(
                              20.17,
                            ),
                            width: getSize(
                              22.67,
                            ),
                            child: SvgPicture.asset(
                              obscure1
                                  ? ImageConstant.visibilityOff
                                  : ImageConstant.visibilityOn,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      suffixIconConstraints: BoxConstraints(
                        minWidth: getSize(
                          14.17,
                        ),
                        minHeight: getSize(
                          14.17,
                        ),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        top: getVerticalSize(
                          20.21,
                        ),
                        bottom: getVerticalSize(
                          20.20,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: ColorConstant.gray900,
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
                    10.00,
                  ),
                  top: getVerticalSize(
                    24.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
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
                    obscureText: obscure2,
                    obscuringCharacter: '●',
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                        fontSize: getFontSize(
                          14.0,
                        ),
                        color: ColorConstant.gray400,
                      ),
                      prefixIcon: Container(
                        margin: EdgeInsets.only(
                          left: getHorizontalSize(
                            22.92,
                          ),
                          top: getVerticalSize(
                            21.67,
                          ),
                          right: getHorizontalSize(
                            14.91,
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
                            ImageConstant.lock,
                            fit: BoxFit.fill,
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
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscure2 = !obscure2;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              30.00,
                            ),
                            top: getVerticalSize(
                              20.92,
                            ),
                            right: getHorizontalSize(
                              21.66,
                            ),
                            bottom: getVerticalSize(
                              20.91,
                            ),
                          ),
                          child: SizedBox(
                            height: getSize(
                              20.17,
                            ),
                            width: getSize(
                              22.67,
                            ),
                            child: SvgPicture.asset(
                              obscure2
                                  ? ImageConstant.visibilityOff
                                  : ImageConstant.visibilityOn,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      suffixIconConstraints: BoxConstraints(
                        minWidth: getSize(
                          14.17,
                        ),
                        minHeight: getSize(
                          14.17,
                        ),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        top: getVerticalSize(
                          20.21,
                        ),
                        bottom: getVerticalSize(
                          20.20,
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
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    24.00,
                  ),
                  top: getVerticalSize(
                    71.00,
                  ),
                  right: getHorizontalSize(
                    24.00,
                  ),
                  bottom: getVerticalSize(
                    20.00,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const ResetpasswordsuccessfuldialogPage();
                        });
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
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.gray500.withOpacity(0.2),
                          spreadRadius: getHorizontalSize(
                            5.00,
                          ),
                          blurRadius: getHorizontalSize(
                            7.00,
                          ),
                          offset: const Offset(
                            0,
                            3,
                          ),
                        ),
                      ],
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
      ),
    );
  }
}
