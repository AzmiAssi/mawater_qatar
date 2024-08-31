// ignore_for_file: constant_identifier_names

import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      required this.isDark,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;
  bool isDark;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case ButtonPadding.PaddingAll21:
        return getPadding(
          all: 21,
        );
      case ButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGray200:
        return isDark ? ColorConstant.darkLine : ColorConstant.gray200;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.gray500;
      case ButtonVariant.FillGray6001e:
        return isDark ? ColorConstant.darkLine : ColorConstant.gray6001e;
      case ButtonVariant.FillGray500:
        return ColorConstant.gray500;
      case ButtonVariant.FillGray50:
        return isDark ? ColorConstant.darkLine : ColorConstant.gray50;
      case ButtonVariant.OutlineGray500:
        return null;
      default:
        return isDark ? ColorConstant.darkLine : ColorConstant.black90015;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray500:
        return Border.all(
          color: ColorConstant.gray500,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.FillBlack90015:
      case ButtonVariant.FillGray200:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillGray6001e:
      case ButtonVariant.FillGray500:
      case ButtonVariant.FillGray50:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder29:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
      case ButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.CircleBorder19:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
      case ButtonShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
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
          )
        ];
      case ButtonVariant.FillBlack90015:
      case ButtonVariant.FillGray200:
      case ButtonVariant.FillGray6001e:
      case ButtonVariant.FillGray500:
      case ButtonVariant.OutlineGray500:
      case ButtonVariant.FillGray50:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.UrbanistRomanBold16:
        return TextStyle(
          color: isDark ? Colors.white : ColorConstant.gray800,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistRomanBold16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistSemiBold10:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold10WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold14Gray500:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold16:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.SFProDisplayMedium24:
        return TextStyle(
          color: isDark ? Colors.white : ColorConstant.gray900,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: isDark ? Colors.white : ColorConstant.gray800,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder6,
  CircleBorder29,
  CircleBorder16,
  CircleBorder19,
  RoundedBorder12,
}

enum ButtonPadding {
  PaddingAll6,
  PaddingAll18,
  PaddingAll21,
  PaddingAll9,
}

enum ButtonVariant {
  FillBlack90015,
  FillGray200,
  OutlineBlack9003f,
  FillGray6001e,
  FillGray500,
  OutlineGray500,
  FillGray50,
}

enum ButtonFontStyle {
  UrbanistSemiBold10Gray800,
  UrbanistRomanBold16,
  UrbanistRomanBold16WhiteA700,
  UrbanistSemiBold10,
  UrbanistSemiBold10WhiteA700,
  UrbanistSemiBold14,
  UrbanistSemiBold14Gray500,
  UrbanistSemiBold16,
  SFProDisplayMedium24,
}
