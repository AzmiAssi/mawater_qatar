import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/app_export.dart';
import '../light_help_center_contact_us_screen/light_help_center_contact_us_screen.dart';

class LightHelpCenterFaqScreen extends StatefulWidget {
  const LightHelpCenterFaqScreen({super.key});

  @override
  State<LightHelpCenterFaqScreen> createState() =>
      _LightHelpCenterFaqScreenState();
}

class _LightHelpCenterFaqScreenState extends State<LightHelpCenterFaqScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController stateDefaultSController = TextEditingController();

  bool general = true;
  bool account = false;
  bool shipping = false;
  bool cost = false;
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Help Center",
          style: TextStyle(
            fontSize: getFontSize(
              24,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: getVerticalSize(
                  21.71,
                ),
                right: getHorizontalSize(
                  20.00,
                ),
                bottom: getVerticalSize(
                  21.71,
                ),
                left: getHorizontalSize(20)),
            child: SizedBox(
              height: getSize(
                21.58,
              ),
              width: getSize(
                21.58,
              ),
              child: SvgPicture.asset(
                ImageConstant.icon,
                fit: BoxFit.fill,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  33.50,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    0.00,
                  ),
                  right: getHorizontalSize(
                    0.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getVerticalSize(50),
                      child: TabBar(
                          controller: tabController,
                          indicatorWeight: 6,
                          indicator: UnderlineTabIndicator(
                              insets: EdgeInsets.symmetric(
                                  horizontal: getHorizontalSize(16)),
                              borderSide:
                                  BorderSide(color: ColorConstant.gray500)),
                          labelColor: ColorConstant.gray500,
                          unselectedLabelColor:
                              isDark ? Colors.white : ColorConstant.gray500,
                          labelStyle: TextStyle(
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                          ),
                          tabs: const [
                            Tab(
                              text: "FAQ",
                            ),
                            Tab(
                              text: "Help center",
                            )
                          ]),
                    ),
                    SizedBox(
                      height: getVerticalSize(800),
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Column(
                            children: [
                              FadeInUp(
                                child: SizedBox(
                                  height: getVerticalSize(70),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          24.00,
                                        ),
                                        left: getHorizontalSize(10),
                                        right: getHorizontalSize(10)),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              general = true;
                                              account = false;
                                              shipping = false;
                                              cost = false;
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal:
                                                    getHorizontalSize(6)),
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                25.50,
                                              ),
                                              top: getVerticalSize(
                                                8.00,
                                              ),
                                              right: getHorizontalSize(
                                                25.50,
                                              ),
                                              bottom: getVerticalSize(
                                                8.00,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: ColorConstant.gray500),
                                              color: general
                                                  ? ColorConstant.gray500
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  19.00,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "General",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: general
                                                    ? ColorConstant.whiteA700
                                                    : ColorConstant.gray500,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              general = false;
                                              account = true;
                                              shipping = false;
                                              cost = false;
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal:
                                                    getHorizontalSize(6)),
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                25.50,
                                              ),
                                              top: getVerticalSize(
                                                8.00,
                                              ),
                                              right: getHorizontalSize(
                                                25.50,
                                              ),
                                              bottom: getVerticalSize(
                                                8.00,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: ColorConstant.gray500),
                                              color: account
                                                  ? ColorConstant.gray500
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  19.00,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "Account",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: account
                                                    ? ColorConstant.whiteA700
                                                    : ColorConstant.gray500,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              general = false;
                                              account = false;
                                              shipping = true;
                                              cost = false;
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal:
                                                    getHorizontalSize(6)),
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                25.50,
                                              ),
                                              top: getVerticalSize(
                                                8.00,
                                              ),
                                              right: getHorizontalSize(
                                                25.50,
                                              ),
                                              bottom: getVerticalSize(
                                                8.00,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: ColorConstant.gray500),
                                              color: shipping
                                                  ? ColorConstant.gray500
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  19.00,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "Shipping",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: shipping
                                                    ? ColorConstant.whiteA700
                                                    : ColorConstant.gray500,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              general = false;
                                              account = false;
                                              shipping = false;
                                              cost = true;
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal:
                                                    getHorizontalSize(6)),
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                25.50,
                                              ),
                                              top: getVerticalSize(
                                                8.00,
                                              ),
                                              right: getHorizontalSize(
                                                25.50,
                                              ),
                                              bottom: getVerticalSize(
                                                8.00,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: ColorConstant.gray500),
                                              color: cost
                                                  ? ColorConstant.gray500
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  19.00,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "Cost",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: cost
                                                    ? ColorConstant.whiteA700
                                                    : ColorConstant.gray500,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
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
                              if (general)
                                FadeInUp(
                                  child: SizedBox(
                                    height: getVerticalSize(660),
                                    child: SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            14.00,
                                          ),
                                          right: getHorizontalSize(
                                            14.00,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  24.00,
                                                ),
                                              ),
                                              child: SizedBox(
                                                width: getHorizontalSize(
                                                  380.00,
                                                ),
                                                child: TextFormField(
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      stateDefaultSController,
                                                  decoration: InputDecoration(
                                                    hintText: 'Search',
                                                    prefixIcon: Container(
                                                      margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          22.32,
                                                        ),
                                                        top: getVerticalSize(
                                                          20.32,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          14.04,
                                                        ),
                                                        bottom: getVerticalSize(
                                                          19.66,
                                                        ),
                                                      ),
                                                      child: SizedBox(
                                                        height: getSize(
                                                          16.02,
                                                        ),
                                                        width: getSize(
                                                          15.64,
                                                        ),
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgSearch,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    suffixIcon: Padding(
                                                      padding: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                          15.00,
                                                        ),
                                                      ),
                                                      child: IconButton(
                                                        onPressed:
                                                            stateDefaultSController
                                                                .clear,
                                                        icon: Icon(
                                                          Icons.clear,
                                                          color: Colors
                                                              .grey.shade600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      14.0,
                                                    ),
                                                  ),
                                                  onChanged: (value) {},
                                                ),
                                              ),
                                            ),
                                            Accordion(
                                              paddingBetweenClosedSections:
                                                  getVerticalSize(24),
                                              paddingBetweenOpenSections:
                                                  getVerticalSize(24),
                                              maxOpenSections: 2,
                                              headerBorderRadius: 20,
                                              contentBorderColor:
                                                  Colors.transparent,
                                              contentBorderRadius: 20,
                                              contentVerticalPadding:
                                                  getVerticalSize(24),
                                              contentHorizontalPadding:
                                                  getHorizontalSize(0),
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
                                              headerBackgroundColor: isDark
                                                  ? ColorConstant.darkTextField
                                                  : ColorConstant.whiteA700,
                                              headerBackgroundColorOpened:
                                                  isDark
                                                      ? ColorConstant
                                                          .darkTextField
                                                      : ColorConstant.whiteA700,
                                              scaleWhenAnimating: false,
                                              openAndCloseAnimation: true,
                                              headerPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 0,
                                                      horizontal: 0),
                                              sectionOpeningHapticFeedback:
                                                  SectionHapticFeedback.heavy,
                                              sectionClosingHapticFeedback:
                                                  SectionHapticFeedback.light,
                                              contentBackgroundColor: isDark
                                                  ? ColorConstant.darkTextField
                                                  : ColorConstant.whiteA700,
                                              children: [
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to use Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to use Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to use Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to use Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to use Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: getVerticalSize(24),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              else if (account)
                                FadeInUp(
                                  child: SizedBox(
                                    height: getVerticalSize(660),
                                    child: SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            14.00,
                                          ),
                                          right: getHorizontalSize(
                                            14.00,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  24.00,
                                                ),
                                              ),
                                              child: SizedBox(
                                                width: getHorizontalSize(
                                                  380.00,
                                                ),
                                                child: TextFormField(
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      stateDefaultSController,
                                                  decoration: InputDecoration(
                                                    hintText: 'Search',
                                                    prefixIcon: Container(
                                                      margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          22.32,
                                                        ),
                                                        top: getVerticalSize(
                                                          20.32,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          14.04,
                                                        ),
                                                        bottom: getVerticalSize(
                                                          19.66,
                                                        ),
                                                      ),
                                                      child: SizedBox(
                                                        height: getSize(
                                                          16.02,
                                                        ),
                                                        width: getSize(
                                                          15.64,
                                                        ),
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgSearch,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    suffixIcon: Padding(
                                                      padding: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                          15.00,
                                                        ),
                                                      ),
                                                      child: IconButton(
                                                        onPressed:
                                                            stateDefaultSController
                                                                .clear,
                                                        icon: Icon(
                                                          Icons.clear,
                                                          color: Colors
                                                              .grey.shade600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      14.0,
                                                    ),
                                                  ),
                                                  onChanged: (value) {},
                                                ),
                                              ),
                                            ),
                                            Accordion(
                                              paddingBetweenClosedSections:
                                                  getVerticalSize(24),
                                              paddingBetweenOpenSections:
                                                  getVerticalSize(24),
                                              maxOpenSections: 2,
                                              contentBackgroundColor: isDark
                                                  ? ColorConstant.darkTextField
                                                  : ColorConstant.whiteA700,
                                              headerBorderRadius: 20,
                                              contentBorderColor:
                                                  Colors.transparent,
                                              contentVerticalPadding:
                                                  getVerticalSize(24),
                                              contentHorizontalPadding:
                                                  getHorizontalSize(0),
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
                                              headerBackgroundColor: isDark
                                                  ? ColorConstant.darkTextField
                                                  : ColorConstant.whiteA700,
                                              headerBackgroundColorOpened:
                                                  isDark
                                                      ? ColorConstant
                                                          .darkTextField
                                                      : ColorConstant.whiteA700,
                                              scaleWhenAnimating: false,
                                              openAndCloseAnimation: true,
                                              headerPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 0,
                                                      horizontal: 0),
                                              sectionOpeningHapticFeedback:
                                                  SectionHapticFeedback.heavy,
                                              sectionClosingHapticFeedback:
                                                  SectionHapticFeedback.light,
                                              children: [
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Is Saska free to use?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Is Saska free to use?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Is Saska free to use?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Is Saska free to use?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Is Saska free to use?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: getVerticalSize(24),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              else if (shipping)
                                FadeInUp(
                                  child: SizedBox(
                                    height: getVerticalSize(660),
                                    child: SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            14.00,
                                          ),
                                          right: getHorizontalSize(
                                            14.00,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  24.00,
                                                ),
                                              ),
                                              child: SizedBox(
                                                width: getHorizontalSize(
                                                  380.00,
                                                ),
                                                child: TextFormField(
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      stateDefaultSController,
                                                  decoration: InputDecoration(
                                                    hintText: 'Search',
                                                    prefixIcon: Container(
                                                      margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          22.32,
                                                        ),
                                                        top: getVerticalSize(
                                                          20.32,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          14.04,
                                                        ),
                                                        bottom: getVerticalSize(
                                                          19.66,
                                                        ),
                                                      ),
                                                      child: SizedBox(
                                                        height: getSize(
                                                          16.02,
                                                        ),
                                                        width: getSize(
                                                          15.64,
                                                        ),
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgSearch,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    suffixIcon: Padding(
                                                      padding: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                          15.00,
                                                        ),
                                                      ),
                                                      child: IconButton(
                                                        onPressed:
                                                            stateDefaultSController
                                                                .clear,
                                                        icon: Icon(
                                                          Icons.clear,
                                                          color: Colors
                                                              .grey.shade600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      14.0,
                                                    ),
                                                  ),
                                                  onChanged: (value) {},
                                                ),
                                              ),
                                            ),
                                            Accordion(
                                              contentBackgroundColor: isDark
                                                  ? ColorConstant.darkTextField
                                                  : ColorConstant.whiteA700,
                                              paddingBetweenClosedSections:
                                                  getVerticalSize(24),
                                              paddingBetweenOpenSections:
                                                  getVerticalSize(24),
                                              maxOpenSections: 2,
                                              headerBorderRadius: 20,
                                              contentBorderColor:
                                                  Colors.transparent,
                                              contentVerticalPadding:
                                                  getVerticalSize(24),
                                              contentHorizontalPadding:
                                                  getHorizontalSize(0),
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
                                              headerBackgroundColor: isDark
                                                  ? ColorConstant.darkTextField
                                                  : ColorConstant.whiteA700,
                                              headerBackgroundColorOpened:
                                                  isDark
                                                      ? ColorConstant
                                                          .darkTextField
                                                      : ColorConstant.whiteA700,
                                              scaleWhenAnimating: false,
                                              openAndCloseAnimation: true,
                                              headerPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 0,
                                                      horizontal: 0),
                                              sectionOpeningHapticFeedback:
                                                  SectionHapticFeedback.heavy,
                                              sectionClosingHapticFeedback:
                                                  SectionHapticFeedback.light,
                                              children: [
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to make offer on Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to make offer on Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to make offer on Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to make offer on Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to make offer on Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: getVerticalSize(24),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              else if (cost)
                                FadeInUp(
                                  child: SizedBox(
                                    height: getVerticalSize(660),
                                    child: SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            14.00,
                                          ),
                                          right: getHorizontalSize(
                                            14.00,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  24.00,
                                                ),
                                              ),
                                              child: SizedBox(
                                                width: getHorizontalSize(
                                                  380.00,
                                                ),
                                                child: TextFormField(
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      stateDefaultSController,
                                                  decoration: InputDecoration(
                                                    hintText: 'Search',
                                                    prefixIcon: Container(
                                                      margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          22.32,
                                                        ),
                                                        top: getVerticalSize(
                                                          20.32,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          14.04,
                                                        ),
                                                        bottom: getVerticalSize(
                                                          19.66,
                                                        ),
                                                      ),
                                                      child: SizedBox(
                                                        height: getSize(
                                                          16.02,
                                                        ),
                                                        width: getSize(
                                                          15.64,
                                                        ),
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgSearch,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    suffixIcon: Padding(
                                                      padding: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                          15.00,
                                                        ),
                                                      ),
                                                      child: IconButton(
                                                        onPressed:
                                                            stateDefaultSController
                                                                .clear,
                                                        icon: Icon(
                                                          Icons.clear,
                                                          color: Colors
                                                              .grey.shade600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      14.0,
                                                    ),
                                                  ),
                                                  onChanged: (value) {},
                                                ),
                                              ),
                                            ),
                                            Accordion(
                                              contentBackgroundColor: isDark
                                                  ? ColorConstant.darkTextField
                                                  : ColorConstant.whiteA700,
                                              paddingBetweenClosedSections:
                                                  getVerticalSize(24),
                                              paddingBetweenOpenSections:
                                                  getVerticalSize(24),
                                              maxOpenSections: 2,
                                              headerBorderRadius: 20,
                                              contentBorderColor:
                                                  Colors.transparent,
                                              contentVerticalPadding:
                                                  getVerticalSize(24),
                                              contentHorizontalPadding:
                                                  getHorizontalSize(0),
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
                                              headerBackgroundColor: isDark
                                                  ? ColorConstant.darkTextField
                                                  : ColorConstant.whiteA700,
                                              headerBackgroundColorOpened:
                                                  isDark
                                                      ? ColorConstant
                                                          .darkTextField
                                                      : ColorConstant.whiteA700,
                                              scaleWhenAnimating: false,
                                              openAndCloseAnimation: true,
                                              headerPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 0,
                                                      horizontal: 0),
                                              sectionOpeningHapticFeedback:
                                                  SectionHapticFeedback.heavy,
                                              sectionClosingHapticFeedback:
                                                  SectionHapticFeedback.light,
                                              children: [
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to use Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to use Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to use Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                AccordionSection(
                                                  isOpen: false,
                                                  header: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            25.21,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            25.20,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "How to use Saska?",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .gray200,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                        Text(
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: getVerticalSize(24),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          FadeInUp(child: LightHelpCenterContactUsScreen())
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
    );
  }
}
