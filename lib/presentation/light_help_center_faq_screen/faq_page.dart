import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/app_export.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Accordion(
          maxOpenSections: 2,
          headerBorderRadius: 20,
          contentBorderColor: Colors.transparent,
          contentVerticalPadding: getVerticalSize(24),
          contentHorizontalPadding: getHorizontalSize(24),
          rightIcon: Padding(
            padding: EdgeInsets.only(
              top: getVerticalSize(
                31.00,
              ),
              right: getHorizontalSize(
                30.00,
              ),
              left: getHorizontalSize(
                30.00,
              ),
              bottom: getVerticalSize(
                31.00,
              ),
            ),
            child: SizedBox(
              height: getVerticalSize(
                10.00,
              ),
              width: getHorizontalSize(
                12.00,
              ),
              child: SvgPicture.asset(
                ImageConstant.imgVector6,
                fit: BoxFit.fill,
              ),
            ),
          ),
          flipRightIconIfOpen: true,
          headerBackgroundColor:
              isDark ? ColorConstant.darkTextField : ColorConstant.whiteA700,
          headerBackgroundColorOpened:
              isDark ? ColorConstant.darkTextField : ColorConstant.whiteA700,
          scaleWhenAnimating: false,
          openAndCloseAnimation: false,
          headerPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
            AccordionSection(
              isOpen: false,
              header: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        25.21,
                      ),
                      bottom: getVerticalSize(
                        25.20,
                      ),
                    ),
                    child: Text(
                      "How to use Saska?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //     top: getVerticalSize(
                  //       31.00,
                  //     ),
                  //     right: getHorizontalSize(
                  //       30.00,
                  //     ),
                  //     left: getHorizontalSize(
                  //       30.00,
                  //     ),
                  //     bottom: getVerticalSize(
                  //       31.00,
                  //     ),
                  //   ),
                  //   child: Container(
                  //     height: getVerticalSize(
                  //       10.00,
                  //     ),
                  //     width: getHorizontalSize(
                  //       12.00,
                  //     ),
                  //     child: SvgPicture.asset(
                  //       ImageConstant.imgVector6,
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              content: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getHorizontalSize(24)),
                child: Column(
                  children: [
                    Container(
                      height: getVerticalSize(1),
                      color: ColorConstant.gray200,
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                  ],
                ),
              ),
            ),
            AccordionSection(
              isOpen: false,
              header: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        25.21,
                      ),
                      bottom: getVerticalSize(
                        25.20,
                      ),
                    ),
                    child: Text(
                      "How to use Saska?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //     top: getVerticalSize(
                  //       31.00,
                  //     ),
                  //     right: getHorizontalSize(
                  //       30.00,
                  //     ),
                  //     left: getHorizontalSize(
                  //       30.00,
                  //     ),
                  //     bottom: getVerticalSize(
                  //       31.00,
                  //     ),
                  //   ),
                  //   child: Container(
                  //     height: getVerticalSize(
                  //       10.00,
                  //     ),
                  //     width: getHorizontalSize(
                  //       12.00,
                  //     ),
                  //     child: SvgPicture.asset(
                  //       ImageConstant.imgVector6,
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              content: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getHorizontalSize(24)),
                child: Column(
                  children: [
                    Container(
                      height: getVerticalSize(1),
                      color: ColorConstant.gray200,
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                  ],
                ),
              ),
            ),
            AccordionSection(
              isOpen: false,
              header: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        25.21,
                      ),
                      bottom: getVerticalSize(
                        25.20,
                      ),
                    ),
                    child: Text(
                      "How to use Saska?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //     top: getVerticalSize(
                  //       31.00,
                  //     ),
                  //     right: getHorizontalSize(
                  //       30.00,
                  //     ),
                  //     left: getHorizontalSize(
                  //       30.00,
                  //     ),
                  //     bottom: getVerticalSize(
                  //       31.00,
                  //     ),
                  //   ),
                  //   child: Container(
                  //     height: getVerticalSize(
                  //       10.00,
                  //     ),
                  //     width: getHorizontalSize(
                  //       12.00,
                  //     ),
                  //     child: SvgPicture.asset(
                  //       ImageConstant.imgVector6,
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              content: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getHorizontalSize(24)),
                child: Column(
                  children: [
                    Container(
                      height: getVerticalSize(1),
                      color: ColorConstant.gray200,
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                  ],
                ),
              ),
            ),
            AccordionSection(
              isOpen: false,
              header: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        25.21,
                      ),
                      bottom: getVerticalSize(
                        25.20,
                      ),
                    ),
                    child: Text(
                      "How to use Saska?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //     top: getVerticalSize(
                  //       31.00,
                  //     ),
                  //     right: getHorizontalSize(
                  //       30.00,
                  //     ),
                  //     left: getHorizontalSize(
                  //       30.00,
                  //     ),
                  //     bottom: getVerticalSize(
                  //       31.00,
                  //     ),
                  //   ),
                  //   child: Container(
                  //     height: getVerticalSize(
                  //       10.00,
                  //     ),
                  //     width: getHorizontalSize(
                  //       12.00,
                  //     ),
                  //     child: SvgPicture.asset(
                  //       ImageConstant.imgVector6,
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              content: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getHorizontalSize(24)),
                child: Column(
                  children: [
                    Container(
                      height: getVerticalSize(1),
                      color: ColorConstant.gray200,
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                  ],
                ),
              ),
            ),
            AccordionSection(
              isOpen: false,
              header: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        25.21,
                      ),
                      bottom: getVerticalSize(
                        25.20,
                      ),
                    ),
                    child: Text(
                      "How to use Saska?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //     top: getVerticalSize(
                  //       31.00,
                  //     ),
                  //     right: getHorizontalSize(
                  //       30.00,
                  //     ),
                  //     left: getHorizontalSize(
                  //       30.00,
                  //     ),
                  //     bottom: getVerticalSize(
                  //       31.00,
                  //     ),
                  //   ),
                  //   child: Container(
                  //     height: getVerticalSize(
                  //       10.00,
                  //     ),
                  //     width: getHorizontalSize(
                  //       12.00,
                  //     ),
                  //     child: SvgPicture.asset(
                  //       ImageConstant.imgVector6,
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              content: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getHorizontalSize(24)),
                child: Column(
                  children: [
                    Container(
                      height: getVerticalSize(1),
                      color: ColorConstant.gray200,
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
