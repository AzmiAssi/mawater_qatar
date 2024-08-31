import 'package:mawater_qatar/presentation/light_checkout_successful_dialog/light_checkout_successful_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../core/app_export.dart';
import '../topupsuccessfuldialog_page/topupsuccessfuldialog_page.dart';

// ignore: must_be_immutable
class LightTopUpConfirmPinScreen extends StatelessWidget {
  bool isPayment;
  LightTopUpConfirmPinScreen({super.key, this.isPayment = false});
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Enter Your PIN ",
          style: TextStyle(
            fontSize: getFontSize(
              24,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
        child: SizedBox(
          width: getHorizontalSize(380),
          height: getVerticalSize(60),
          child: FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getHorizontalSize(30))),
              backgroundColor: ColorConstant.gray500,
              foregroundColor: ColorConstant.whiteA700,
              extendedTextStyle: TextStyle(
                color: ColorConstant.whiteA700,
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.20,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return isPayment
                          ? const LightCheckoutSuccessfulDialog()
                          : const TopupsuccessfuldialogPage();
                    });
              },
              label: const Text('Continue')),
        ),
      ),
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    137.70,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Text(
                  "Enter your PIN to confirm",
                  overflow: TextOverflow.ellipsis,
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
                    80.00,
                  ),
                  right: getHorizontalSize(
                    24.00,
                  ),
                ),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: true,
                  backgroundColor: Colors.transparent,
                  obscuringCharacter: '●',
                  keyboardType: TextInputType.number,
                  autoDismissKeyboard: true,
                  enableActiveFill: true,
                  onChanged: (value) {},
                  pinTheme: PinTheme(
                    fieldHeight: getHorizontalSize(
                      60.00,
                    ),
                    fieldWidth: getHorizontalSize(
                      83.00,
                    ),
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(12),
                    selectedFillColor: isDark
                        ? ColorConstant.darkTextField
                        : ColorConstant.gray50,
                    activeFillColor: isDark
                        ? ColorConstant.darkTextField
                        : ColorConstant.gray50,
                    inactiveFillColor: isDark
                        ? ColorConstant.darkTextField
                        : ColorConstant.gray50,
                    inactiveColor:
                        isDark ? ColorConstant.darkLine : ColorConstant.gray200,
                    selectedColor: ColorConstant.gray500,
                    activeColor:
                        isDark ? ColorConstant.darkLine : ColorConstant.gray200,
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
