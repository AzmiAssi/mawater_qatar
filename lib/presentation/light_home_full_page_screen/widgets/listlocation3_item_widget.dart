import 'package:easy_localization/easy_localization.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/core/services/enums.dart';
import 'package:mawater_qatar/core/services/services.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/presentation/light_car_details_screen/light_car_details_screen.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listlocation3ItemWidget extends StatefulWidget {
  int index;
  Listlocation3ItemWidget({super.key, required this.index});

  @override
  State<Listlocation3ItemWidget> createState() =>
      _Listlocation3ItemWidgetState();
}

class _Listlocation3ItemWidgetState extends State<Listlocation3ItemWidget> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LightCarDetailsScreen(
                    ads: homeController.ads[widget.index],
                  )),
        );
      },
      child: Padding(
        padding: getPadding(right: 0, left: 0, bottom: 0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: const EdgeInsets.all(0),
          color: isDark ? ColorConstant.darkLine : ColorConstant.gray100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                24.00,
              ),
            ),
          ),
          child: SizedBox(
            width: getHorizontalSize(182),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: getVerticalSize(
                    150.00,
                  ),
                  //width: getHorizontalSize(182),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24)),
                          child: CommonImageView(
                            url: getImagePath(
                                imageName:
                                    homeController.ads[widget.index].mainImage!,
                                type: ImageType.ads),
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
                            onTap: () {
                              setState(() {
                                isFav = !isFav;
                              });
                            },
                            child: CommonImageView(
                              imagePath: isFav
                                  ? ImageConstant.darkHeart
                                  : ImageConstant.lightFav,
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
                Container(
                  padding: getPadding(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 0,
                          right: 0,
                        ),
                        child: Text(
                          homeController.ads[widget.index].subject!,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: getFontSize(
                              16,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                                bottom: 4,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.rate,
                                height: getVerticalSize(
                                  15.00,
                                ),
                                width: getHorizontalSize(
                                  16.00,
                                ),
                              ),
                            ),
                            // HorizontalSpace(width: 9),
                            // Padding(
                            //   padding: getPadding(
                            //     left: 0,
                            //     top: 5,
                            //     bottom: 4,
                            //   ),
                            //   child: Text(
                            //     "4.5",
                            //     overflow: TextOverflow.ellipsis,
                            //     textAlign: TextAlign.start,
                            //     style: TextStyle(
                            //       color: ColorConstant.gray700,
                            //       fontSize: getFontSize(
                            //         14,
                            //       ),
                            //       fontFamily: 'Urbanist',
                            //       fontWeight: FontWeight.w500,
                            //       letterSpacing: 0.20,
                            //     ),
                            //   ),
                            // ),
                            HorizontalSpace(width: 8),
                            CustomButton(
                              isDark: isDark,
                              width: 41,
                              text: context.locale.toString() == "en"
                                  ? homeController.ads[widget.index]
                                      .mawaterStatus!.statusName
                                  : homeController.ads[widget.index]
                                      .mawaterStatus!.statusArabicName,
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
                          "${homeController.ads[widget.index].price} ${Constants.currency}",
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
      ),
    );
  }
}
