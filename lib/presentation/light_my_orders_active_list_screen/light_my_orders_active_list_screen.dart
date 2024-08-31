import 'package:animate_do/animate_do.dart';
import 'package:mawater_qatar/data/cars_list.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import '../light_my_orders_active_list_screen/widgets/listproductname_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightMyOrdersActiveListScreen extends StatefulWidget {
  const LightMyOrdersActiveListScreen({super.key});

  @override
  State<LightMyOrdersActiveListScreen> createState() =>
      _LightMyOrdersActiveListScreenState();
}

class _LightMyOrdersActiveListScreenState
    extends State<LightMyOrdersActiveListScreen>
    with SingleTickerProviderStateMixin {
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
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                margin: getMargin(left: 24, right: 24, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 5,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 3,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.appLogo,
                              height: getVerticalSize(
                                30.00,
                              ),
                              width: getHorizontalSize(
                                30.00,
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 16),
                          Padding(
                            padding: getPadding(
                              left: 0,
                            ),
                            child: Text(
                              "My Orders",
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.imgSearch,
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 26),
                          Padding(
                            padding: getPadding(
                              left: 0,
                              bottom: 1,
                            ),
                            child: CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.icon,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
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
            Expanded(
              child: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    margin: getMargin(
                      top: 0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: double.infinity,
                            margin: getMargin(
                              left: 0,
                              top: 10,
                              right: 0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        24.00,
                                      ),
                                      right: getHorizontalSize(
                                        0.00,
                                      ),
                                    ),
                                    child: SizedBox(
                                      height: getVerticalSize(50),
                                      child: TabBar(
                                          controller: tabController,
                                          indicatorWeight: 6,
                                          indicator: UnderlineTabIndicator(
                                              insets: EdgeInsets.symmetric(
                                                  horizontal:
                                                      getHorizontalSize(16)),
                                              borderSide: BorderSide(
                                                  color:
                                                      ColorConstant.gray500)),
                                          labelColor: ColorConstant.gray500,
                                          unselectedLabelColor: isDark
                                              ? Colors.white
                                              : ColorConstant.gray400,
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
                                              text: "Active",
                                            ),
                                            Tab(
                                              text: "Completed",
                                            )
                                          ]),
                                    )),
                                SizedBox(
                                  height: getVerticalSize(700),
                                  child: TabBarView(
                                    controller: tabController,
                                    children: [
                                      FadeInUp(
                                        child: Padding(
                                          padding: getPadding(
                                              top: 24, left: 20, right: 20),
                                          child: ListView.builder(
                                            physics:
                                                const BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: carsList.length,
                                            itemBuilder: (context, index) {
                                              return ListproductnameItemWidget(
                                                index: index,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      FadeInUp(
                                        child: Padding(
                                          padding: getPadding(
                                              top: 24, left: 20, right: 20),
                                          child: ListView.builder(
                                            physics:
                                                const BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: 4,
                                            itemBuilder: (context, index) {
                                              return ListproductnameItemWidget(
                                                index: index,
                                                completedOrders: true,
                                              );
                                            },
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
