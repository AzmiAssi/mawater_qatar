import 'package:mawater_qatar/widgets/back_btn.dart';
import '../../widgets/custom_icon_button.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LightCheckoutChooseShippingMethodsScreen extends StatefulWidget {
  const LightCheckoutChooseShippingMethodsScreen({super.key});

  @override
  State<LightCheckoutChooseShippingMethodsScreen> createState() =>
      _LightCheckoutChooseShippingMethodsScreenState();
}

class _LightCheckoutChooseShippingMethodsScreenState
    extends State<LightCheckoutChooseShippingMethodsScreen> {
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
                      const BackBtn(),
                      Padding(
                        padding: getPadding(
                          left: 20,
                        ),
                        child: Text(
                          "Choose Shipping",
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
                      top: 33,
                      right: 24,
                    ),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              radioGroup = index;
                            });
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(right: 24, bottom: 20),
                              decoration: BoxDecoration(
                                color: isDark
                                    ? ColorConstant.darkTextField
                                    : ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    24.00,
                                  ),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        ColorConstant.gray500.withOpacity(0.2),
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomIconButton(
                                    height: 52,
                                    width: 52,
                                    margin: getMargin(
                                      left: 20,
                                      top: 20,
                                      bottom: 20,
                                    ),
                                    shape: IconButtonShape.CircleBorder26,
                                    variant: IconButtonVariant.FillGray500,
                                    child: CommonImageView(
                                      svgPath: ImageConstant.truck,
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 16,
                                      top: 23,
                                      bottom: 24,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            right: 10,
                                          ),
                                          child: Text(
                                            "truck",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                18,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 11,
                                          ),
                                          child: Text(
                                            "Est. Arrival, Dec 20-23",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray700,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 49,
                                      top: 34,
                                      bottom: 34,
                                    ),
                                    child: Text(
                                      "200 ${Constants.currency}",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          20,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        0.00,
                                      ),
                                      right: getHorizontalSize(
                                        0.00,
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
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: getMargin(
                    top: 228,
                  ),
                  decoration: BoxDecoration(
                    color:
                        isDark ? ColorConstant.darkBg : ColorConstant.whiteA700,
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
                        text: "Apply",
                        margin: getMargin(
                          left: 24,
                          top: 24,
                          right: 24,
                          bottom: 20,
                        ),
                        onTap: () {
                          Navigator.pop(context);
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
