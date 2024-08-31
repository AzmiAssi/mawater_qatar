import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mawater_qatar/presentation/homePage.dart';
import 'package:mawater_qatar/translations/locale_keys.g.dart';
import '../../core/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    ImageConstant.appLogo,
                    width: size.width,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  child: Container(
                    height: size.height,
                    width: size.width,
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        10.00,
                      ),
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(
                          0.5,
                          -3.0616171314629196e-17,
                        ),
                        end: const Alignment(
                          0.5,
                          0.9999999999999999,
                        ),
                        colors: [
                          ColorConstant.gray80000,
                          ColorConstant.bluegray900,
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              32.00,
                            ),
                            right: getHorizontalSize(
                              32.00,
                            ),
                          ),
                          child: Text(
                            LocaleKeys.welcome,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                30,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ).tr(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              32.00,
                            ),
                            top: getVerticalSize(
                              12.31,
                            ),
                            right: getHorizontalSize(
                              32.00,
                            ),
                          ),
                          child: Text(
                            Constants.appName,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                40,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w900,
                            ),
                          ).tr(),
                        ),
                        Container(
                          width: getHorizontalSize(
                            332.00,
                          ),
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              32.00,
                            ),
                            top: getVerticalSize(
                              24.20,
                            ),
                            right: getHorizontalSize(
                              32.00,
                            ),
                            bottom: getVerticalSize(
                              48.00,
                            ),
                          ),
                          child: Text(
                            tr(LocaleKeys.appStartSplash),
                            maxLines: null,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
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
