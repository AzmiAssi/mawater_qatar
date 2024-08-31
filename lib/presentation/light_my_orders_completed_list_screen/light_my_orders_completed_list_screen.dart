import '../light_my_orders_completed_list_screen/widgets/listproductname1_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightMyOrdersCompletedListScreen extends StatelessWidget {
  const LightMyOrdersCompletedListScreen({super.key});

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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 5,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                          bottom: 6,
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
                                          "lbl_my_orders",
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
                                              left: 69,
                                              right: 69,
                                            ),
                                            child: Text(
                                              "lbl_active",
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
                                        top: 5,
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
                                              left: 50,
                                              right: 50,
                                            ),
                                            child: Text(
                                              "lbl_completed",
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
                                              top: 12,
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
                                Padding(
                                  padding: getPadding(
                                    top: 24,
                                  ),
                                  child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return const Listproductname1ItemWidget();
                                    },
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
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      16.00,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      16.00,
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: getPadding(
                  top: 13,
                  bottom: 39,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: getMargin(
                              left: 48,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 3,
                                      right: 3,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVectorGray501,
                                      height: getVerticalSize(
                                        20.00,
                                      ),
                                      width: getHorizontalSize(
                                        19.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 4,
                                  ),
                                  child: Text(
                                    "Home",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.gray502,
                                      fontSize: getFontSize(
                                        10,
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
                          Container(
                            margin: getMargin(
                              left: 47,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 5,
                                    right: 5,
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imageNotFound,
                                    height: getSize(
                                      20.00,
                                    ),
                                    width: getSize(
                                      20.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "Orders",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          10,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 49,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 1,
                                      right: 2,
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imageNotFound,
                                      height: getSize(
                                        20.00,
                                      ),
                                      width: getSize(
                                        20.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 4,
                                  ),
                                  child: Text(
                                    "Inbox",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.gray502,
                                      fontSize: getFontSize(
                                        10,
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: getMargin(
                              top: 1,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 4,
                                      right: 4,
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imageNotFound,
                                      height: getVerticalSize(
                                        17.00,
                                      ),
                                      width: getHorizontalSize(
                                        19.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Text(
                                    "Wallet",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.gray502,
                                      fontSize: getFontSize(
                                        10,
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
                          Container(
                            margin: getMargin(
                              left: 49,
                              right: 46,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 6,
                                    right: 6,
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imageNotFound,
                                    height: getVerticalSize(
                                      18.00,
                                    ),
                                    width: getHorizontalSize(
                                      14.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "lbl_profile",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray502,
                                        fontSize: getFontSize(
                                          10,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                ),
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
          ],
        ),
      ),
    );
  }
}
