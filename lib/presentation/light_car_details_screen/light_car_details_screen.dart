// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/core/services/enums.dart';
import 'package:mawater_qatar/core/services/services.dart';
import 'package:mawater_qatar/models/entity/ads_entity.dart';
import 'package:mawater_qatar/presentation/light_my_wishlist_screen/light_my_wishlist_screen.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';

import '../../models/chat_model.dart';
import '../../widgets/spacing.dart';
import '../light_inbox_call_screen/light_inbox_call_screen.dart';

class LightCarDetailsScreen extends StatefulWidget {
  AdsEntity ads;
  LightCarDetailsScreen({
    super.key,
    required this.ads,
  });

  @override
  State<LightCarDetailsScreen> createState() => _LightCarDetailsScreenState();
}

class _LightCarDetailsScreenState extends State<LightCarDetailsScreen> {
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ADS Details",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: getFontSize(
              20,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Container(
            margin: getMargin(right: 15),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LightMyWishlistScreen()),
                );
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
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Align(
                      //   alignment: Alignment.center,
                      //   child: Container(
                      //     width: size.width,
                      //     margin: getMargin(
                      //       left: 24,
                      //       top: 37,
                      //       right: 24,
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       mainAxisSize: MainAxisSize.max,
                      //       children: [
                      //         BackBtn(),
                      //         Padding(
                      //           padding: getPadding(
                      //             left: 0,
                      //             top: 7,
                      //             right: 0,
                      //           ),
                      //           child: Text(
                      //             "ADS Details",
                      //             overflow: TextOverflow.ellipsis,
                      //             textAlign: TextAlign.start,
                      //             style: TextStyle(
                      //               fontSize: getFontSize(
                      //                 20,
                      //               ),
                      //               fontFamily: 'Urbanist',
                      //               fontWeight: FontWeight.w700,
                      //             ),
                      //           ),
                      //         ),
                      //         InkWell(
                      //           onTap: () {
                      //             Navigator.push(
                      //               context,
                      //               MaterialPageRoute(
                      //                   builder: (context) =>
                      //                       const LightMyWishlistScreen()),
                      //             );
                      //           },
                      //           child: CommonImageViewWithDarkOption(
                      //             isDark: isDark,
                      //             imagePath: ImageConstant.heart,
                      //             height: getVerticalSize(
                      //               21.00,
                      //             ),
                      //             width: getHorizontalSize(
                      //               22.00,
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            233.00,
                          ),
                          width: size.width,
                          margin: getMargin(
                            left: 10,
                            top: 7,
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    //imagePath: ImageConstant.imgImage,
                                    url: getImagePath(
                                        imageName: widget.ads.mainImage!,
                                        type: ImageType.ads),
                                    height: size.height,
                                    width: size.width,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(
                            left: 10,
                            right: 10,
                            top: 7,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              for (int i = 0;
                                  i < widget.ads.images!.length;
                                  i++)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.5),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          widget.ads.mainImage =
                                              widget.ads.images![i];
                                        });
                                      },
                                      child: CommonImageView(
                                        // imagePath: ImageConstant.imgImage80X80,
                                        url: getImagePath(
                                            imageName: widget.ads.images![i],
                                            type: ImageType.ads),
                                        height: getSize(
                                          80.00,
                                        ),
                                        width: getSize(
                                          80.00,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 26,
                          right: 24,
                        ),
                        child: Text(
                          widget.ads.subject!,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: getFontSize(
                              32,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 11,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomButton(
                              isDark: isDark,
                              width: 41,
                              text: context.locale.toString() == "en"
                                  ? widget.ads.mawaterStatus!.statusName
                                  : widget.ads.mawaterStatus!.statusArabicName,
                            ),
                            HorizontalSpace(width: 9),
                            Padding(
                              padding: getPadding(
                                left: 0,
                                top: 7,
                                bottom: 4,
                              ),
                              child: Text(
                                "(86 reviews)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.gray801,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 24,
                              top: 28,
                              right: 24,
                            ),
                            child: Text(
                              "Description",
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
                              left: 24,
                              top: 28,
                              right: 24,
                            ),
                            child: Text(
                              widget.ads.adsDateTime!,
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
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            374.00,
                          ),
                          margin: getMargin(
                            left: 24,
                            top: 10,
                            right: 24,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: widget.ads.description,
                                  style: TextStyle(
                                    color: ColorConstant.gray801,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                                TextSpan(
                                  text: '',
                                  style: TextStyle(
                                    color: ColorConstant.gray801,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: double.infinity,
                          margin: getMargin(
                            left: 15,
                            top: 10,
                            right: 15,
                          ),
                          decoration: BoxDecoration(
                            color: isDark
                                ? ColorConstant.darkTextField
                                : ColorConstant.whiteA700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                16.00,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 7,
                                  right: 24,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "Category",
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
                                    Text(
                                      context.locale.toString() == "en"
                                          ? widget.ads.category!.categoryName!
                                          : widget.ads.category!
                                              .categoryArabicName!,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              widget.ads.mawater!.mawaterId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                            ),
                                            child: Text(
                                              "Mawater",
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
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              context.locale.toString() == "en"
                                                  ? widget
                                                      .ads.mawater!.mawaterName!
                                                  : widget.ads.mawater!
                                                      .mawaterArabicName!,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.mawaterType!.mTypeId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Mawater Type",
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
                                          Text(
                                            context.locale.toString() == "en"
                                                ? widget
                                                    .ads.mawaterType!.mTypeName!
                                                : widget.ads.mawaterType!
                                                    .mTypeArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.mawaterStructure!.structureId!
                                      .isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Structure",
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
                                          Text(
                                            context.locale.toString() == "en"
                                                ? widget.ads.mawaterStructure!
                                                    .structureName!
                                                : widget.ads.mawaterStructure!
                                                    .structureArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.mawaterStatus!.statusId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Status",
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
                                          Text(
                                            context.locale.toString() == "en"
                                                ? widget.ads.mawaterStatus!
                                                    .statusName!
                                                : widget.ads.mawaterStatus!
                                                    .statusArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.city!.cityId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "City",
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
                                          Text(
                                            context.locale.toString() == "en"
                                                ? widget.ads.city!.cityName!
                                                : widget
                                                    .ads.city!.cityArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.year!.yearId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Year",
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
                                          Text(
                                            widget.ads.year!.yearName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.enginCapacity!.capacityId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Engin Capacity",
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
                                          Text(
                                            widget.ads.enginCapacity!
                                                .capacityName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.carTransmition!.transId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Car Transmition",
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
                                          Text(
                                            context.locale.toString() == "en"
                                                ? widget.ads.carTransmition!
                                                    .transName!
                                                : widget.ads.carTransmition!
                                                    .transArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.color!.colorId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Color",
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
                                          Text(
                                            context.locale.toString() == "en"
                                                ? widget.ads.color!.colorName!
                                                : widget.ads.color!
                                                    .colorArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.fuelType!.fuelId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Fuel Type",
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
                                          Text(
                                            context.locale.toString() == "en"
                                                ? widget.ads.fuelType!.fuelName!
                                                : widget.ads.fuelType!
                                                    .fuelArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.furnishing!.furnishingId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Furnishing",
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
                                          Text(
                                            context.locale.toString() == "en"
                                                ? widget.ads.furnishing!
                                                    .furnishingName!
                                                : widget.ads.furnishing!
                                                    .furnishingArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.traveledDistance!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "No.Kilometers",
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
                                          Text(
                                            "${widget.ads.traveledDistance!} K.M",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.numberOfSeats!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "N.Of Seats",
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
                                          Text(
                                            widget.ads.numberOfSeats!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.wheelMovement!.wheelMovementId!
                                      .isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Wheel Movement",
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
                                          Text(
                                            context.locale.toString() == "en"
                                                ? widget.ads.wheelMovement!
                                                    .wheelMovementName!
                                                : widget.ads.wheelMovement!
                                                    .wheelMovementArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              widget.ads.fuelType!.fuelId!.isNotEmpty
                                  ? Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 7,
                                        right: 24,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Fuel Type",
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
                                          Text(
                                            context.locale.toString() == "en"
                                                ? widget.ads.fuelType!.fuelName!
                                                : widget.ads.fuelType!
                                                    .fuelArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                              Container(
                                height: getVerticalSize(
                                  1.00,
                                ),
                                width: getHorizontalSize(
                                  332.00,
                                ),
                                margin: getMargin(
                                  left: 24,
                                  top: 22,
                                  right: 24,
                                ),
                              ),
                              CustomDivider(isDark: isDark),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 22,
                                  right: 24,
                                  bottom: 25,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "Price",
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
                                        top: 1,
                                      ),
                                      child: Text(
                                        "${widget.ads.price} ${Constants.currency}",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w600,
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
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 10,
                      top: 24,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            // Container(
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(
                            //       getHorizontalSize(
                            //         30.00,
                            //       ),
                            //     ),
                            //   ),
                            //   child: Column(
                            //     mainAxisSize: MainAxisSize.min,
                            //     crossAxisAlignment: CrossAxisAlignment.center,
                            //     mainAxisAlignment: MainAxisAlignment.start,
                            //     children: [
                            //       Align(
                            //         alignment: Alignment.centerLeft,
                            //         child: ClipRRect(
                            //           borderRadius: BorderRadius.circular(
                            //             getHorizontalSize(
                            //               30.00,
                            //             ),
                            //           ),
                            //           child: CommonImageView(
                            //             imagePath: ImageConstant.imgEllipse3,
                            //             height: getSize(
                            //               60.00,
                            //             ),
                            //             width: getSize(
                            //               60.00,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            HorizontalSpace(width: 10),
                            Container(
                              margin: getMargin(
                                top: 7,
                                bottom: 10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                      right: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          widget.ads.user!.userFName!,
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
                                        HorizontalSpace(width: 6),
                                        Padding(
                                          padding: getPadding(
                                            left: 0,
                                            top: 2,
                                            bottom: 1,
                                          ),
                                          child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgVector17X17,
                                            height: getVerticalSize(
                                              13.00,
                                            ),
                                            width: getHorizontalSize(
                                              14.00,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      right: 0,
                                    ),
                                    child: Text(
                                      widget.ads.user!.userPhone!,
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
                        Padding(
                          padding: getPadding(
                            top: 3,
                            right: 3,
                            bottom: 3,
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
                                            LightInboxCallScreen(
                                              callinfo: ChatModel(
                                                  icon: const SizedBox(),
                                                  msgNumber: 1,
                                                  title: 'BMW Store',
                                                  img: ImageConstant.chat1),
                                            )),
                                  );
                                },
                                child: CommonImageViewWithDarkOption(
                                  isDark: isDark,
                                  svgPath: ImageConstant.blackCall,
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                ),
                              ),
                              // HorizontalSpace(width: 26),
                              // Padding(
                              //   padding: getPadding(
                              //     left: 0,
                              //     top: 1,
                              //     bottom: 1,
                              //   ),
                              //   child: CommonImageViewWithDarkOption(
                              //     isDark: isDark,
                              //     svgPath: ImageConstant.profilePic,
                              //     height: getSize(
                              //       24.00,
                              //     ),
                              //     width: getSize(
                              //       24.00,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
