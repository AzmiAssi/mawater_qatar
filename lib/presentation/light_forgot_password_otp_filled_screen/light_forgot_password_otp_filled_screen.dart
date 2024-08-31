import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class LightForgotPasswordOtpFilledScreen extends StatelessWidget {
  const LightForgotPasswordOtpFilledScreen({super.key});

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
                          "lbl_forgot_password",
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 249,
                      right: 24,
                    ),
                    child: Text(
                      "msg_code_has_been_s",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 63,
                    right: 24,
                  ),
                  child: SizedBox(
                    width: getHorizontalSize(
                      380.00,
                    ),
                    height: getVerticalSize(
                      61.00,
                    ),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      obscureText: false,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.number,
                      autoDismissKeyboard: true,
                      enableActiveFill: true,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {},
                      textStyle: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                      pinTheme: PinTheme(
                        fieldHeight: getHorizontalSize(
                          61.00,
                        ),
                        fieldWidth: getHorizontalSize(
                          83.00,
                        ),
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            12.00,
                          ),
                        ),
                        selectedFillColor: ColorConstant.gray50,
                        activeFillColor: ColorConstant.gray50,
                        inactiveFillColor: ColorConstant.gray50,
                        inactiveColor: ColorConstant.gray201,
                        selectedColor: ColorConstant.gray201,
                        activeColor: ColorConstant.gray201,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 24,
                      top: 63,
                      right: 24,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '',
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20,
                            ),
                          ),
                          TextSpan(
                            text: '53',
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20,
                            ),
                          ),
                          TextSpan(
                            text: '',
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: 380,
                  text: "lbl_verify",
                  margin: getMargin(
                    left: 24,
                    top: 240,
                    right: 24,
                    bottom: 20,
                  ),
                  variant: ButtonVariant.OutlineBlack9003f,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
