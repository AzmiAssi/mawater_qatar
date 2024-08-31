import 'package:mawater_qatar/data/cars_list.dart';
import 'package:mawater_qatar/widgets/back_btn.dart';
import '../../data/home_category_list.dart';
import '../light_home_full_page_screen/widgets/listlocation3_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightTopDealsScreen extends StatefulWidget {
  const LightTopDealsScreen({super.key});

  @override
  State<LightTopDealsScreen> createState() => _LightTopDealsScreenState();
}

class _LightTopDealsScreenState extends State<LightTopDealsScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = tabController = TabController(length: 7, vsync: this);
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
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                left: 24,
                top: 33,
                right: 24,
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
                        right: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 5,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const BackBtn(),
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                  ),
                                  child: Text(
                                    "Top Deals",
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
                              bottom: 2,
                            ),
                            child: CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.imgSearch,
                              height: getVerticalSize(
                                22.00,
                              ),
                              width: getHorizontalSize(
                                21.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(60),
                    child: TabBar(
                      padding: getPadding(top: 20, left: 00, right: 0),
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(
                          horizontal: getHorizontalSize(20),
                          vertical: getVerticalSize(8)),
                      controller: tabController,
                      tabs: [
                        Tab(
                          text: homeCategoryList[0].title,
                        ),
                        Tab(
                          text: homeCategoryList[1].title,
                        ),
                        Tab(
                          text: homeCategoryList[2].title,
                        ),
                        Tab(
                          text: homeCategoryList[3].title,
                        ),
                        Tab(
                          text: homeCategoryList[4].title,
                        ),
                        Tab(
                          text: homeCategoryList[5].title,
                        ),
                        Tab(
                          text: homeCategoryList[6].title,
                        ),
                      ],
                      labelColor: ColorConstant.whiteA700,
                      unselectedLabelColor: ColorConstant.gray500,
                      indicator: BoxDecoration(
                        color: ColorConstant.gray500,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            19.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(790),
                    child: TabBarView(controller: tabController, children: [
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(
                              252.5,
                            ),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                            crossAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: carsList.length,
                          itemBuilder: (context, index) {
                            return Listlocation3ItemWidget(
                              index: index,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(
                              252.5,
                            ),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                            crossAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: homeCategoryList.length,
                          itemBuilder: (context, index) {
                            return Listlocation3ItemWidget(
                              index: index,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(
                              252.5,
                            ),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                            crossAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: homeCategoryList.length,
                          itemBuilder: (context, index) {
                            return Listlocation3ItemWidget(
                              index: index,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(
                              252.5,
                            ),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                            crossAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: homeCategoryList.length,
                          itemBuilder: (context, index) {
                            return Listlocation3ItemWidget(
                              index: index,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(
                              252.5,
                            ),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                            crossAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: homeCategoryList.length,
                          itemBuilder: (context, index) {
                            return Listlocation3ItemWidget(
                              index: index,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(
                              252.5,
                            ),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                            crossAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: homeCategoryList.length,
                          itemBuilder: (context, index) {
                            return Listlocation3ItemWidget(
                              index: index,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(
                              252.5,
                            ),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                            crossAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: homeCategoryList.length,
                          itemBuilder: (context, index) {
                            return Listlocation3ItemWidget(
                              index: index,
                            );
                          },
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
