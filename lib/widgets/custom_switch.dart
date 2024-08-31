import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

// ignore: must_be_immutable
class CustomSwitch extends StatelessWidget {
  CustomSwitch(
      {super.key, this.alignment, this.padding, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? padding;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(24),
        width: getHorizontalSize(44),
        toggleSize: 24,
        borderRadius: getHorizontalSize(
          12.00,
        ),
        activeColor: ColorConstant.gray500,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.gray201,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) {},
      ),
    );
  }
}
