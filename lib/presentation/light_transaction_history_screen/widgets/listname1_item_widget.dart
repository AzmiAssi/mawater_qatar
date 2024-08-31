import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/data/cars_list.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listname1ItemWidget extends StatelessWidget {
  int index;
  Listname1ItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: getPadding(
          right: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                SizedBox(
                  height: getSize(
                    60.00,
                  ),
                  width: getSize(
                    60.00,
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: const EdgeInsets.all(0),
                    color:
                        isDark ? ColorConstant.darkLine : ColorConstant.gray100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          30.00,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CommonImageView(
                            imagePath: carsList[index].img,
                            height: getSize(
                              60.00,
                            ),
                            width: getSize(
                              60.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                HorizontalSpace(width: 20),
                Container(
                  margin: getMargin(
                    left: 0,
                    top: 6,
                    bottom: 5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 10,
                        ),
                        child: Text(
                          carsList[index].title,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray900,
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
                          top: 13,
                          right: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 2,
                              ),
                              child: Text(
                                "Dec 15, 2024",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 0,
                                bottom: 2,
                              ),
                              child: Text(
                                " | 10:00 AM",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: getFontSize(
                                    14,
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
              ],
            ),
            Container(
              margin: getMargin(
                left: 12,
                top: 5,
                bottom: 5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 0,
                    ),
                    child: Text(
                      "171,250 ${Constants.currency}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.end,
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
                      left: 0,
                      top: 10,
                      right: 1,
                      bottom: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Orders",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray700,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 5,
                            top: 1,
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.incomming,
                            height: getSize(
                              13.00,
                            ),
                            width: getSize(
                              13.00,
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
    );
  }
}
