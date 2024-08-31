import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/back_btn.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/custom_checkbox.dart';
import 'package:mawater_qatar/widgets/custom_text_form_field.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class LightSettingsAddNewAddressBottomsheet extends StatefulWidget {
  const LightSettingsAddNewAddressBottomsheet({super.key});

  @override
  State<LightSettingsAddNewAddressBottomsheet> createState() =>
      _LightSettingsAddNewAddressBottomsheetState();
}

class _LightSettingsAddNewAddressBottomsheetState
    extends State<LightSettingsAddNewAddressBottomsheet> {
  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
              child: Image.asset(
                isDark ? ImageConstant.darkMap : ImageConstant.lightMap,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: isDark ? ColorConstant.darkBg : ColorConstant.whiteA700,
                padding: getPadding(top: 24, bottom: 25, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const BackBtn(),
                        HorizontalSpace(width: 16),
                        const Text(
                          "Add New Address",
                          style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    CommonImageViewWithDarkOption(
                      isDark: isDark,
                      svgPath: ImageConstant.icon,
                      height: getSize(
                        21.00,
                      ),
                      width: getSize(
                        21.00,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(top: 150),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  isDark
                      ? ImageConstant.locationPinDark
                      : ImageConstant.locationPin,
                  height: 61,
                  width: 52,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: getVerticalSize(510),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: isDark
                              ? ColorConstant.darkBg
                              : ColorConstant.whiteA700,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  3.00,
                                ),
                                width: getHorizontalSize(
                                  38.00,
                                ),
                                margin: getMargin(
                                  left: 24,
                                  top: 8,
                                  right: 24,
                                ),
                                decoration: BoxDecoration(
                                  color: isDark
                                      ? ColorConstant.darkLine
                                      : ColorConstant.gray300,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      1.50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 26,
                                  right: 24,
                                ),
                                child: Text(
                                  "Address Details",
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
                            ),
                            Container(
                              height: getVerticalSize(
                                1.00,
                              ),
                              width: getHorizontalSize(
                                380.00,
                              ),
                              margin: getMargin(
                                left: 24,
                                top: 26,
                                right: 24,
                              ),
                              decoration: BoxDecoration(
                                color: isDark
                                    ? ColorConstant.darkLine
                                    : ColorConstant.gray201,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 24,
                                top: 24,
                                right: 24,
                              ),
                              child: Text(
                                "Name Address",
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
                            CustomTextFormField(
                              isDark: isDark,
                              width: 380,
                              focusNode: FocusNode(),
                              hintText: "Hotel",
                              margin: getMargin(
                                left: 24,
                                top: 18,
                                right: 24,
                              ),
                              alignment: Alignment.center,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 24,
                                top: 25,
                                right: 24,
                              ),
                              child: Text(
                                "Address Details",
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
                            CustomTextFormField(
                              isDark: isDark,
                              width: 380,
                              focusNode: FocusNode(),
                              hintText: "2899 Summer Drive Taylor, PC 48180",
                              margin: getMargin(
                                left: 24,
                                top: 18,
                                right: 24,
                              ),
                              padding: TextFormFieldPadding.PaddingT22,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              suffix: Container(
                                  margin: getMargin(
                                    left: 22,
                                    top: 19,
                                    right: 22,
                                    bottom: 19,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.boldLocation,
                                    color: ColorConstant.gray500,
                                    height: getVerticalSize(
                                      24.00,
                                    ),
                                    width: getHorizontalSize(
                                      20.00,
                                    ),
                                  )),
                              suffixConstraints: BoxConstraints(
                                minWidth: getHorizontalSize(
                                  14.00,
                                ),
                                minHeight: getVerticalSize(
                                  16.00,
                                ),
                              ),
                            ),
                            CustomCheckbox(
                              text: "Make this as the default address",
                              iconSize: 24,
                              value: checkbox,
                              padding: getPadding(
                                left: 24,
                                top: 24,
                                right: 24,
                              ),
                              onChange: (value) {
                                setState(() {
                                  checkbox = value;
                                });
                              },
                            ),
                            CustomButton(
                              isDark: isDark,
                              width: 380,
                              text: "Add",
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
                              fontStyle:
                                  ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                              alignment: Alignment.center,
                            ),
                          ],
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
    );
  }
}
