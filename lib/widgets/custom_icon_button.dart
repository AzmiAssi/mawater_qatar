// ignore_for_file: constant_identifier_names

import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: const EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      case IconButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      case IconButtonPadding.PaddingAll22:
        return getPadding(
          all: 22,
        );
      case IconButtonPadding.PaddingAll31:
        return getPadding(
          all: 31,
        );
      case IconButtonPadding.PaddingAll26:
        return getPadding(
          all: 26,
        );
      default:
        return getPadding(
          all: 17,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack9003f:
        return ColorConstant.gray500;
      case IconButtonVariant.FillGray200:
        return ColorConstant.gray200;
      case IconButtonVariant.FillBlack90015:
        return ColorConstant.black90015;
      case IconButtonVariant.FillGray500:
        return ColorConstant.gray500;
      case IconButtonVariant.GradientBlack900Bluegray900:
      case IconButtonVariant.GradientGray500Gray500:
      case IconButtonVariant.GradientGray500Gray503:
      case IconButtonVariant.OutlineBlack9003f1:
      case IconButtonVariant.GradientBlue500Lightblue700:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder18:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
      case IconButtonShape.CircleBorder22:
        return BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        );
      case IconButtonShape.CircleBorder26:
        return BorderRadius.circular(
          getHorizontalSize(
            26.00,
          ),
        );
      case IconButtonShape.CircleBorder40:
        return BorderRadius.circular(
          getHorizontalSize(
            40.00,
          ),
        );
      case IconButtonShape.CircleBorder34:
        return BorderRadius.circular(
          getHorizontalSize(
            34.00,
          ),
        );
      case IconButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case IconButtonShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.GradientGray500Gray500:
        return LinearGradient(
          begin: const Alignment(
            1.0000000298023233,
            1.0000000298023233,
          ),
          end: const Alignment(
            1.1102230246251565e-16,
            0,
          ),
          colors: [
            ColorConstant.gray500,
            ColorConstant.gray500,
          ],
        );
      case IconButtonVariant.GradientGray500Gray503:
        return LinearGradient(
          begin: const Alignment(
            1.0000000298023233,
            1.0000000298023233,
          ),
          end: const Alignment(
            1.1102230246251565e-16,
            0,
          ),
          colors: [
            ColorConstant.gray500,
            ColorConstant.gray503,
          ],
        );
      case IconButtonVariant.OutlineBlack9003f1:
        return LinearGradient(
          begin: const Alignment(
            1.0000000298023233,
            1.0000000298023233,
          ),
          end: const Alignment(
            1.1102230246251565e-16,
            0,
          ),
          colors: [
            ColorConstant.gray500,
            ColorConstant.gray500,
          ],
        );
      case IconButtonVariant.GradientBlue500Lightblue700:
        return LinearGradient(
          begin: const Alignment(
            0.14982498941604405,
            0.14982498941604394,
          ),
          end: const Alignment(
            0.9153749631649127,
            0.9153749631649126,
          ),
          colors: [
            ColorConstant.blue500,
            ColorConstant.lightBlue700,
          ],
        );
      case IconButtonVariant.OutlineBlack9003f:
      case IconButtonVariant.FillGray200:
      case IconButtonVariant.FillBlack90015:
      case IconButtonVariant.FillGray500:
        return null;
      default:
        return LinearGradient(
          begin: const Alignment(
            1.0000000298023233,
            1.0000000298023233,
          ),
          end: const Alignment(
            1.1102230246251565e-16,
            0,
          ),
          colors: [
            ColorConstant.black900,
            ColorConstant.bluegray900,
          ],
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack9003f:
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
      case IconButtonVariant.OutlineBlack9003f1:
        return [
          BoxShadow(
            color: ColorConstant.black9003f1,
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
      case IconButtonVariant.GradientBlack900Bluegray900:
      case IconButtonVariant.GradientGray500Gray500:
      case IconButtonVariant.GradientGray500Gray503:
      case IconButtonVariant.FillGray200:
      case IconButtonVariant.FillBlack90015:
      case IconButtonVariant.FillGray500:
      case IconButtonVariant.GradientBlue500Lightblue700:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder18,
  CircleBorder22,
  CircleBorder26,
  CircleBorder29,
  CircleBorder40,
  CircleBorder34,
  RoundedBorder8,
  CircleBorder12,
}

enum IconButtonPadding {
  PaddingAll9,
  PaddingAll12,
  PaddingAll17,
  PaddingAll22,
  PaddingAll31,
  PaddingAll26,
}

enum IconButtonVariant {
  GradientBlack900Bluegray900,
  OutlineBlack9003f,
  GradientGray500Gray500,
  GradientGray500Gray503,
  OutlineBlack9003f1,
  FillGray200,
  FillBlack90015,
  FillGray500,
  GradientBlue500Lightblue700,
}
