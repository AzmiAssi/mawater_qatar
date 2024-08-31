import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mawater_qatar/core/services/enums.dart';
import 'package:mawater_qatar/core/services/services.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/models/entity/mawater_entity.dart';
import 'package:mawater_qatar/presentation/LetsInScreen/lets_in_screen.dart';
import 'package:mawater_qatar/presentation/Story/story_screen.dart';
import 'package:mawater_qatar/presentation/light_home_full_page_screen/widgets/single_item_widgets.dart';
import 'package:mawater_qatar/presentation/light_home_notification_screen/light_home_notification_screen.dart';
import 'package:mawater_qatar/presentation/light_my_wishlist_screen/light_my_wishlist_screen.dart';
import 'package:mawater_qatar/presentation/light_sort_filter_screen/light_sort_filter_screen.dart';
import 'package:mawater_qatar/presentation/special_category_page/special_category_page.dart';
import 'package:mawater_qatar/widgets/custom_search_view.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import '../light_home_full_page_screen/widgets/listautolayouthor_one_item_widget.dart';
import '../light_home_full_page_screen/widgets/listlocation3_item_widget.dart';
import '../light_home_full_page_screen/widgets/sliderthirty_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LightHomeFullPageScreen extends StatefulWidget {
  const LightHomeFullPageScreen({super.key});

  @override
  State<LightHomeFullPageScreen> createState() =>
      _LightHomeFullPageScreenState();
}

