// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/models/entity/user_entity.dart';
import 'package:mawater_qatar/presentation/light_fill_profile_blank_form_screen/create_new_pin.dart';
import 'package:mawater_qatar/presentation/user_exist_page_dialog/user_exist_page.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import '../../core/app_export.dart';
import '../light_sign_in_filled_form_screen/light_sign_in_filled_form_screen.dart';

class LightSignUpBlankFormScreen extends StatefulWidget {
  const LightSignUpBlankFormScreen({super.key});

  @override
  State<LightSignUpBlankFormScreen> createState() =>
      _LightSignUpBlankFormScreenState();
}

class _LightSignUpBlankFormScreenState
    extends State<LightSignUpBlankFormScreen> {
  bool obscure = true;
  bool checkboxVal = false;
  int selectedUserType = 0;
  List<String> userTypes = ["Personal", "Exhibition", "Company"];
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
                      15.08,
                    ),
                    top: getVerticalSize(
                      20.42,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  50.23,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                                bottom: 50),
                            child: Text(
                              "Create Your Account",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: getFontSize(
                                    34,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                  color: ColorConstant.gray500),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: getVerticalSize(60),
                            width: size.width - 100,
                            child: ListView.separated(
                                padding: getPadding(
                                  left: 24,
                                  top: 10,
                                  right: 24,
                                ),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedUserType = index;
                                      });
                                    },
                                    child: Container(
                                      padding: getPadding(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        color: selectedUserType == index
                                            ? ColorConstant.gray500
                                            : Colors.transparent,
                                        border: Border.all(
                                          color: ColorConstant.gray500,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          userTypes[index],
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: selectedUserType == index
                                                ? Colors.white
                                                : ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return HorizontalSpace(width: 12);
                                },
                                itemCount: userTypes.length)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            0.00,
                          ),
                          top: getVerticalSize(
                            24.00,
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
                            focusNode: FocusNode(),
                            decoration: InputDecoration(
                              hintText: 'First Name',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: getFontSize(
                                  14.0,
                                ),
                                color: ColorConstant.gray400,
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
                                  child: SvgPicture.asset(
                                    ImageConstant.userSvgrepoCom,
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
                            ),
                            style: TextStyle(
                              fontSize: getFontSize(
                                14.0,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                            ),
                            controller: fNameController,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            0.00,
                          ),
                          top: getVerticalSize(
                            24.00,
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
                            focusNode: FocusNode(),
                            controller: lNameController,
                            decoration: InputDecoration(
                              hintText: 'Last Name',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
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
                                  child: SvgPicture.asset(
                                    ImageConstant.userSvgrepoCom,
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
                            0.00,
                          ),
                          top: getVerticalSize(
                            24.00,
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
                            0.00,
                          ),
                          top: getVerticalSize(
                            24.00,
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
                            controller: emailController,
                            focusNode: FocusNode(),
                            decoration: InputDecoration(
                              hintText: 'Email',
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
                                    22.50,
                                  ),
                                  bottom: getVerticalSize(
                                    22.50,
                                  ),
                                ),
                                child: SizedBox(
                                  height: getSize(
                                    15.00,
                                  ),
                                  width: getSize(
                                    16.67,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.email,
                                    fit: BoxFit.fill,
                                    color: ColorConstant.gray500,
                                  ),
                                ),
                              ),
                              prefixIconConstraints: BoxConstraints(
                                minWidth: getSize(
                                  15.00,
                                ),
                                minHeight: getSize(
                                  15.00,
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
                            controller: passwordController,
                            focusNode: FocusNode(),
                            obscuringCharacter: '●',
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
                                  child: SvgPicture.asset(
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
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              60.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () async {
                              UserEntity user = UserEntity(
                                userFName: fNameController.text,
                                userLName: lNameController.text,
                                userEmail: emailController.text,
                                userPassword: passwordController.text,
                                userPhone: phoneController.text,
                                userType: selectedUserType,
                                isActive: true,
                                isPaid: false,
                                packageId: "",
                              );

                              var test = await userController.checkRegisterUser(
                                  user: user);
                              if (test == 1) {
                                Random random = Random();
                                int otp = random.nextInt(8999) + 1000;
                                //todo send otp
                                print("$otp  OTP");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CreateNewPIN(
                                            user: user,
                                            otpNumber: otp,
                                          )),
                                );
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlerDialogMessages(
                                        description:
                                            "Your phone number is already exist , please enter another phone number and try again",
                                        title: "Already Exist !",
                                      );
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
                              child: Text(
                                "Sign up",
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
                              24.45,
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
                                        const LightSignInFilledFormScreen()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Already have an account?",
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
                                    "Sign in",
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
