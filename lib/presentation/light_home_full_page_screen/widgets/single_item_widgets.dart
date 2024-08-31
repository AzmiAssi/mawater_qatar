// ignore_for_file: unrelated_type_equality_checks

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
class SingleItemWidget extends StatefulWidget {
  int index;
  SingleItemWidget({super.key, required this.index});

  @override
  State<SingleItemWidget> createState() => _SingleItemWidgetState();
}

class _SingleItemWidgetState extends State<SingleItemWidget> {
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
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(0),
        color: isDark ? ColorConstant.darkLine : ColorConstant.gray100,
        child: Row(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                CommonImageView(
                  //imagePath: carsList[widget.index].img,
                  url: getImagePath(
                      imageName: homeController.ads[widget.index].mainImage!,
                      type: ImageType.ads),
                  width: getHorizontalSize(
                    170.00,
                  ),
                  height: size.height,
                ),
                Container(
                  margin: getMargin(all: 2),
                  padding: getPadding(all: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonImageView(
                        imagePath: ImageConstant.views,
                        height: getSize(
                          20.00,
                        ),
                        width: getSize(
                          20.00,
                        ),
                      ),
                      HorizontalSpace(width: 2),
                      Text(
                        "10",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        homeController
                                            .ads[widget.index].subject!,
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
                                      InkWell(
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
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: CommonImageView(
                                                imagePath: ImageConstant.color,
                                                height: getSize(
                                                  20.00,
                                                ),
                                                width: getSize(
                                                  20.00,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              context.locale.toString() == "en"
                                                  ? homeController
                                                      .ads[widget.index]
                                                      .color!
                                                      .colorName!
                                                  : homeController
                                                      .ads[widget.index]
                                                      .color!
                                                      .colorArabicName!,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.dateTime,
                                                height: getSize(
                                                  20.00,
                                                ),
                                                width: getSize(
                                                  20.00,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              homeController.ads[widget.index]
                                                  .year!.yearName!,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.kelometer,
                                                height: getSize(
                                                  20.00,
                                                ),
                                                width: getSize(
                                                  20.00,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              homeController.ads[widget.index]
                                                  .traveledDistance!,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    CustomButton(
                                      isDark: isDark,
                                      width: 69,
                                      text: context.locale.toString() == "en"
                                          ? homeController.ads[widget.index]
                                              .mawaterStatus!.statusName
                                          : homeController.ads[widget.index]
                                              .mawaterStatus!.statusArabicName,
                                      // margin: getMargin(
                                      //   left: 0,
                                      // ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: CommonImageView(
                                  imagePath: ImageConstant.phone,
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                ),
                              ),
                              Text(
                                "0795423478",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: CommonImageView(
                                  imagePath: ImageConstant.price,
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                ),
                              ),
                              Text(
                                "${homeController.ads[widget.index].price!} ${Constants.currency}",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  //letterSpacing: 2,
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
