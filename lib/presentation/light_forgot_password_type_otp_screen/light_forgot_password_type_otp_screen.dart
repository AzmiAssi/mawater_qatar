import '../light_forgot_password_type_otp_screen/widgets/listautolayoutver_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class LightForgotPasswordTypeOtpScreen extends StatelessWidget {
  const LightForgotPasswordTypeOtpScreen({super.key});

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
                      top: 109,
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
                            text: '55',
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
                    top: 100,
                    right: 24,
                  ),
                  variant: ButtonVariant.FillGray500,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingAll18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                  alignment: Alignment.center,
                ),
                Container(
                  width: double.infinity,
                  margin: getMargin(
                    top: 24,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray50,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          40.00,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          40.00,
                        ),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 12,
                          top: 12,
                          right: 12,
                        ),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return const ListautolayoutverItemWidget();
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 12,
                          top: 8,
                          right: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomButton(
                              isDark: isDark,
                              width: 129,
                              text: "*",
                              variant: ButtonVariant.FillGray50,
                              shape: ButtonShape.RoundedBorder12,
                              padding: ButtonPadding.PaddingAll18,
                              fontStyle: ButtonFontStyle.SFProDisplayMedium24,
                            ),
                            CustomButton(
                              isDark: isDark,
                              width: 129,
                              text: "lbl_0",
                              variant: ButtonVariant.FillGray50,
                              shape: ButtonShape.RoundedBorder12,
                              padding: ButtonPadding.PaddingAll18,
                              fontStyle: ButtonFontStyle.SFProDisplayMedium24,
                            ),
                            SizedBox(
                              height: getVerticalSize(
                                56.00,
                              ),
                              width: getHorizontalSize(
                                129.00,
                              ),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: const EdgeInsets.all(0),
                                color: ColorConstant.gray50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 40,
                                          top: 21,
                                          right: 40,
                                          bottom: 21,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imageNotFound,
                                          height: getVerticalSize(
                                            14.00,
                                          ),
                                          width: getHorizontalSize(
                                            20.00,
                                          ),
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
                      Container(
                        height: getVerticalSize(
                          5.00,
                        ),
                        width: getHorizontalSize(
                          134.00,
                        ),
                        margin: getMargin(
                          left: 12,
                          top: 32,
                          right: 12,
                          bottom: 9,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray801,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              2.50,
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
