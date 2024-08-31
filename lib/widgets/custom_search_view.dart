// ignore_for_file: constant_identifier_names

import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSearchView extends StatelessWidget {
  CustomSearchView(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.readOnly = false,
      required this.isDark,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.onChange});

  SearchViewShape? shape;
  bool isDark;

  SearchViewPadding? padding;

  SearchViewVariant? variant;
  bool readOnly;

  SearchViewFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;
  void Function()? onChange;
  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSearchViewWidget(),
          )
        : _buildSearchViewWidget();
  }

  _buildSearchViewWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      height: 40,
      margin: margin,
      child: TextFormField(
        readOnly: readOnly,
        //onChanged: onChange,
        controller: controller,
        onEditingComplete: onChange,
        focusNode: focusNode,
        style: TextStyle(
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        decoration: _buildDecoration(),
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
      case SearchViewFontStyle.UrbanistRegular14:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray900,
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
      case SearchViewVariant.OutlineGray800:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray800,
            width: 1,
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
      case SearchViewVariant.OutlineGray800:
        return isDark ? ColorConstant.darkTextField : ColorConstant.gray50;
      default:
        return isDark ? ColorConstant.darkTextField : ColorConstant.gray101;
    }
  }

  _setFilled() {
    switch (variant) {
      case SearchViewVariant.OutlineGray800:
        return true;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case SearchViewPadding.PaddingTB21:
        return getPadding(
          left: 20,
          top: 20,
          right: 20,
          bottom: 21,
        );
      default:
        return getPadding(
          left: 18,
          top: 10,
          right: 18,
          bottom: 18,
        );
    }
  }
}

enum SearchViewShape {
  RoundedBorder12,
}

enum SearchViewPadding {
  PaddingT22,
  PaddingTB21,
}

enum SearchViewVariant {
  OutlineGray800,
  FillGray101,
}

enum SearchViewFontStyle {
  UrbanistSemiBold14,
  UrbanistRegular14,
}