class _LightHomeFullPageScreenState extends State<LightHomeFullPageScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController stateDefaultSController = TextEditingController();

  int silderIndex = 0;
  TextEditingController stateActiveSeController = TextEditingController();
  // ignore: non_constant_identifier_names
  bool multiple = true;
  bool isLoading = false;
  bool isLoadingADS = false;
  bool isLoadingMawater = false;
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    fetchingData();
  }

  Future<void> fetchingData() async {
    setState(() {
      isLoading = true;
    });
    await homeController.fetchHomeData();
    isLoading = false;
    tabController = tabController =
        TabController(length: homeController.categoryItems.length, vsync: this);
    setState(() {});
    if (mounted) setState(() {});
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
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                color: ColorConstant.gray500,
              ))
            : Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      margin: getMargin(left: 24, top: 10, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                margin: getMargin(
                                  top: 2,
                                  bottom: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray100,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            24.00,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Stories()),
                                            );
                                          },
                                          child: CommonImageView(
                                            imagePath: ImageConstant.storyCover,
                                            height: getSize(
                                              35.00,
                                            ),
                                            width: getSize(
                                              35.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Mawater Qatar",
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
                          Padding(
                            padding: getPadding(
                              top: 5,
                              bottom: 5,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LightHomeNotificationScreen()),
                                    );
                                  },
                                  child: CommonImageViewWithDarkOption(
                                    isDark: isDark,
                                    imagePath: ImageConstant.notification,
                                    height: getVerticalSize(
                                      28.00,
                                    ),
                                    width: getHorizontalSize(
                                      28.00,
                                    ),
                                  ),
                                ),
                                HorizontalSpace(width: 24),
                                Padding(
                                  padding: getPadding(
                                    left: 0,
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      if (userController.myUser.value.userId ==
                                              "" ||
                                          userController.myUser.value.userId ==
                                              null) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LetsInScreen()),
                                        );
                                      } else {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LightMyWishlistScreen()),
                                        );
                                      }
                                    },
                                    child: CommonImageViewWithDarkOption(
                                      isDark: isDark,
                                      imagePath: ImageConstant.heart,
                                      height: getVerticalSize(
                                        28.00,
                                      ),
                                      width: getHorizontalSize(
                                        28.00,
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
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 15,
                          top: 4,
                          right: 15,
                        ),
                        child: ListView(
                          // mainAxisSize: MainAxisSize.min,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    width: size.width,
                                    child: CustomSearchView(
                                      isDark: isDark,
                                      onChange: () {
                                        homeController.searchADS(
                                            stateActiveSeController.text
                                                .trim());
                                        setState(() {});
                                      },
                                      //focusNode: FocusNode(),
                                      controller: stateActiveSeController,
                                      hintText: "Search",
                                      margin: getMargin(
                                        left: 0,
                                        top: 10,
                                        right: 0,
                                      ),
                                      prefix: Container(
                                        margin: getMargin(
                                          left: 15,
                                          top: 5,
                                          right: 15,
                                          bottom: 5,
                                        ),
                                        child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgSearchGray500,
                                        ),
                                      ),
                                      prefixConstraints: BoxConstraints(
                                        minWidth: getSize(
                                          16.00,
                                        ),
                                        minHeight: getSize(
                                          16.00,
                                        ),
                                      ),
                                      // suffix: InkWell(
                                      //   onTap: () {
                                      //     showModalBottomSheet(
                                      //         context: context,
                                      //         isScrollControlled: true,
                                      //         shape:
                                      //             const RoundedRectangleBorder(
                                      //                 borderRadius:
                                      //                     BorderRadius.vertical(
                                      //           top: Radius.circular(20),
                                      //         )),
                                      //         builder: (context) {
                                      //           return const LightSortFilterScreen();
                                      //         });
                                      //   },
                                      //   child: Padding(
                                      //     padding: EdgeInsets.only(
                                      //         right: getHorizontalSize(
                                      //           10.00,
                                      //         ),
                                      //         left: getHorizontalSize(10)),
                                      //     child: CommonImageViewWithDarkOption(
                                      //       imagePath: ImageConstant.filter,
                                      //     ),
                                      //   ),
                                      // ),
                                      suffixConstraints: BoxConstraints(
                                        maxWidth: getHorizontalSize(
                                          45.00,
                                        ),
                                        maxHeight: getVerticalSize(
                                          45.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20),
                                        )),
                                        builder: (context) {
                                          return const LightSortFilterScreen();
                                        });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 10,
                                        right: getHorizontalSize(
                                          15.00,
                                        ),
                                        left: getHorizontalSize(15)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CommonImageViewWithDarkOption(
                                          height: 25,
                                          width: 25,
                                          imagePath: ImageConstant.filter,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 0),
                                          child: Text(
                                            "Filter",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 10),
                                //   child: Text(
                                //     "Choose",
                                //     overflow: TextOverflow.ellipsis,
                                //     textAlign: TextAlign.start,
                                //     style: TextStyle(
                                //       color: ColorConstant.gray700,
                                //       fontSize: getFontSize(
                                //         12,
                                //       ),
                                //       fontFamily: 'Urbanist',
                                //       fontWeight: FontWeight.w500,
                                //       letterSpacing: 0.20,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                            // Padding(
                            //   padding: getPadding(
                            //     top: 27,
                            //   ),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     crossAxisAlignment: CrossAxisAlignment.center,
                            //     mainAxisSize: MainAxisSize.max,
                            //     children: [
                            //       Padding(
                            //         padding: getPadding(
                            //           top: 1,
                            //         ),
                            //         child: Text(
                            //           "Special Offers",
                            //           overflow: TextOverflow.ellipsis,
                            //           textAlign: TextAlign.start,
                            //           style: TextStyle(
                            //             fontSize: getFontSize(
                            //               20,
                            //             ),
                            //             fontFamily: 'Urbanist',
                            //             fontWeight: FontWeight.w700,
                            //           ),
                            //         ),
                            //       ),
                            //       Padding(
                            //         padding: getPadding(
                            //           bottom: 4,
                            //         ),
                            //         child: InkWell(
                            //           onTap: () {
                            //             Navigator.push(
                            //               context,
                            //               MaterialPageRoute(
                            //                   builder: (context) =>
                            //                       LightSpecialOffersScreen()),
                            //             );
                            //           },
                            //           child: Text(
                            //             "See all",
                            //             overflow: TextOverflow.ellipsis,
                            //             textAlign: TextAlign.start,
                            //             style: TextStyle(
                            //               color: ColorConstant.gray500,
                            //               fontSize: getFontSize(
                            //                 16,
                            //               ),
                            //               fontFamily: 'Urbanist',
                            //               fontWeight: FontWeight.w700,
                            //               letterSpacing: 0.20,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),

                            Container(
                              height: getVerticalSize(
                                120.00,
                              ),
                              margin: getMargin(
                                top: 5,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CarouselSlider.builder(
                                    options: CarouselOptions(
                                      height: getVerticalSize(
                                        120.00,
                                      ),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 1,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      // onPageChanged: (index, reason) {
                                      //   setState(() {
                                      //     silderIndex = index;
                                      //   });
                                      // },
                                    ),
                                    itemCount: homeController.banner.length,
                                    itemBuilder: (context, index, realIndex) {
                                      return SliderthirtyItemWidget(
                                        imagePath: getImagePath(
                                            imageName: homeController
                                                .banner[index].bannerImage
                                                .toString(),
                                            type: ImageType.banner),
                                      );
                                    },
                                  ),
                                  // Align(
                                  //   alignment: Alignment.bottomCenter,
                                  //   child: Container(
                                  //     height: getVerticalSize(
                                  //       4.00,
                                  //     ),
                                  //     margin: getMargin(
                                  //       left: 164,
                                  //       top: 12,
                                  //       right: 164,
                                  //       bottom: 12,
                                  //     ),
                                  //     child: AnimatedSmoothIndicator(
                                  //       activeIndex: silderIndex,
                                  //       count: 5,
                                  //       axisDirection: Axis.horizontal,
                                  //       effect: ScrollingDotsEffect(
                                  //         spacing: 5,
                                  //         activeDotScale: 1.5,
                                  //         activeDotColor: isDark
                                  //             ? Colors.white
                                  //             : ColorConstant.black900,
                                  //         dotColor: ColorConstant.gray400,
                                  //         dotHeight: getVerticalSize(
                                  //           4.00,
                                  //         ),
                                  //         dotWidth: getHorizontalSize(
                                  //           8.00,
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(top: 10),
                              child: SizedBox(
                                width: size.width,
                                height: size.height * 0.109,
                                child: FadeInUp(
                                  child: GridView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 1.35,
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 5,
                                    ),
                                    physics: const ScrollPhysics(),
                                    itemCount:
                                        homeController.categoryItems.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () async {
                                          if (homeController
                                              .categoryItems[index]
                                              .isSpecial!) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SpecialCategoryPage()),
                                            );
                                          } else {
                                            setState(() {
                                              isLoadingADS = true;
                                              isLoadingMawater = true;
                                            });
                                            homeController.setSelectedCategory(
                                                selected: homeController
                                                    .categoryItems[index]);
                                            await homeController
                                                .fetchMawaterDataByCategoryId(
                                                    homeController
                                                        .categoryItems[index]
                                                        .categoryId!);
                                            homeController.setSelectedMawater(
                                                selected: MawaterEntity());
                                            await homeController.fetchADS();
                                            setState(() {
                                              isLoadingADS = false;
                                              isLoadingMawater = false;
                                            });
                                          }
                                        },
                                        child: ListautolayouthorOneItemWidget(
                                          index: index,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              width: size.width,
                              height: getVerticalSize(90),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: InkWell(
                                      child: Icon(
                                        multiple
                                            ? Icons.dashboard
                                            : Icons.view_agenda,
                                        color: ColorConstant.gray500,
                                        size: 30,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          multiple = !multiple;
                                        });
                                      },
                                    ),
                                  ),
                                  isLoadingMawater
                                      ? Expanded(
                                          child: SizedBox(
                                            // height: 20,
                                            child: Center(
                                                child:
                                                    CircularProgressIndicator(
                                              color: ColorConstant.gray500,
                                            )),
                                          ),
                                        )
                                      : homeController.selectedCategory
                                                  .categoryId ==
                                              "d7cead21-6778-4300-95ad-d9eb095fe112"
                                          ? Expanded(
                                              child: SizedBox(
                                                width: size.width,
                                                // height: size.height * 0.109,
                                                child: GridView.builder(
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  gridDelegate:
                                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                                    childAspectRatio: 1.35,
                                                    crossAxisCount: 1,
                                                    mainAxisSpacing: 5,
                                                  ),
                                                  physics:
                                                      const ScrollPhysics(),
                                                  itemCount: homeController
                                                      .mawater.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            isLoadingADS = true;
                                                          });
                                                          homeController.setSelectedMawater(
                                                              selected:
                                                                  homeController
                                                                          .mawater[
                                                                      index]);
                                                          await homeController
                                                              .fetchADS();
                                                          setState(() {
                                                            isLoadingADS =
                                                                false;
                                                          });
                                                        },
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    80),
                                                            width:
                                                                getHorizontalSize(
                                                                    80),
                                                            padding: getPadding(
                                                                all: 10),
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: homeController.selectedMawater.mawaterId == homeController.mawater[index].mawaterId
                                                                        ? ColorConstant
                                                                            .gray500
                                                                        : ColorConstant
                                                                            .whiteA700
                                                                            .withOpacity(
                                                                                0.08)),
                                                                color: homeController
                                                                            .selectedMawater
                                                                            .mawaterId ==
                                                                        homeController
                                                                            .mawater[index]
                                                                            .mawaterId
                                                                    ? ColorConstant.gray502.withOpacity(0.08)
                                                                    : ColorConstant.whiteA700,
                                                                shape: BoxShape.circle),
                                                            child: CachedNetworkImage(
                                                              height: 25,
                                                              width: 25,
                                                              fit: BoxFit
                                                                  .contain,
                                                              // color: isDark
                                                              //     ? Colors.white
                                                              //     : ColorConstant.gray500,
                                                              imageUrl: getImagePath(
                                                                  imageName: homeController
                                                                      .mawater[
                                                                          index]
                                                                      .mawaterImage!,
                                                                  type: ImageType
                                                                      .mawater),
                                                              placeholder:
                                                                  (context,
                                                                          url) =>
                                                                      SizedBox(
                                                                height: 25,
                                                                width: 25,
                                                                child:
                                                                    LinearProgressIndicator(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .grey
                                                                          .shade100,
                                                                ),
                                                              ),
                                                              errorWidget: (context,
                                                                      url,
                                                                      error) =>
                                                                  Image.asset(
                                                                'assets/images/image_not_found.png',
                                                                height: 25,
                                                                width: 25,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            )));
                                                  },
                                                ),
                                              ),
                                            )
                                          : Expanded(
                                              child: SizedBox(
                                                width: size.width,
                                                // height: size.height * 0.109,
                                                child: GridView.builder(
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  gridDelegate:
                                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                                    childAspectRatio: 0.8,
                                                    crossAxisCount: 1,
                                                    mainAxisSpacing: 2,
                                                  ),
                                                  physics:
                                                      const ScrollPhysics(),
                                                  itemCount: homeController
                                                      .mawater.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return InkWell(
                                                      onTap: () async {
                                                        setState(() {
                                                          isLoadingADS = true;
                                                        });
                                                        homeController
                                                            .setSelectedMawater(
                                                                selected:
                                                                    homeController
                                                                            .mawater[
                                                                        index]);
                                                        await homeController
                                                            .fetchADS();
                                                        setState(() {
                                                          isLoadingADS = false;
                                                        });
                                                      },
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  60),
                                                          width:
                                                              getHorizontalSize(
                                                                  10),
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 20,
                                                                  horizontal:
                                                                      2),
                                                          child: Container(
                                                              margin: getMargin(
                                                                left: 0,
                                                              ),
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      right: 16,
                                                                      top: 8,
                                                                      bottom:
                                                                          8),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                    20.00,
                                                                  ),
                                                                ),
                                                                color: homeController
                                                                            .selectedMawater.mawaterId ==
                                                                        homeController
                                                                            .mawater[
                                                                                index]
                                                                            .mawaterId
                                                                    ? ColorConstant
                                                                        .gray500
                                                                    : Colors
                                                                        .transparent,
                                                                border:
                                                                    Border.all(
                                                                  color: ColorConstant
                                                                      .gray500,
                                                                  width:
                                                                      getHorizontalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                  context.locale
                                                                              .toString() ==
                                                                          "en"
                                                                      ? homeController
                                                                          .mawater[
                                                                              index]
                                                                          .mawaterName!
                                                                      : homeController
                                                                          .mawater[
                                                                              index]
                                                                          .mawaterArabicName!,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    color: homeController.selectedMawater.mawaterId ==
                                                                            homeController
                                                                                .mawater[
                                                                                    index]
                                                                                .mawaterId
                                                                        ? Colors
                                                                            .white
                                                                        : ColorConstant
                                                                            .gray500,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      12,
                                                                    ),
                                                                    fontFamily:
                                                                        'Inter',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    height:
                                                                        1.00,
                                                                  ),
                                                                ),
                                                              ))),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                ],
                              ),
                            ),
                            //azmiiii
                            SizedBox(
                              height: getVerticalSize(620),
                              child: isLoadingADS
                                  ? Center(
                                      child: CircularProgressIndicator(
                                      color: ColorConstant.gray500,
                                    ))
                                  : GridView.builder(
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: multiple
                                            ? getVerticalSize(
                                                252.5,
                                              )
                                            : getVerticalSize(
                                                135,
                                              ),
                                        mainAxisSpacing: getHorizontalSize(
                                          10.00,
                                        ),
                                        crossAxisSpacing: getHorizontalSize(
                                          10.00,
                                        ),
                                        crossAxisCount: multiple ? 2 : 1,
                                        // mainAxisSpacing: 0.1,
                                        // crossAxisSpacing: 0.1,
                                        childAspectRatio: multiple ? 2.2 : 1.13,
                                      ),
                                      //physics: const NeverScrollableScrollPhysics(),
                                      itemCount: homeController.ads.length,
                                      itemBuilder: (context, index) {
                                        return multiple
                                            ? Listlocation3ItemWidget(
                                                index: index,
                                              )
                                            : SingleItemWidget(
                                                index: index,
                                              );
                                      },
                                    ),
                            )
                          ],
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
