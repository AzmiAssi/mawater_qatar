import 'package:animate_do/animate_do.dart';
import 'package:mawater_qatar/data/cars_list.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/presentation/light_car_details_screen/light_car_details_screen.dart';
import 'package:mawater_qatar/widgets/back_btn.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import '../../widgets/custom_button.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightMyWishlistScreen extends StatelessWidget {
  const LightMyWishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                left: 24,
                top: 33,
                bottom: 20,
                right: 24,
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
                        HorizontalSpace(width: 20),
                        Padding(
                          padding: getPadding(
                            left: 0,
                          ),
                          child: Text(
                            "My Wishlist",
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
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInUp(
                      child: Padding(
                        padding: getPadding(top: 24, left: 20, right: 20),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(
                              270.5,
                            ),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(
                              20.00,
                            ),
                            crossAxisSpacing: getHorizontalSize(
                              16.00,
                            ),
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: carsList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: getPadding(right: 0, left: 0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LightCarDetailsScreen(
                                              ads: homeController.ads[index],
                                            )),
                                  );
                                },
                                child: SizedBox(
                                  width: getHorizontalSize(182),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: getVerticalSize(
                                          150.00,
                                        ),
                                        width: getHorizontalSize(182),
                                        child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: const EdgeInsets.all(0),
                                          color: isDark
                                              ? ColorConstant.darkLine
                                              : ColorConstant.gray100,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                24.00,
                                              ),
                                            ),
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      24.00,
                                                    ),
                                                  ),
                                                  child: CommonImageView(
                                                    imagePath:
                                                        carsList[index].img,
                                                    height: getVerticalSize(
                                                      150.00,
                                                    ),
                                                    width: size.width,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                  padding: getPadding(
                                                    all: 12,
                                                  ),
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .darkHeart,
                                                      height: getSize(
                                                        28.00,
                                                      ),
                                                      width: getSize(
                                                        28.00,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            getPadding(left: 10, right: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 13,
                                                right: 0,
                                              ),
                                              child: Text(
                                                carsList[index].title,
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
                                            Padding(
                                              padding: getPadding(
                                                left: 1,
                                                top: 10,
                                                right: 0,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 4,
                                                      bottom: 4,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.rate,
                                                      height: getVerticalSize(
                                                        15.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16.00,
                                                      ),
                                                    ),
                                                  ),
                                                  HorizontalSpace(width: 9),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 0,
                                                      top: 5,
                                                      bottom: 4,
                                                    ),
                                                    child: Text(
                                                      "4.5",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray700,
                                                        fontSize: getFontSize(
                                                          14,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                  HorizontalSpace(width: 8),
                                                  CustomButton(
                                                    isDark: isDark,
                                                    width: 41,
                                                    text: "New",
                                                    margin: getMargin(
                                                      left: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 8,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "155,000 ${Constants.currency}",
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
    );
  }
}
