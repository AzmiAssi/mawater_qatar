// ignore_for_file: unrelated_type_equality_checks

import 'dart:ffi';

import 'package:easy_localization/easy_localization.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
// import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class LightSortFilterScreen extends StatefulWidget {
  const LightSortFilterScreen({super.key});

  @override
  State<LightSortFilterScreen> createState() => _LightSortFilterScreenState();
}

class _LightSortFilterScreenState extends State<LightSortFilterScreen> {
  RangeValues sliderRange = const RangeValues(1100, 99900);
  RangeValues sliderRange2 = const RangeValues(1100, 99900);

  List<String> selectedBrands = [];
  List<String> selectedMawaterItems = [];
  List<String> selectedMawaterType = [];
  List<String> selectedMawaterStatus = [];
  List<String> selectedMawaterStructure = [];
  List<String> selectedCity = [];
  List<String> selectedColor = [];
  List<String> selectedYear = [];

  List<String> selectedFurnishing = [];
  List<String> selectedWheelMovement = [];
  List<String> selectedFuelType = [];
  List<String> selectedEnginCapacity = [];
  List<String> selectedCarTransmition = [];

  TextEditingController subjectController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  bool isLoading = false;
  String selectedCategory = "";

  @override
  void initState() {
    super.initState();
    fetchingData();
  }

