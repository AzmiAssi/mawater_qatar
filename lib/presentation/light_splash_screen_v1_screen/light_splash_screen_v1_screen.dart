import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../core/app_export.dart';
import '../SplashScreen/splash_screen.dart';

class LightSplashScreenV1Screen extends StatefulWidget {
  const LightSplashScreenV1Screen({super.key});

  @override
  State<LightSplashScreenV1Screen> createState() =>
      _LightSplashScreenV1ScreenState();
}

class _LightSplashScreenV1ScreenState extends State<LightSplashScreenV1Screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const SplashScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),

                    right: getHorizontalSize(
                      10.00,
                    ),
                    bottom: getVerticalSize(
                      20.00,
                    ),
                    // top: getVerticalSize(
                    //   210.00,
                    // ),
                  ),
                  child: const SpinKitCircle(
                    color: Colors.transparent,
                    size: 70.0,
                  )),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Image.asset(
                  ImageConstant.appLogo,
                  height: size.height * 0.5,
                  width: size.width,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),

                    right: getHorizontalSize(
                      10.00,
                    ),
                    bottom: getVerticalSize(
                      60.00,
                    ),
                    // top: getVerticalSize(
                    //   210.00,
                    // ),
                  ),
                  child: SpinKitCircle(
                    color: ColorConstant.gray500,
                    size: 70.0,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
