import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../homePage.dart';
import '../light_e_receipt_screen/light_e_receipt_screen.dart';

// ignore_for_file: must_be_immutable
class TopupsuccessfuldialogPage extends StatelessWidget {
  const TopupsuccessfuldialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Dialog(
      child: Container(
        margin: EdgeInsets.only(
          left: getHorizontalSize(
            10.00,
          ),
          right: getHorizontalSize(
            10.00,
          ),
        ),
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
                  ImageConstant.topUpSuccess,
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
                "Top Up Successful!",
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
                "The balance will be added\nto your wallet.",
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
                  0.00,
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LightEReceiptScreen()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: getVerticalSize(
                    58.00,
                  ),
                  width: getHorizontalSize(
                    276.00,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray500,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        29.00,
                      ),
                    ),
                  ),
                  child: Text(
                    "View E-Receipt",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
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
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  10.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
                bottom: getVerticalSize(
                  32.00,
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                      (Route<dynamic> route) => false);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: getVerticalSize(
                    58.00,
                  ),
                  width: getHorizontalSize(
                    276.00,
                  ),
                  decoration: BoxDecoration(
                    color:
                        isDark ? ColorConstant.darkLine : ColorConstant.gray200,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        29.00,
                      ),
                    ),
                  ),
                  child: Text(
                    "Cancel",
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
            ),
          ],
        ),
      ),
    );
  }
}
