import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LightSearchResultNotFoundScreen extends StatelessWidget {
  TextEditingController stateFilledSeController = TextEditingController();

  LightSearchResultNotFoundScreen({super.key});
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomSearchView(
                  isDark: isDark,
                  width: 380,
                  focusNode: FocusNode(),
                  controller: stateFilledSeController,
                  hintText: "lbl_abcdefghijk2",
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
                  padding: getPadding(
                    left: 24,
                    top: 27,
                    right: 24,
                  ),
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
                                  color: ColorConstant.gray900,
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '',
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
                                  color: ColorConstant.gray900,
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
                          "0 found",
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
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 124,
                    right: 24,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgFrameBluegray800,
                    height: getVerticalSize(
                      244.00,
                    ),
                    width: getHorizontalSize(
                      250.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 42,
                    right: 24,
                  ),
                  child: Text(
                    "lbl_not_found",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        24,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    336.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 20,
                    right: 24,
                    bottom: 20,
                  ),
                  child: Text(
                    "msg_sorry_the_keyw",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        18,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.20,
                    ),
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
