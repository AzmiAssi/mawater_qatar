// ignore_for_file: deprecated_member_use, use_super_parameters, file_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/presentation/ADS/add_ads_screen.dart';
import 'package:mawater_qatar/presentation/LetsInScreen/lets_in_screen.dart';
import 'package:mawater_qatar/presentation/light_inbox_chats_screen/light_inbox_chats_screen.dart';
import 'package:mawater_qatar/presentation/light_my_e_wallet_screen/light_my_e_wallet_screen.dart';
import 'package:mawater_qatar/presentation/light_profile_settings_screen/light_profile_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:mawater_qatar/translations/locale_keys.g.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'light_home_full_page_screen/light_home_full_page_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = "HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = [
    const LightHomeFullPageScreen(),
    const LightInboxChatsScreen(),
    const AddAdsScreen(),
    const LightMyEWalletScreen(),
    const LightProfileSettingsScreen()
  ];

  int selectedNavBarIndex = 0;

  bool pop = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: isDark ? ColorConstant.darkBg : Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: ColorConstant.gray500,
        unselectedItemColor: ColorConstant.gray400,
        selectedLabelStyle: TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w900,
        ),
        unselectedLabelStyle: TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        ),
        currentIndex: selectedNavBarIndex,
        onTap: (index) {
          setState(() {
            selectedNavBarIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(ImageConstant.inActiveHome,
                width: getHorizontalSize(24),
                height: getVerticalSize(24),
                color: isDark ? Colors.white : ColorConstant.gray400),
            activeIcon: Image.asset(
              ImageConstant.activeHome,
              width: getHorizontalSize(24),
              height: getVerticalSize(24),
              color: ColorConstant.gray500,
            ),
            label: tr(LocaleKeys.home),
          ),
          BottomNavigationBarItem(
              icon: Image.asset(ImageConstant.inActive3,
                  width: getHorizontalSize(24),
                  height: getVerticalSize(24),
                  color: isDark ? Colors.white : ColorConstant.gray400),
              activeIcon: Image.asset(
                ImageConstant.active3,
                width: getHorizontalSize(24),
                height: getVerticalSize(24),
                color: ColorConstant.gray500,
              ),
              label: "Inbox"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageConstant.plus,
                  width: getHorizontalSize(45),
                  height: getVerticalSize(45),
                  color: isDark ? Colors.white : ColorConstant.gray400),
              activeIcon: SvgPicture.asset(
                ImageConstant.plus,
                width: getHorizontalSize(45),
                height: getVerticalSize(45),
                color: ColorConstant.gray500,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(ImageConstant.inActive4,
                  width: getHorizontalSize(24),
                  height: getVerticalSize(24),
                  color: isDark ? Colors.white : ColorConstant.gray400),
              activeIcon: Image.asset(
                ImageConstant.active4,
                width: getHorizontalSize(24),
                height: getVerticalSize(24),
                color: ColorConstant.gray500,
              ),
              label: "Wallet"),
          BottomNavigationBarItem(
              icon: Image.asset(ImageConstant.inActive5,
                  width: getHorizontalSize(24),
                  height: getVerticalSize(24),
                  color: isDark ? Colors.white : ColorConstant.gray400),
              activeIcon: Image.asset(
                ImageConstant.active5,
                width: getHorizontalSize(24),
                height: getVerticalSize(24),
                color: ColorConstant.gray500,
              ),
              label: "Profile"),
        ],
      ),
      body: WillPopScope(
          onWillPop: () async {
            return (await showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: const Text(
                            "Are you sure",
                            style:
                                TextStyle(fontSize: 13, fontFamily: "Urbanist"),
                          ),
                          title: const Text(
                            "Do you want to exit the app?",
                            style:
                                TextStyle(fontSize: 13, fontFamily: "Urbanist"),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text(
                                "No",
                                style: TextStyle(
                                    color: isDark ? Colors.white : Colors.black,
                                    fontSize: 13,
                                    fontFamily: "Urbanist"),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: const Text(
                                "Yes",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 13,
                                    fontFamily: "Urbanist"),
                              ),
                            ),
                          ],
                        ))) ??
                false;
          },
          child: (selectedNavBarIndex != 0 && selectedNavBarIndex != 4) &&
                  (userController.myUser.value.userId == "" ||
                      userController.myUser.value.userId == null)
              ? const LetsInScreen()
              : screens[selectedNavBarIndex]),
    );
  }
}