  Future<void> fetchingData() async {
    setState(() {
      isLoading = true;
    });
    await filterController.fetchAllData();
    isLoading = false;
    setState(() {});
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      height: getVerticalSize(
        850.00,
      ),
      width: size.width,
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: getVerticalSize(
                3.00,
              ),
              width: getHorizontalSize(
                38.00,
              ),
              margin: getMargin(
                left: 24,
                top: 8,
                right: 24,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray300,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    1.50,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 26,
                right: 24,
              ),
              child: Text(
                "Sort & Filter",
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
          ),
          Container(
            margin: getMargin(
              left: 24,
              top: 10,
              right: 24,
            ),
            child: CustomDivider(isDark: isDark),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: isLoading
                  ? Center(
                      child: CircularProgressIndicator(
                      color: ColorConstant.gray500,
                    ))
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 24,
                            right: 24,
                          ),
                          child: Text(
                            "Category",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedCategory = filterController
                                              .categoryItems[index].categoryId
                                              .toString();
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedCategory ==
                                                  filterController
                                                      .categoryItems[index]
                                                      .categoryId
                                                      .toString()
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .categoryItems[index]
                                                    .categoryName!
                                                : filterController
                                                    .categoryItems[index]
                                                    .categoryArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedCategory ==
                                                      filterController
                                                          .categoryItems[index]
                                                          .categoryId
                                                          .toString()
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount:
                                      filterController.categoryItems.length)),
                        ),
                        selectedCategory ==
                                "d7cead21-6778-4300-95ad-d9eb095fe112"
                            ? Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 5,
                                  right: 24,
                                ),
                                child: Text(
                                  "Mawater",
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
                              )
                            : const SizedBox(),
                        selectedCategory ==
                                "d7cead21-6778-4300-95ad-d9eb095fe112"
                            ? Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: getVerticalSize(60),
                                    child: ListView.separated(
                                        padding: getPadding(
                                          left: 24,
                                          top: 10,
                                          right: 24,
                                        ),
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (selectedMawaterItems
                                                    .contains(filterController
                                                        .mawaterItems[index]
                                                        .mawaterId!)) {
                                                  selectedMawaterItems.remove(
                                                      filterController
                                                          .mawaterItems[index]
                                                          .mawaterId!);
                                                } else {
                                                  selectedMawaterItems.add(
                                                      filterController
                                                          .mawaterItems[index]
                                                          .mawaterId!);
                                                }
                                              });
                                            },
                                            child: Container(
                                              margin: getMargin(
                                                left: 0,
                                              ),
                                              padding: getPadding(
                                                  left: 16,
                                                  right: 16,
                                                  top: 8,
                                                  bottom: 8),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                color: selectedMawaterItems
                                                        .contains(
                                                            filterController
                                                                .mawaterItems[
                                                                    index]
                                                                .mawaterId!)
                                                    ? ColorConstant.gray500
                                                    : Colors.transparent,
                                                border: Border.all(
                                                  color: ColorConstant.gray500,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  context.locale.toString() ==
                                                          "en"
                                                      ? filterController
                                                          .mawaterItems[index]
                                                          .mawaterName!
                                                      : filterController
                                                          .mawaterItems[index]
                                                          .mawaterArabicName!,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: selectedMawaterItems
                                                            .contains(
                                                                filterController
                                                                    .mawaterItems[
                                                                        index]
                                                                    .mawaterId!)
                                                        ? Colors.white
                                                        : ColorConstant.gray500,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return HorizontalSpace(width: 12);
                                        },
                                        itemCount: filterController
                                            .mawaterItems.length)),
                              )
                            : const SizedBox(),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Mawater Type",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedMawaterType.contains(
                                              filterController
                                                  .mawaterTypeItems[index]
                                                  .mTypeId!)) {
                                            selectedMawaterType.remove(
                                                filterController
                                                    .mawaterTypeItems[index]
                                                    .mTypeId!);
                                          } else {
                                            selectedMawaterType.add(
                                                filterController
                                                    .mawaterTypeItems[index]
                                                    .mTypeId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedMawaterType.contains(
                                                  filterController
                                                      .mawaterTypeItems[index]
                                                      .mTypeId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .mawaterTypeItems[index]
                                                    .mTypeName!
                                                : filterController
                                                    .mawaterTypeItems[index]
                                                    .mTypeArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedMawaterType
                                                      .contains(filterController
                                                          .mawaterTypeItems[
                                                              index]
                                                          .mTypeId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount: filterController
                                      .mawaterTypeItems.length)),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Mawater Status",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedMawaterStatus.contains(
                                              filterController
                                                  .mawaterStatusItems[index]
                                                  .statusId!)) {
                                            selectedMawaterStatus.remove(
                                                filterController
                                                    .mawaterStatusItems[index]
                                                    .statusId!);
                                          } else {
                                            selectedMawaterStatus.add(
                                                filterController
                                                    .mawaterStatusItems[index]
                                                    .statusId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedMawaterStatus.contains(
                                                  filterController
                                                      .mawaterStatusItems[index]
                                                      .statusId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .mawaterStatusItems[index]
                                                    .statusName!
                                                : filterController
                                                    .mawaterStatusItems[index]
                                                    .statusArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedMawaterStatus
                                                      .contains(filterController
                                                          .mawaterStatusItems[
                                                              index]
                                                          .statusId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount: filterController
                                      .mawaterStatusItems.length)),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Mawater Structure",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedMawaterStructure.contains(
                                              filterController
                                                  .mawaterStructureItems[index]
                                                  .structureId!)) {
                                            selectedMawaterStructure.remove(
                                                filterController
                                                    .mawaterStructureItems[
                                                        index]
                                                    .structureId!);
                                          } else {
                                            selectedMawaterStructure.add(
                                                filterController
                                                    .mawaterStructureItems[
                                                        index]
                                                    .structureId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedMawaterStructure
                                                  .contains(filterController
                                                      .mawaterStructureItems[
                                                          index]
                                                      .structureId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .mawaterStructureItems[
                                                        index]
                                                    .structureName!
                                                : filterController
                                                    .mawaterStructureItems[
                                                        index]
                                                    .structureArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedMawaterStructure
                                                      .contains(filterController
                                                          .mawaterStructureItems[
                                                              index]
                                                          .structureId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount: filterController
                                      .mawaterStructureItems.length)),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Price Range",
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
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              80.00,
                            ),
                            width: getHorizontalSize(
                              327.00,
                            ),
                            margin: getMargin(
                              left: 24,
                              top: 18,
                              right: 24,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      bottom: 10,
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgBarChart,
                                      height: getVerticalSize(
                                        58.00,
                                      ),
                                      width: getHorizontalSize(
                                        327.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 34,
                                    right: 24,
                                  ),
                                  child: SliderTheme(
                                    data: SliderThemeData(
                                      trackShape:
                                          const RoundedRectSliderTrackShape(),
                                      activeTrackColor: ColorConstant.gray500,
                                      valueIndicatorColor:
                                          ColorConstant.gray500,
                                      inactiveTrackColor: Colors.transparent,
                                      thumbColor: ColorConstant.whiteA700,
                                      thumbShape: const RoundSliderThumbShape(),
                                    ),
                                    child: RangeSlider(
                                      values: sliderRange2,
                                      divisions: 100000,
                                      min: 1000,
                                      max: 100000.0,
                                      labels: RangeLabels(
                                        sliderRange2.start.round().toString(),
                                        sliderRange2.end.round().toString(),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          sliderRange2 = value;
                                        });
                                      },
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
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "City",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedCity.contains(
                                              filterController
                                                  .cityItems[index].cityId!)) {
                                            selectedCity.remove(filterController
                                                .cityItems[index].cityId!);
                                          } else {
                                            selectedCity.add(filterController
                                                .cityItems[index].cityId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedCity.contains(
                                                  filterController
                                                      .cityItems[index].cityId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .cityItems[index].cityName!
                                                : filterController
                                                    .cityItems[index]
                                                    .cityArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedCity.contains(
                                                      filterController
                                                          .cityItems[index]
                                                          .cityId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount:
                                      filterController.cityItems.length)),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Color",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedColor.contains(
                                              filterController.colorItems[index]
                                                  .colorId!)) {
                                            selectedColor.remove(
                                                filterController
                                                    .colorItems[index]
                                                    .colorId!);
                                          } else {
                                            selectedColor.add(filterController
                                                .colorItems[index].colorId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedColor.contains(
                                                  filterController
                                                      .colorItems[index]
                                                      .colorId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .colorItems[index]
                                                    .colorName!
                                                : filterController
                                                    .colorItems[index]
                                                    .colorArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedColor.contains(
                                                      filterController
                                                          .colorItems[index]
                                                          .colorId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount:
                                      filterController.colorItems.length)),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Year",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedYear.contains(
                                              filterController
                                                  .yearItems[index].yearId!)) {
                                            selectedYear.remove(filterController
                                                .yearItems[index].yearId!);
                                          } else {
                                            selectedYear.add(filterController
                                                .yearItems[index].yearId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedYear.contains(
                                                  filterController
                                                      .yearItems[index].yearId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .yearItems[index].yearName!
                                                : filterController
                                                    .yearItems[index]
                                                    .yearArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedYear.contains(
                                                      filterController
                                                          .yearItems[index]
                                                          .yearId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount:
                                      filterController.yearItems.length)),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 24,
                            right: 24,
                          ),
                          child: Text(
                            tr("subject"),
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
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: SizedBox(
                            height: getVerticalSize(
                              50.00,
                            ),
                            width: getHorizontalSize(
                              380.00,
                            ),
                            child: TextFormField(
                              maxLines: 1,
                              controller: subjectController,
                              focusNode: FocusNode(),
                              decoration: InputDecoration(
                                hintText: tr("subject"),
                                hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      14.0,
                                    ),
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                  top: getVerticalSize(
                                    18.21,
                                  ),
                                  right: getHorizontalSize(
                                    30.00,
                                  ),
                                  bottom: getVerticalSize(
                                    18.20,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: getFontSize(
                                  14.0,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            tr("description"),
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
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: SizedBox(
                            // height: getVerticalSize(
                            //   350.00,
                            // ),
                            width: getHorizontalSize(
                              380.00,
                            ),
                            child: TextFormField(
                              minLines: 2,
                              maxLines: 5,
                              maxLength: 200,
                              controller: descriptionController,
                              focusNode: FocusNode(),
                              decoration: InputDecoration(
                                hintText: tr("description"),
                                hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      14.0,
                                    ),
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                  top: getVerticalSize(
                                    18.21,
                                  ),
                                  right: getHorizontalSize(
                                    30.00,
                                  ),
                                  bottom: getVerticalSize(
                                    18.20,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: getFontSize(
                                  14.0,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Furnishing",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedFurnishing.contains(
                                              filterController
                                                  .furnishingItems[index]
                                                  .furnishingId!)) {
                                            selectedFurnishing.remove(
                                                filterController
                                                    .furnishingItems[index]
                                                    .furnishingId!);
                                          } else {
                                            selectedFurnishing.add(
                                                filterController
                                                    .furnishingItems[index]
                                                    .furnishingId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedFurnishing.contains(
                                                  filterController
                                                      .furnishingItems[index]
                                                      .furnishingId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .furnishingItems[index]
                                                    .furnishingName!
                                                : filterController
                                                    .furnishingItems[index]
                                                    .furnishingArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedFurnishing
                                                      .contains(filterController
                                                          .furnishingItems[
                                                              index]
                                                          .furnishingId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount:
                                      filterController.furnishingItems.length)),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Wheel Movement",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedWheelMovement.contains(
                                              filterController
                                                  .wheelMovementItems[index]
                                                  .wheelMovementId!)) {
                                            selectedWheelMovement.remove(
                                                filterController
                                                    .wheelMovementItems[index]
                                                    .wheelMovementId!);
                                          } else {
                                            selectedWheelMovement.add(
                                                filterController
                                                    .wheelMovementItems[index]
                                                    .wheelMovementId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedWheelMovement.contains(
                                                  filterController
                                                      .wheelMovementItems[index]
                                                      .wheelMovementId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .wheelMovementItems[index]
                                                    .wheelMovementName!
                                                : filterController
                                                    .wheelMovementItems[index]
                                                    .wheelMovementArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedWheelMovement
                                                      .contains(filterController
                                                          .wheelMovementItems[
                                                              index]
                                                          .wheelMovementId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount: filterController
                                      .wheelMovementItems.length)),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Fuel Type",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedFuelType.contains(
                                              filterController
                                                  .fuelTypeItems[index]
                                                  .fuelId!)) {
                                            selectedFuelType.remove(
                                                filterController
                                                    .fuelTypeItems[index]
                                                    .fuelId!);
                                          } else {
                                            selectedFuelType.add(
                                                filterController
                                                    .fuelTypeItems[index]
                                                    .fuelId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedFuelType.contains(
                                                  filterController
                                                      .fuelTypeItems[index]
                                                      .fuelId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .fuelTypeItems[index]
                                                    .fuelName!
                                                : filterController
                                                    .fuelTypeItems[index]
                                                    .fuelArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedFuelType.contains(
                                                      filterController
                                                          .fuelTypeItems[index]
                                                          .fuelId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount:
                                      filterController.fuelTypeItems.length)),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Engin Capacity",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedEnginCapacity.contains(
                                              filterController
                                                  .enginCapacityItems[index]
                                                  .capacityId!)) {
                                            selectedEnginCapacity.remove(
                                                filterController
                                                    .enginCapacityItems[index]
                                                    .capacityId!);
                                          } else {
                                            selectedEnginCapacity.add(
                                                filterController
                                                    .enginCapacityItems[index]
                                                    .capacityId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedEnginCapacity.contains(
                                                  filterController
                                                      .enginCapacityItems[index]
                                                      .capacityId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .enginCapacityItems[index]
                                                    .capacityName!
                                                : filterController
                                                    .enginCapacityItems[index]
                                                    .capacityArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedEnginCapacity
                                                      .contains(filterController
                                                          .enginCapacityItems[
                                                              index]
                                                          .capacityId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount: filterController
                                      .enginCapacityItems.length)),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 5,
                            right: 24,
                          ),
                          child: Text(
                            "Car Transmition",
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getVerticalSize(60),
                              child: ListView.separated(
                                  padding: getPadding(
                                    left: 24,
                                    top: 10,
                                    right: 24,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedCarTransmition.contains(
                                              filterController
                                                  .carTransmitionItems[index]
                                                  .transId!)) {
                                            selectedCarTransmition.remove(
                                                filterController
                                                    .carTransmitionItems[index]
                                                    .transId!);
                                          } else {
                                            selectedCarTransmition.add(
                                                filterController
                                                    .carTransmitionItems[index]
                                                    .transId!);
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin: getMargin(
                                          left: 0,
                                        ),
                                        padding: getPadding(
                                            left: 16,
                                            right: 16,
                                            top: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              20.00,
                                            ),
                                          ),
                                          color: selectedCarTransmition
                                                  .contains(filterController
                                                      .carTransmitionItems[
                                                          index]
                                                      .transId!)
                                              ? ColorConstant.gray500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            context.locale.toString() == "en"
                                                ? filterController
                                                    .carTransmitionItems[index]
                                                    .transName!
                                                : filterController
                                                    .carTransmitionItems[index]
                                                    .transArabicName!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: selectedCarTransmition
                                                      .contains(filterController
                                                          .carTransmitionItems[
                                                              index]
                                                          .transId!)
                                                  ? Colors.white
                                                  : ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return HorizontalSpace(width: 12);
                                  },
                                  itemCount: filterController
                                      .carTransmitionItems.length)),
                        ),
                      ],
                    ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 24,
              top: 5,
              right: 24,
            ),
            child: CustomDivider(isDark: isDark),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 10,
                top: 10,
                right: 10,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomButton(
                    isDark: isDark,
                    width: 184,
                    text: "Reset",
                    variant: ButtonVariant.FillGray200,
                    shape: ButtonShape.CircleBorder29,
                    padding: ButtonPadding.PaddingAll18,
                    fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                  ),
                  // HorizontalSpace(width: 12),

                  CustomButton(
                    isDark: isDark,
                    width: 184,
                    text: "Apply",
                    margin: getMargin(
                      left: 0,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    variant: ButtonVariant.OutlineBlack9003f,
                    shape: ButtonShape.CircleBorder29,
                    padding: ButtonPadding.PaddingAll18,
                    fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
