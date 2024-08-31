import '../light_inbox_calls_screen/widgets/listellipse_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightInboxCallsScreen extends StatelessWidget {
  const LightInboxCallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    margin: getMargin(
                      top: 33,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: size.width,
                            margin: getMargin(
                              left: 24,
                              right: 24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 2,
                                    bottom: 2,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                          bottom: 3,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imageNotFound,
                                          height: getVerticalSize(
                                            15.00,
                                          ),
                                          width: getHorizontalSize(
                                            25.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 17,
                                        ),
                                        child: Text(
                                          "Inbox",
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgSearch,
                                          height: getVerticalSize(
                                            22.00,
                                          ),
                                          width: getHorizontalSize(
                                            21.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 26,
                                          bottom: 1,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imageNotFound,
                                          height: getSize(
                                            21.00,
                                          ),
                                          width: getSize(
                                            21.00,
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
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: double.infinity,
                            margin: getMargin(
                              left: 24,
                              top: 33,
                              right: 24,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      margin: getMargin(
                                        top: 3,
                                        bottom: 2,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 71,
                                              right: 71,
                                            ),
                                            child: Text(
                                              "lbl_chats",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.gray502,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              2.00,
                                            ),
                                            width: getHorizontalSize(
                                              190.00,
                                            ),
                                            margin: getMargin(
                                              top: 15,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.gray201,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  1.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        top: 3,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 76,
                                              right: 75,
                                            ),
                                            child: Text(
                                              "lbl_calls",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.gray500,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              4.00,
                                            ),
                                            width: getHorizontalSize(
                                              190.00,
                                            ),
                                            margin: getMargin(
                                              top: 15,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.gray500,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  2.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 24,
                                      right: 2,
                                    ),
                                    child: ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        return ListellipseItemWidget(
                                          index: index,
                                        );
                                      },
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
            ),
          ],
        ),
      ),
    );
  }
}
