// ignore_for_file: constant_identifier_names

import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      required this.isDark,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;
  bool isDark;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: TextStyle(
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: OutlineInputBorder(
        borderRadius: _setOutlineBorderRadius(),
        borderSide: BorderSide(
          color: ColorConstant.gray500,
          width: 1,
        ),
      ),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.UrbanistSemiBold16:
        return TextStyle(
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.UrbanistRegular14:
        return TextStyle(
          color: ColorConstant.gray502,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.UrbanistSemiBold16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.UrbanistSemiBold16Gray500:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CircleBorder19:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillWhiteA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray800:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray800,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillGray500:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray500:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray500,
            width: 2,
          ),
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillWhiteA700:
        return isDark ? ColorConstant.darkTextField : ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineGray800:
        return isDark ? ColorConstant.darkTextField : ColorConstant.gray50;
      case TextFormFieldVariant.FillGray500:
        return ColorConstant.gray500;
      default:
        return isDark ? ColorConstant.darkTextField : ColorConstant.gray50;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.FillWhiteA700:
        return true;
      case TextFormFieldVariant.OutlineGray800:
        return true;
      case TextFormFieldVariant.FillGray500:
        return true;
      case TextFormFieldVariant.OutlineGray500:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT22:
        return getPadding(
          left: 18,
          top: 22,
          right: 18,
          bottom: 18,
        );
      case TextFormFieldPadding.PaddingT13:
        return getPadding(
          left: 8,
          top: 13,
          right: 8,
          bottom: 8,
        );
      case TextFormFieldPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case TextFormFieldPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      default:
        return getPadding(
          left: 20,
          top: 20,
          right: 20,
          bottom: 21,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder12,
  CircleBorder19,
}

enum TextFormFieldPadding {
  PaddingT22,
  PaddingTB21,
  PaddingT13,
  PaddingAll18,
  PaddingAll11,
}

enum TextFormFieldVariant {
  FillGray50,
  FillWhiteA700,
  OutlineGray800,
  FillGray500,
  OutlineGray500,
}

enum TextFormFieldFontStyle {
  UrbanistSemiBold14,
  UrbanistSemiBold16,
  UrbanistRegular14,
  UrbanistSemiBold16WhiteA700,
  UrbanistSemiBold16Gray500,
}
