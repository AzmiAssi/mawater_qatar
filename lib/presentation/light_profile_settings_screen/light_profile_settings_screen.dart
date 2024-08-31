import 'package:animate_do/animate_do.dart';
import 'package:mawater_qatar/presentation/light_help_center_faq_screen/light_help_center_faq_screen.dart';
import 'package:mawater_qatar/presentation/light_profile_settings_screen/select_language.dart';
import 'package:mawater_qatar/presentation/light_settings_logout_modal_bottomsheet/light_settings_logout_modal_bottomsheet.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../core/app_export.dart';
import '../../main.dart';
import '../light_settings_edit_profile_screen/light_settings_edit_profile_screen.dart';
import '../light_settings_invite_friends_screen/light_settings_invite_friends_screen.dart';
import '../light_settings_notification_screen/light_settings_notification_screen.dart';
import '../light_settings_security_screen/light_settings_security_screen.dart';

class LightProfileSettingsScreen extends StatefulWidget {
  const LightProfileSettingsScreen({super.key});

  @override
  State<LightProfileSettingsScreen> createState() =>
      _LightProfileSettingsScreenState();
}

class _LightProfileSettingsScreenState
    extends State<LightProfileSettingsScreen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                margin: getMargin(left: 24, right: 24, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 5,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 3,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.appLogo,
                              height: getVerticalSize(
                                30.00,
                              ),
                              width: getHorizontalSize(
                                30.00,
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 16),
                          Padding(
                            padding: getPadding(
                              left: 0,
                            ),
                            child: Text(
                              "Profile",
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                        right: 3,
                        bottom: 2,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.imgSearch,
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 26),
                          Padding(
                            padding: getPadding(
                              left: 0,
                              bottom: 1,
                            ),
                            child: CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.icon,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            20.00,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FadeInUp(
                              child: Column(
                                children: [
                                  Container(
                                    height: getSize(
                                      120.00,
                                    ),
                                    width: getSize(
                                      120.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                      top: getVerticalSize(
                                        32.00,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                60.00,
                                              ),
                                            ),
                                            child: Image.asset(
                                              ImageConstant.profilePic,
                                              height: getSize(
                                                120.00,
                                              ),
                                              width: getSize(
                                                120.00,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
                                              ),
                                              top: getVerticalSize(
                                                10.00,
                                              ),
                                              right: getHorizontalSize(
                                                2.50,
                                              ),
                                              bottom: getVerticalSize(
                                                2.50,
                                              ),
                                            ),
                                            child: SizedBox(
                                              height: getSize(
                                                25.00,
                                              ),
                                              width: getSize(
                                                25.00,
                                              ),
                                              child: Image.asset(
                                                ImageConstant.edit,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                      top: getVerticalSize(
                                        12.10,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Andrew Ainsley",
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
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                      top: getVerticalSize(
                                        8.31,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Text(
                                      "andrew_ainsley@yourdomain.com",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            VerticalSpace(height: 10),
                            Padding(
                              padding: getPadding(left: 24, right: 24),
                              child: CustomDivider(isDark: isDark),
                            ),
                            FadeInUp(
                              duration: const Duration(milliseconds: 1200),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LightSettingsEditProfileScreen()),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        top: getVerticalSize(
                                          24.50,
                                        ),
                                        bottom: getVerticalSize(
                                          12.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    1.30,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    1.23,
                                                  ),
                                                ),
                                                child: SizedBox(
                                                  height: getVerticalSize(
                                                    24.0,
                                                  ),
                                                  width: getHorizontalSize(
                                                    20.0,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.profile1,
                                                    fit: BoxFit.fill,
                                                    color: isDark
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        getHorizontalSize(20)),
                                                child: Text(
                                                  "Edit Profile",
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                6.67,
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
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant.black900,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    //  onTap: (){
                                    //     Navigator.push(
                                    //         context,
                                    //         MaterialPageRoute(builder: (context)
                                    //     =>LightSettingsEditProfileScreen()),
                                    //       );
                                    //   },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        top: getVerticalSize(
                                          12.50,
                                        ),
                                        bottom: getVerticalSize(
                                          12.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    1.30,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    1.23,
                                                  ),
                                                ),
                                                child: SizedBox(
                                                  height: getVerticalSize(
                                                    24.0,
                                                  ),
                                                  width: getHorizontalSize(
                                                    20.0,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.location,
                                                    fit: BoxFit.fill,
                                                    color: isDark
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        getHorizontalSize(20)),
                                                child: Text(
                                                  "Address",
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                6.67,
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
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant.black900,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LightSettingsNotificationScreen()),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        top: getVerticalSize(
                                          12.00,
                                        ),
                                        bottom: getVerticalSize(
                                          12.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    1.43,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    1.30,
                                                  ),
                                                ),
                                                child: SizedBox(
                                                  height: getVerticalSize(
                                                    24.27,
                                                  ),
                                                  width: getHorizontalSize(
                                                    20.22,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.profile2,
                                                    fit: BoxFit.fill,
                                                    color: isDark
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        getHorizontalSize(20)),
                                                child: Text(
                                                  "Notification",
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              ),
                                            ],
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
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant.black900,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        24.00,
                                      ),
                                      top: getVerticalSize(
                                        12.00,
                                      ),
                                      bottom: getVerticalSize(
                                        12.00,
                                      ),
                                      right: getHorizontalSize(
                                        24.00,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  2.83,
                                                ),
                                                bottom: getVerticalSize(
                                                  2.25,
                                                ),
                                              ),
                                              child: SizedBox(
                                                height: getVerticalSize(
                                                  24.0,
                                                ),
                                                width: getHorizontalSize(
                                                  20.0,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.profile3,
                                                  fit: BoxFit.fill,
                                                  color: isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      getHorizontalSize(20)),
                                              child: Text(
                                                "Payment",
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
                                            ),
                                          ],
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
                                                color: isDark
                                                    ? Colors.white
                                                    : ColorConstant.black900,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LightSettingsSecurityScreen()),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        top: getVerticalSize(
                                          12.00,
                                        ),
                                        bottom: getVerticalSize(
                                          12.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    1.71,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    1.29,
                                                  ),
                                                ),
                                                child: SizedBox(
                                                  height: getVerticalSize(
                                                    24.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    20.05,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.profile4,
                                                    fit: BoxFit.fill,
                                                    color: isDark
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        getHorizontalSize(20)),
                                                child: Text(
                                                  "Security",
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              ),
                                            ],
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
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant.black900,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SelectLanguage()),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        top: getVerticalSize(
                                          12.00,
                                        ),
                                        bottom: getVerticalSize(
                                          12.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    1.71,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    1.71,
                                                  ),
                                                ),
                                                child: SizedBox(
                                                  height: getSize(
                                                    22.58,
                                                  ),
                                                  width: getSize(
                                                    22.58,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.profile5,
                                                    fit: BoxFit.fill,
                                                    color: isDark
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        getHorizontalSize(20)),
                                                child: Text(
                                                  "Language",
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        getHorizontalSize(20)),
                                                child: Text(
                                                  context.locale ==
                                                          Constants.engLocal
                                                      ? "English (US)"
                                                      : "العربية",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.20,
                                                  ),
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
                                                      color: isDark
                                                          ? Colors.white
                                                          : ColorConstant
                                                              .black900,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        24.00,
                                      ),
                                      top: getVerticalSize(
                                        12.00,
                                      ),
                                      bottom: getVerticalSize(
                                        12.00,
                                      ),
                                      right: getHorizontalSize(
                                        24.00,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  4.04,
                                                ),
                                                bottom: getVerticalSize(
                                                  3.92,
                                                ),
                                              ),
                                              child: SizedBox(
                                                height: getVerticalSize(
                                                  17.04,
                                                ),
                                                width: getHorizontalSize(
                                                  21.59,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.profile6,
                                                  fit: BoxFit.fill,
                                                  color: isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      getHorizontalSize(20)),
                                              child: Text(
                                                "Dark Mode",
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
                                            ),
                                          ],
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
                                          showOnOff: false,
                                          onToggle: (val) {
                                            setState(() {
                                              status = val;
                                            });
                                            themeManager.toggleTheme(val);
                                          },
                                          value: themeManager.themeMode ==
                                              ThemeMode.dark,
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
                                        12.00,
                                      ),
                                      bottom: getVerticalSize(
                                        12.00,
                                      ),
                                      right: getHorizontalSize(
                                        24.00,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  1.71,
                                                ),
                                                bottom: getVerticalSize(
                                                  1.57,
                                                ),
                                              ),
                                              child: SizedBox(
                                                height: getVerticalSize(
                                                  24.72,
                                                ),
                                                width: getHorizontalSize(
                                                  20.87,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.profile7,
                                                  fit: BoxFit.fill,
                                                  color: isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      getHorizontalSize(20)),
                                              child: Text(
                                                "Privacy Policy",
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
                                            ),
                                          ],
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
                                                color: isDark
                                                    ? Colors.white
                                                    : ColorConstant.black900,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LightHelpCenterFaqScreen()),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        top: getVerticalSize(
                                          12.00,
                                        ),
                                        bottom: getVerticalSize(
                                          12.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    0.88,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    0.73,
                                                  ),
                                                ),
                                                child: SizedBox(
                                                  height: getVerticalSize(
                                                    24.39,
                                                  ),
                                                  width: getHorizontalSize(
                                                    20.85,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.helpCenter,
                                                    fit: BoxFit.fill,
                                                    color: isDark
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        getHorizontalSize(18)),
                                                child: Text(
                                                  "Help Center",
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                0.08,
                                              ),
                                              right: getHorizontalSize(
                                                0.00,
                                              ),
                                              bottom: getVerticalSize(
                                                0.66,
                                              ),
                                            ),
                                            child: SizedBox(
                                              height: getVerticalSize(
                                                11.67,
                                              ),
                                              width: getHorizontalSize(
                                                5.83,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  right: getHorizontalSize(
                                                    0.00,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    0.66,
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
                                                      color: isDark
                                                          ? Colors.white
                                                          : ColorConstant
                                                              .black900,
                                                    )),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LightSettingsInviteFriendsScreen()),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        top: getVerticalSize(
                                          12.00,
                                        ),
                                        bottom: getVerticalSize(
                                          12.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    0.88,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    0.73,
                                                  ),
                                                ),
                                                child: SizedBox(
                                                  height: getVerticalSize(
                                                    24.39,
                                                  ),
                                                  width: getHorizontalSize(
                                                    20.85,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.profile8,
                                                    fit: BoxFit.fill,
                                                    color: isDark
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        getHorizontalSize(18)),
                                                child: Text(
                                                  "Invite Friends",
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                0.08,
                                              ),
                                              right: getHorizontalSize(
                                                0.00,
                                              ),
                                              bottom: getVerticalSize(
                                                0.66,
                                              ),
                                            ),
                                            child: SizedBox(
                                              height: getVerticalSize(
                                                11.67,
                                              ),
                                              width: getHorizontalSize(
                                                5.83,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  right: getHorizontalSize(
                                                    0.00,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    0.66,
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
                                                      color: isDark
                                                          ? Colors.white
                                                          : ColorConstant
                                                              .black900,
                                                    )),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                            top: Radius.circular(24),
                                          )),
                                          builder: (context) {
                                            return const LightSettingsLogoutModalBottomsheet();
                                          });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        top: getVerticalSize(
                                          12.00,
                                        ),
                                        bottom: getVerticalSize(
                                          12.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                1.71,
                                              ),
                                              bottom: getVerticalSize(
                                                1.71,
                                              ),
                                            ),
                                            child: SizedBox(
                                              height: getVerticalSize(
                                                21.58,
                                              ),
                                              width: getHorizontalSize(
                                                22.79,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.logout,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                22.57,
                                              ),
                                              right: getHorizontalSize(
                                                22.57,
                                              ),
                                            ),
                                            child: Text(
                                              "Logout",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.redA200,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: getVerticalSize(24),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
