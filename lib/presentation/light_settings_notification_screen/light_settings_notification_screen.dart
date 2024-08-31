import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../core/app_export.dart';

class LightSettingsNotificationScreen extends StatefulWidget {
  const LightSettingsNotificationScreen({super.key});

  @override
  State<LightSettingsNotificationScreen> createState() =>
      _LightSettingsNotificationScreenState();
}

class _LightSettingsNotificationScreenState
    extends State<LightSettingsNotificationScreen> {
  bool switchval1 = true;

  bool switchval2 = true;

  bool switchval3 = false;
  bool switchval4 = true;
  bool switchval5 = false;
  bool switchval6 = true;
  bool switchval7 = false;
  bool switchval8 = true;
  bool switchval9 = false;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Notification",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getFontSize(
              24,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: FadeInUp(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      24.00,
                    ),
                    top: getVerticalSize(
                      33.70,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "General Notification",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                      FlutterSwitch(
                        width: 50.0,
                        height: 25.0,
                        activeColor: ColorConstant.gray500,
                        inactiveColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray300,
                        valueFontSize: 25.0,
                        toggleSize: 20.0,
                        borderRadius: 30.0,
                        padding: 3,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            switchval1 = val;
                          });
                        },
                        value: switchval1,
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
                      40.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Sound",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                      FlutterSwitch(
                        width: 50.0,
                        height: 25.0,
                        activeColor: ColorConstant.gray500,
                        inactiveColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray300,
                        valueFontSize: 25.0,
                        toggleSize: 20.0,
                        borderRadius: 30.0,
                        padding: 3,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            switchval2 = val;
                          });
                        },
                        value: switchval2,
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
                      40.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Vibrate",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                      FlutterSwitch(
                        width: 50.0,
                        height: 25.0,
                        activeColor: ColorConstant.gray500,
                        inactiveColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray300,
                        valueFontSize: 25.0,
                        toggleSize: 20.0,
                        borderRadius: 30.0,
                        padding: 3,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            switchval3 = val;
                          });
                        },
                        value: switchval3,
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
                      40.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Special Offers",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                      FlutterSwitch(
                        width: 50.0,
                        height: 25.0,
                        activeColor: ColorConstant.gray500,
                        inactiveColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray300,
                        valueFontSize: 25.0,
                        toggleSize: 20.0,
                        borderRadius: 30.0,
                        padding: 3,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            switchval4 = val;
                          });
                        },
                        value: switchval4,
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
                      40.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Payments",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                      FlutterSwitch(
                        width: 50.0,
                        height: 25.0,
                        activeColor: ColorConstant.gray500,
                        inactiveColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray300,
                        valueFontSize: 25.0,
                        toggleSize: 20.0,
                        borderRadius: 30.0,
                        padding: 3,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            switchval5 = val;
                          });
                        },
                        value: switchval5,
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
                      40.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Cashback",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                      FlutterSwitch(
                        width: 50.0,
                        height: 25.0,
                        activeColor: ColorConstant.gray500,
                        inactiveColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray300,
                        valueFontSize: 25.0,
                        toggleSize: 20.0,
                        borderRadius: 30.0,
                        padding: 3,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            switchval6 = val;
                          });
                        },
                        value: switchval6,
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
                      40.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "App Updates",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                      FlutterSwitch(
                        width: 50.0,
                        height: 25.0,
                        activeColor: ColorConstant.gray500,
                        inactiveColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray300,
                        valueFontSize: 25.0,
                        toggleSize: 20.0,
                        borderRadius: 30.0,
                        padding: 3,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            switchval7 = val;
                          });
                        },
                        value: switchval7,
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
                      40.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "New Service Available",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                      FlutterSwitch(
                        width: 50.0,
                        height: 25.0,
                        activeColor: ColorConstant.gray500,
                        inactiveColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray300,
                        valueFontSize: 25.0,
                        toggleSize: 20.0,
                        borderRadius: 30.0,
                        padding: 3,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            switchval8 = val;
                          });
                        },
                        value: switchval8,
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
                      40.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                    bottom: getVerticalSize(
                      0.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "New Tips Available",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                      FlutterSwitch(
                        width: 50.0,
                        height: 25.0,
                        activeColor: ColorConstant.gray500,
                        inactiveColor: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.gray300,
                        valueFontSize: 25.0,
                        toggleSize: 20.0,
                        borderRadius: 30.0,
                        padding: 3,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            switchval9 = val;
                          });
                        },
                        value: switchval9,
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
