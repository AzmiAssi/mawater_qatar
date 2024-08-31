import 'package:mawater_qatar/data/cars_list.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import '../light_home_full_page_screen/widgets/listlocation3_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LightSearchResultsListScreen extends StatelessWidget {
  TextEditingController stateFilledSeController = TextEditingController();

  LightSearchResultsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            VerticalSpace(height: 20),
            CustomSearchView(
              isDark: isDark,
              width: 380,
              focusNode: FocusNode(),
              controller: stateFilledSeController,
              hintText: "Sports Car",
              prefix: Container(
                margin: getMargin(
                  left: 22,
                  top: 20,
                  right: 14,
                  bottom: 19,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgSearchGray400,
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
              suffix: Padding(
                padding: EdgeInsets.only(
                  right: getHorizontalSize(
                    15.00,
                  ),
                ),
                child: IconButton(
                  onPressed: stateFilledSeController.clear,
                  icon: Icon(
                    Icons.clear,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                minWidth: getHorizontalSize(
                  16.00,
                ),
                minHeight: getVerticalSize(
                  14.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(top: 27, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: getMargin(
                      top: 1,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Results for “',
                            style: TextStyle(
                              color:
                                  isDark ? Colors.white : ColorConstant.gray900,
                              fontSize: getFontSize(
                                20,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'Sports Car',
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                20,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: '”',
                            style: TextStyle(
                              color:
                                  isDark ? Colors.white : ColorConstant.gray900,
                              fontSize: getFontSize(
                                20,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 4,
                    ),
                    child: Text(
                      "9,275 founds",
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
            Expanded(
              child: Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: GridView.builder(
                  padding: getPadding(left: 20, right: 20),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(
                      252.5,
                    ),
                    crossAxisCount: 2,
                    mainAxisSpacing: getHorizontalSize(
                      16.00,
                    ),
                    crossAxisSpacing: getHorizontalSize(
                      16.00,
                    ),
                  ),
                  physics: const BouncingScrollPhysics(),
                  itemCount: carsList.length,
                  itemBuilder: (context, index) {
                    return Listlocation3ItemWidget(
                      index: index,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
