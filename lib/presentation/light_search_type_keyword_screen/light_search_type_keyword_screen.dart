import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/presentation/light_search_results_list_screen/light_search_results_list_screen.dart';
import 'package:mawater_qatar/presentation/light_sort_filter_screen/light_sort_filter_screen.dart';
import 'package:mawater_qatar/widgets/custom_search_view.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LightSearchTypeKeywordScreen extends StatelessWidget {
  TextEditingController stateActiveSeController = TextEditingController();

  LightSearchTypeKeywordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSearchView(
                  isDark: isDark,
                  width: 380,
                  focusNode: FocusNode(),
                  controller: stateActiveSeController,
                  hintText: "search",
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  prefix: Container(
                    margin: getMargin(
                      left: 22,
                      top: 20,
                      right: 14,
                      bottom: 19,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgSearchGray500,
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
                  suffix: InkWell(
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
                          right: getHorizontalSize(
                            10.00,
                          ),
                          left: getHorizontalSize(10)),
                      child: CommonImageViewWithDarkOption(
                        imagePath: ImageConstant.filter,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxWidth: getHorizontalSize(
                      45.00,
                    ),
                    maxHeight: getVerticalSize(
                      45.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 26,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Recent",
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
                      Padding(
                        padding: getPadding(
                          top: 1,
                          bottom: 3,
                        ),
                        child: Text(
                          "Clear All",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray500,
                            fontSize: getFontSize(
                              16,
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
                VerticalSpace(height: 10),
                CustomDivider(
                  isDark: isDark,
                ),
                ListView.separated(
                  padding: getPadding(
                    left: 24,
                    top: 20,
                    right: 24,
                  ),
                  itemCount: 8,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return VerticalSpace(
                      height: 16,
                    );
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LightSearchResultsListScreen()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Mclaren",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: Icon(
                                Icons.clear,
                                color: ColorConstant.gray600,
                              )),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
