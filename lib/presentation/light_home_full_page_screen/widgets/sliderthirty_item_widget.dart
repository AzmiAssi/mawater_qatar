import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderthirtyItemWidget extends StatelessWidget {
  String imagePath;
  SliderthirtyItemWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Align(
      alignment: Alignment.centerLeft,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: isDark ? ColorConstant.darkLine : ColorConstant.gray200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              15.00,
            ),
          ),
        ),
        child: Image.network(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
