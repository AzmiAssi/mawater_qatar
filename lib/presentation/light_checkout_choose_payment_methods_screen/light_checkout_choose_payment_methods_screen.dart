import 'package:mawater_qatar/data/payment_method_list.dart';
import 'package:mawater_qatar/presentation/light_top_up_confirm_pin_screen/light_top_up_confirm_pin_screen.dart';
import 'package:mawater_qatar/widgets/back_btn.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LightCheckoutChoosePaymentMethodsScreen extends StatefulWidget {
  const LightCheckoutChoosePaymentMethodsScreen({super.key});

  @override
  State<LightCheckoutChoosePaymentMethodsScreen> createState() =>
      _LightCheckoutChoosePaymentMethodsScreenState();
}

class _LightCheckoutChoosePaymentMethodsScreenState
    extends State<LightCheckoutChoosePaymentMethodsScreen> {
  int radioGroup = 0;

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
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: size.width,
                    margin: getMargin(
                      left: 24,
                      top: 33,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 5,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const BackBtn(),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                ),
                                child: Text(
                                  "Payment Methods",
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
                            top: 3,
                            bottom: 3,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.plus,
                            height: getSize(
                              22.00,
                            ),
                            width: getSize(
                              22.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 38,
                    right: 24,
                  ),
                  child: Text(
                    "Select the payment method you want to use.",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.gray801,
                      fontSize: getFontSize(
                        16,
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
                      24.00,
                    ),
                    top: getVerticalSize(
                      24.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: paymentMethidsList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            12.00,
                          ),
                          bottom: getVerticalSize(
                            12.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: isDark
                              ? ColorConstant.darkTextField
                              : ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16.00,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: isDark
                                  ? Colors.transparent
                                  : ColorConstant.black9000c,
                              spreadRadius: getHorizontalSize(
                                0.00,
                              ),
                              blurRadius: getHorizontalSize(
                                10.00,
                              ),
                              offset: const Offset(
                                0,
                                4,
                              ),
                            ),
                          ],
                        ),
                        child: InkWell(
                          radius: getHorizontalSize(16),
                          onTap: () {
                            setState(() {
                              radioGroup = index;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: context.locale == Constants.engLocal
                                          ? getHorizontalSize(
                                              20.00,
                                            )
                                          : getHorizontalSize(0),
                                      right: context.locale == Constants.arLocal
                                          ? getHorizontalSize(
                                              20.00,
                                            )
                                          : getHorizontalSize(0),
                                      top: getVerticalSize(
                                        27.00,
                                      ),
                                      bottom: getVerticalSize(
                                        27.00,
                                      ),
                                    ),
                                    child: SizedBox(
                                      height: getVerticalSize(
                                        26.00,
                                      ),
                                      width: getHorizontalSize(
                                        22.00,
                                      ),
                                      child: Image.asset(
                                        paymentMethidsList[index].img,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        17.00,
                                      ),
                                      right: getHorizontalSize(
                                        17.00,
                                      ),
                                      top: getVerticalSize(
                                        29.00,
                                      ),
                                      bottom: getVerticalSize(
                                        29.41,
                                      ),
                                    ),
                                    child: Text(
                                      paymentMethidsList[index].title,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                    unselectedWidgetColor:
                                        ColorConstant.gray500,
                                    // disabledColor: Colors.blue
                                  ),
                                  child: Radio(
                                    value: index,
                                    activeColor: ColorConstant.gray500,
                                    groupValue: radioGroup,
                                    onChanged: (value) {
                                      setState(() {
                                        radioGroup = value as int;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: getMargin(
                    top: 126,
                  ),
                  decoration: BoxDecoration(
                    color: isDark
                        ? ColorConstant.darkTextField
                        : ColorConstant.whiteA700,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          24.00,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          24.00,
                        ),
                      ),
                    ),
                    border: Border.all(
                      color: isDark
                          ? ColorConstant.darkLine
                          : ColorConstant.gray101,
                      width: getHorizontalSize(
                        1.00,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                        isDark: isDark,
                        width: 380,
                        text: "Continue",
                        margin: getMargin(
                          left: 24,
                          top: 24,
                          right: 24,
                          bottom: 20,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LightTopUpConfirmPinScreen(
                                      isPayment: true,
                                    )),
                          );
                        },
                        variant: ButtonVariant.OutlineBlack9003f,
                        shape: ButtonShape.CircleBorder29,
                        padding: ButtonPadding.PaddingAll18,
                        fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
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
