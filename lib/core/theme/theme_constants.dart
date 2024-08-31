import 'package:flutter/material.dart';
import '../app_export.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: Colors.black,
  dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(40))),
      backgroundColor: Colors.white),
  scaffoldBackgroundColor: ColorConstant.whiteA700,
  appBarTheme: AppBarTheme(
      backgroundColor: ColorConstant.whiteA700, foregroundColor: Colors.black),
  brightness: Brightness.light,
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: ColorConstant.whiteA700,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      top: Radius.circular(20),
    )),
  ),
  inputDecorationTheme: InputDecorationTheme(
    alignLabelWithHint: true,
    hintStyle: TextStyle(
      color: ColorConstant.gray400,
      fontSize: getFontSize(
        16,
      ),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w400,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getHorizontalSize(
          12.00,
        ),
      ),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        ),
        borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: ColorConstant.gray500,
        width: 1,
      ),
    ),
    filled: true,
    fillColor: ColorConstant.gray100,
    isDense: true,
    contentPadding: EdgeInsets.only(
      left: getHorizontalSize(
        14.00,
      ),
      right: getHorizontalSize(
        14.00,
      ),
      top: getVerticalSize(
        50.11,
      ),
      bottom: getVerticalSize(
        0.12,
      ),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(10))),
      backgroundColor: ColorConstant.darkBg),
  scaffoldBackgroundColor: ColorConstant.darkBg,
  tabBarTheme: const TabBarTheme(),
  appBarTheme: AppBarTheme(
      backgroundColor: ColorConstant.darkBg, foregroundColor: Colors.white),
  brightness: Brightness.dark,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      color: ColorConstant.gray400,
      fontSize: getFontSize(
        16,
      ),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
    filled: true,
    fillColor: ColorConstant.darkTextField,
    contentPadding: EdgeInsets.only(
      left: getHorizontalSize(
        14.00,
      ),
      right: getHorizontalSize(
        14.00,
      ),
      top: getVerticalSize(
        50.11,
      ),
      bottom: getVerticalSize(
        0.12,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getHorizontalSize(
          12.00,
        ),
      ),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        ),
        borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: ColorConstant.gray500,
        width: 1,
      ),
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: ColorConstant.darkBg,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      top: Radius.circular(24),
    )),
  ),
);

Widget darkCustomContainer(
    {required Widget child,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 1)}) {
  return Container(
      padding: padding,
      margin: EdgeInsets.only(
        bottom: getVerticalSize(8),
      ),
      decoration: BoxDecoration(
        // color: ColorConstant.darkLine,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
      ),
      child: child);
}
