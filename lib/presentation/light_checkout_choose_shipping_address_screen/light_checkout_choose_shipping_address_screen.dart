import 'package:mawater_qatar/presentation/light_settings_add_new_address_bottomsheet/light_settings_add_new_address_bottomsheet.dart';
import 'package:mawater_qatar/widgets/back_btn.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import '../../widgets/custom_icon_button.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LightCheckoutChooseShippingAddressScreen extends StatefulWidget {
  const LightCheckoutChooseShippingAddressScreen({super.key});

  @override
  State<LightCheckoutChooseShippingAddressScreen> createState() =>
      _LightCheckoutChooseShippingAddressScreenState();
}

class _LightCheckoutChooseShippingAddressScreenState
    extends State<LightCheckoutChooseShippingAddressScreen> {
  int radioGroup = 0;
  List<String> locations = ["Home", 'Office', "Apartment", "Parent's House"];

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
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
                          HorizontalSpace(width: 16),
                          Padding(
                            padding: getPadding(
                              left: 0,
                            ),
                            child: Text(
                              "Shipping Address",
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
                        itemCount: locations.length,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: isDark
                                              ? ColorConstant.darkLine
                                              : ColorConstant.black9001e1,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              26.00,
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              height: 36,
                                              width: 36,
                                              margin: getMargin(
                                                all: 8,
                                              ),
                                              variant:
                                                  IconButtonVariant.FillGray500,
                                              shape: IconButtonShape
                                                  .CircleBorder18,
                                              padding:
                                                  IconButtonPadding.PaddingAll9,
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.boldLocation,
                                              ),
                                            ),
                                          ],
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
                                            24.00,
                                          ),
                                          bottom: getVerticalSize(
                                            24.41,
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              locations[index],
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
                                            VerticalSpace(height: 8),
                                            Text(
                                              "61480 Sunbrook Park, PC 5679",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
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
                  ],
                ),
              ),
            ),
            CustomButton(
              isDark: isDark,
              width: 380,
              text: "Add new Address",
              margin: getMargin(
                left: 24,
                top: 24,
                right: 24,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const LightSettingsAddNewAddressBottomsheet()),
                );
              },
              variant: ButtonVariant.FillGray200,
              shape: ButtonShape.CircleBorder29,
              padding: ButtonPadding.PaddingAll18,
              fontStyle: ButtonFontStyle.UrbanistRomanBold16,
              alignment: Alignment.center,
            ),
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
    );
  }
}
