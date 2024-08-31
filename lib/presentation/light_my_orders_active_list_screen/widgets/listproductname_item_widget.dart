import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/data/cars_list.dart';
import 'package:mawater_qatar/presentation/light_my_orders_active_track_order_screen/light_my_orders_active_track_order_screen.dart';
import 'package:mawater_qatar/presentation/light_my_orders_completed_leave_a_review_bottomsheet/light_my_orders_completed_leave_a_review_bottomsheet.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListproductnameItemWidget extends StatelessWidget {
  int index;
  bool completedOrders;
  ListproductnameItemWidget(
      {super.key, required this.index, this.completedOrders = false});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: getMargin(right: 0, bottom: 16),
      decoration: BoxDecoration(
        color: isDark ? ColorConstant.darkTextField : ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              0.00,
            ),
            blurRadius: getHorizontalSize(
              10.00,
            ),
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: getVerticalSize(
              102.00,
            ),
            width: getHorizontalSize(
              120.00,
            ),
            margin: getMargin(
              left: 20,
              top: 20,
              bottom: 20,
            ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: const EdgeInsets.all(0),
              color: isDark ? ColorConstant.darkLine : ColorConstant.gray100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      20.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: carsList[index].img,
                    height: getVerticalSize(
                      102.00,
                    ),
                    width: getHorizontalSize(
                      120.00,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 16,
              top: 21,
              right: 20,
              bottom: 20,
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
                    top: 14,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                        margin: getMargin(
                          top: 4,
                          bottom: 4,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                        ),
                      ),
                      HorizontalSpace(width: 6),
                      Padding(
                        padding: getPadding(
                          left: 0,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          "silver",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color:
                                isDark ? Colors.white : ColorConstant.gray700,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                      CustomButton(
                        isDark: isDark,
                        width: 69,
                        text: completedOrders ? "Completed" : "In Delivery",
                        margin: getMargin(
                          left: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          "170,000 ${Constants.currency}",
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
                      HorizontalSpace(width: 16),
                      CustomButton(
                        isDark: isDark,
                        width: 110,
                        text:
                            completedOrders ? "Leave a Review" : "Track Order",
                        variant: ButtonVariant.FillGray500,
                        shape: ButtonShape.CircleBorder16,
                        padding: ButtonPadding.PaddingAll9,
                        fontStyle: ButtonFontStyle.UrbanistSemiBold14,
                        onTap: completedOrders
                            ? () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25),
                                    )),
                                    builder: (context) {
                                      return const LightMyOrdersCompletedLeaveAReviewBottomsheet();
                                    });
                              }
                            : () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LightMyOrdersActiveTrackOrderScreen()),
                                );
                              },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
