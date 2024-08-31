import 'dart:async';

import 'package:mawater_qatar/presentation/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../core/app_export.dart';

// ignore_for_file: must_be_immutable
class AccountsetupsuccessfuldialogPage extends StatefulWidget {
  const AccountsetupsuccessfuldialogPage({super.key});

  @override
  State<AccountsetupsuccessfuldialogPage> createState() =>
      _AccountsetupsuccessfuldialogPageState();
}

class _AccountsetupsuccessfuldialogPageState
    extends State<AccountsetupsuccessfuldialogPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  40.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              child: Image.asset(
                ImageConstant.accountCongrats,
                width: getHorizontalSize(185),
                height: getVerticalSize(180),
              )),
          Padding(
            padding: EdgeInsets.only(
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
            child: Text(
              "Congratulations!",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray500,
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              276.00,
            ),
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                16.20,
              ),
              right: getHorizontalSize(
                10.00,
              ),
            ),
            child: Text(
              "Your account is ready to use. You will be redirected to the Home page in a few seconds..",
              maxLines: null,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                32.00,
              ),
              right: getHorizontalSize(
                10.00,
              ),
              bottom: getVerticalSize(
                20.00,
              ),
            ),
            child: SpinKitCircle(
              color: ColorConstant.gray500,
              size: 50.0,
            ),
          ),
          SizedBox(
            height: getVerticalSize(30),
          )
        ],
      ),
    );
  }
}
