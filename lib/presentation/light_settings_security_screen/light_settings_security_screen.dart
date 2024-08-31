import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../core/app_export.dart';

class LightSettingsSecurityScreen extends StatefulWidget {
  const LightSettingsSecurityScreen({super.key});

  @override
  State<LightSettingsSecurityScreen> createState() =>
      _LightSettingsSecurityScreenState();
}

class _LightSettingsSecurityScreenState
    extends State<LightSettingsSecurityScreen> {
  bool switchval1 = true;

  bool switchval2 = false;

  bool switchval3 = true;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Security",
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
                        "Remember me",
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
                      36.00,
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
                        "Face ID",
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
                      36.00,
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
                        "Biometric ID",
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
                      36.00,
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
                        "Google Authenticator",
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
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            6.67,
                          ),
                          right: getHorizontalSize(
                            0.00,
                          ),
                          bottom: getVerticalSize(
                            6.66,
                          ),
                        ),
                        child: SizedBox(
                            height: getVerticalSize(
                              11.67,
                            ),
                            width: getHorizontalSize(
                              5.83,
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: getSize(20),
                              color: ColorConstant.gray500,
                            )),
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
                      36.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: getVerticalSize(
                      58.00,
                    ),
                    width: size.width,
                    decoration: BoxDecoration(
                      color: isDark
                          ? ColorConstant.darkLine
                          : ColorConstant.gray100,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          29.00,
                        ),
                      ),
                    ),
                    child: Text(
                      "Change PIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isDark ? Colors.white : ColorConstant.gray500,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.20,
                      ),
                    ),
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
                    bottom: getVerticalSize(
                      20.00,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: getVerticalSize(
                      58.00,
                    ),
                    width: size.width,
                    decoration: BoxDecoration(
                      color: isDark
                          ? ColorConstant.darkLine
                          : ColorConstant.gray100,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          29.00,
                        ),
                      ),
                    ),
                    child: Text(
                      "Change Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isDark
                            ? ColorConstant.whiteA700
                            : ColorConstant.gray500,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.20,
                      ),
                    ),
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
