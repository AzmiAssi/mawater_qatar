import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mawater_qatar/translations/locale_keys.g.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../LetsInScreen/lets_in_screen.dart';

class StepsScreen extends StatefulWidget {
  const StepsScreen({super.key});

  @override
  State<StepsScreen> createState() => _StepsScreenState();
}

class _StepsScreenState extends State<StepsScreen> {
  PageController? _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
    _pageController!.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: getVerticalSize(700),
                child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      _currentIndex = index;
                      setState(() {});
                    },
                    children: [
                      FadeInUp(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  10.00,
                                ),
                                top: getVerticalSize(
                                  141.00,
                                ),
                                right: getHorizontalSize(
                                  10.00,
                                ),
                              ),
                              child: SizedBox(
                                height: getVerticalSize(
                                  250.00,
                                ),
                                width: getHorizontalSize(
                                  346.81,
                                ),
                                child: Image.asset(
                                  ImageConstant.onBoarding,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                380.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  10.00,
                                ),
                                top: getVerticalSize(
                                  125.00,
                                ),
                                right: getHorizontalSize(
                                  10.00,
                                ),
                              ),
                              child: Text(
                                tr(LocaleKeys.steps1),
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    40,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FadeInUp(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  10.00,
                                ),
                                top: getVerticalSize(
                                  141.00,
                                ),
                                right: getHorizontalSize(
                                  10.00,
                                ),
                              ),
                              child: SizedBox(
                                height: getVerticalSize(
                                  250.00,
                                ),
                                width: getHorizontalSize(
                                  346.81,
                                ),
                                child: Image.asset(
                                  ImageConstant.onBoarding,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                380.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  10.00,
                                ),
                                top: getVerticalSize(
                                  125.00,
                                ),
                                right: getHorizontalSize(
                                  10.00,
                                ),
                              ),
                              child: Text(
                                tr(LocaleKeys.steps2),
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    40,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FadeInUp(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  10.00,
                                ),
                                top: getVerticalSize(
                                  141.00,
                                ),
                                right: getHorizontalSize(
                                  10.00,
                                ),
                              ),
                              child: SizedBox(
                                height: getVerticalSize(
                                  250.00,
                                ),
                                width: getHorizontalSize(
                                  346.81,
                                ),
                                child: Image.asset(
                                  ImageConstant.onBoarding,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                380.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  10.00,
                                ),
                                top: getVerticalSize(
                                  125.00,
                                ),
                                right: getHorizontalSize(
                                  10.00,
                                ),
                              ),
                              child: Text(
                                tr(LocaleKeys.steps3),
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    40,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              Container(
                height: getVerticalSize(
                  8.00,
                ),
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    30.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: AnimatedSmoothIndicator(
                  activeIndex: _currentIndex,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 12,
                    activeDotColor: ColorConstant.gray500,
                    dotColor: isDark ? Colors.white : ColorConstant.gray300,
                    dotHeight: getVerticalSize(
                      4.00,
                    ),
                    dotWidth: getHorizontalSize(
                      10.00,
                    ),
                    activeDotScale: 2,
                    radius: 2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    60.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                  bottom: getVerticalSize(
                    20.00,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    if (_currentIndex < 2) {
                      _pageController!.animateToPage(_currentIndex + 1,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn);
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LetsInScreen()),
                      );
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: getVerticalSize(
                      58.00,
                    ),
                    width: size.width,
                    decoration: BoxDecoration(
                      color: ColorConstant.gray500,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          29.00,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.gray500.withOpacity(0.2),
                          spreadRadius: getHorizontalSize(
                            5.00,
                          ),
                          blurRadius: getHorizontalSize(
                            7.00,
                          ),
                          offset: const Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                    child: Text(
                      _currentIndex < 2
                          ? tr(LocaleKeys.next)
                          : tr(LocaleKeys.getStarted),
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
            ],
          ),
        ),
      ),
    );
  }
}
