// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/models/entity/user_entity.dart';
import 'package:mawater_qatar/presentation/accountsetupsuccessfuldialog_page/accountsetupsuccessfuldialog_page.dart';
import 'package:mawater_qatar/presentation/user_exist_page_dialog/user_exist_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/math_utils.dart';

class CreateNewPIN extends StatefulWidget {
  UserEntity user = UserEntity();
  int otpNumber;
  CreateNewPIN({super.key, required this.user, required this.otpNumber});

  @override
  State<CreateNewPIN> createState() => _CreateNewPINState();
}

class _CreateNewPINState extends State<CreateNewPIN> {
  int counter = 5;
  Timer? timer;
  bool isTimerEnd = false;
  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counter > 0) {
        setState(() {
          counter--;
        });
      } else {
        timer.cancel();
        setState(() {
          isTimerEnd = true;
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Create New PIN",
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
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: FadeInUp(
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
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text:
                                "We have sent a confirmation code to your phone number",
                            style: TextStyle(
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.20,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "+974 ${widget.user.userPhone}",
                                style: const TextStyle(
                                  color: Colors.red, // تغيير لون الكلمة
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    "Enter it to complete your account registration.",
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "We have sent a confirmation code to your phone number",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
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
                        Text(
                          "+974 ${widget.user.userPhone}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
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
                        Text(
                          "Enter it to complete your account registration.",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
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
                      ],
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
                      backgroundColor: Colors.transparent,
                      obscuringCharacter: '●',
                      keyboardType: TextInputType.number,
                      autoDismissKeyboard: true,
                      enableActiveFill: true,
                      onCompleted: (value) async {
                        if (value == widget.otpNumber.toString()) {
                          await userController.registerNewUser(
                              user: widget.user);
                          showDialog(
                              context: this.context,
                              builder: (BuildContext context) {
                                return const AccountsetupsuccessfuldialogPage();
                              });
                        } else {
                          showDialog(
                              context: this.context,
                              builder: (BuildContext context) {
                                return AlerDialogMessages(
                                  description:
                                      "The OTP you entered is incorrect. If you do not receive a message, please click on \n\n ( Resend OTP Message )",
                                  title: "OTP Not Correct !",
                                );
                              });
                        }
                      },
                      pinTheme: PinTheme(
                        fieldHeight: getHorizontalSize(
                          70.00,
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
                        inactiveColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray200,
                        selectedColor: ColorConstant.gray500,
                        activeColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray200,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: isTimerEnd
                              ? () {
                                  setState(() {
                                    counter = 60;
                                    isTimerEnd = false;
                                  });
                                  startCountdown();
                                }
                              : null,
                          child: Text(
                            "Click To Resend OTP Message In ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: getFontSize(
                                18,
                              ),
                              color: isTimerEnd
                                  ? ColorConstant.gray500
                                  : Colors.grey,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Text(
                          "$counter",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
