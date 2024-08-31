import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/core/services/enums.dart';
import 'package:mawater_qatar/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:mawater_qatar/main.dart';

// ignore: must_be_immutable
class ListautolayouthorOneItemWidget extends StatelessWidget {
  int index = 0;
  ListautolayouthorOneItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: getMargin(
        left: 2,
        bottom: 2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: getVerticalSize(60),
              width: getHorizontalSize(60),
              margin: getMargin(
                left: 6,
                right: 6,
              ),
              padding: getPadding(all: 10),
              decoration: BoxDecoration(
                color: isDark
                    ? ColorConstant.darkLine
                    : homeController.selectedCategory.categoryId ==
                            homeController.categoryItems[index].categoryId
                        ? ColorConstant.gray500
                        : ColorConstant.gray502.withOpacity(0.08),
                shape: BoxShape.circle,
                // border: Border.all(
                //     color: homeController.selectedCategory.categoryId ==
                //             homeController.categoryItems[index].categoryId
                //         ? ColorConstant.gray500
                //         : ColorConstant.gray502.withOpacity(0.08)),
              ),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                color: isDark
                    ? Colors.white
                    : homeController.selectedCategory.categoryId ==
                            homeController.categoryItems[index].categoryId
                        ? Colors.white
                        : ColorConstant.gray500,
                imageUrl: getImagePath(
                    imageName:
                        homeController.categoryItems[index].categoryImage!,
                    type: ImageType.category),
                placeholder: (context, url) => SizedBox(
                  height: 30,
                  width: 30,
                  child: LinearProgressIndicator(
                    color: Colors.grey.shade200,
                    backgroundColor: Colors.grey.shade100,
                  ),
                ),
                errorWidget: (context, url, error) => Image.asset(
                  'assets/images/image_not_found.png',
                  fit: BoxFit.fill,
                ),
              )

              //  CommonImageViewWithDarkOption(
              //   isDark: isDark,

              //   //svgPath: homeController.categoryItems[index].categoryImage,
              //   url: getCategoryImagePath(
              //     categoryImage:
              //         homeController.categoryItems[index].categoryImage!,
              //   ),
              // ),
              ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                top: 2,
              ),
              child: Text(
                context.locale.toString() == "en"
                    ? homeController.categoryItems[index].categoryName!
                    : homeController.categoryItems[index].categoryArabicName!,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isDark
                      ? Colors.white
                      : homeController.selectedCategory.categoryId ==
                              homeController.categoryItems[index].categoryId
                          ? ColorConstant.gray500
                          : ColorConstant.gray801,
                  fontSize: getFontSize(
                    14,
                  ),
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
