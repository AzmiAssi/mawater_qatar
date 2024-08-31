import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LightSettingsHelpCenterFaqScreen extends StatelessWidget {
  TextEditingController stateDefaultSController = TextEditingController();

  LightSettingsHelpCenterFaqScreen({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: size.width,
                    margin: getMargin(
                      left: 24,
                      top: 33,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 5,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                  bottom: 6,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: getVerticalSize(
                                    15.00,
                                  ),
                                  width: getHorizontalSize(
                                    19.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                ),
                                child: Text(
                                  "Help Center",
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 3,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getSize(
                              21.00,
                            ),
                            width: getSize(
                              21.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 33,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: getMargin(
                            top: 3,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 79,
                                  right: 78,
                                ),
                                child: Text(
                                  "lbl_faq",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  4.00,
                                ),
                                width: getHorizontalSize(
                                  190.00,
                                ),
                                margin: getMargin(
                                  top: 15,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray500,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      2.00,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 3,
                            bottom: 2,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 50,
                                  right: 50,
                                ),
                                child: Text(
                                  "lbl_contact_us",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray502,
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  2.00,
                                ),
                                width: getHorizontalSize(
                                  190.00,
                                ),
                                margin: getMargin(
                                  top: 15,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray201,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      1.00,
                                    ),
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
                Align(
                  alignment: Alignment.centerRight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 10,
                      top: 24,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: getPadding(
                            left: 20,
                            top: 11,
                            right: 20,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                19.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "lbl_general",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 11,
                            right: 20,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                19.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray500,
                              width: getHorizontalSize(
                                2.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "lbl_account",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 11,
                            right: 20,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                19.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray500,
                              width: getHorizontalSize(
                                2.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "lbl_service",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 13,
                            right: 20,
                            bottom: 8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                19.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray500,
                              width: getHorizontalSize(
                                2.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "lbl_payment",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.gray500,
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
                ),
                CustomSearchView(
                  isDark: isDark,
                  width: 380,
                  focusNode: FocusNode(),
                  controller: stateDefaultSController,
                  hintText: "lbl_search",
                  margin: getMargin(
                    left: 10,
                    top: 24,
                    right: 10,
                  ),
                  padding: SearchViewPadding.PaddingTB21,
                  fontStyle: SearchViewFontStyle.UrbanistRegular14,
                  alignment: Alignment.center,
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
                      onPressed: stateDefaultSController.clear,
                      icon: Icon(
                        Icons.clear,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    minWidth: getHorizontalSize(
                      13.00,
                    ),
                    minHeight: getVerticalSize(
                      12.00,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 10,
                      top: 24,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.black9000c,
                          spreadRadius: getHorizontalSize(
                            2.00,
                          ),
                          blurRadius: getHorizontalSize(
                            2.00,
                          ),
                          offset: const Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 26,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "lbl_what_is_mawater_qatar",
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
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                  bottom: 3,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: getVerticalSize(
                                    10.00,
                                  ),
                                  width: getHorizontalSize(
                                    12.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            332.00,
                          ),
                          margin: getMargin(
                            left: 24,
                            top: 19,
                            right: 24,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray201,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            321.00,
                          ),
                          margin: getMargin(
                            left: 24,
                            top: 19,
                            right: 24,
                            bottom: 24,
                          ),
                          child: Text(
                            "msg_lorem_ipsum_dol",
                            maxLines: null,
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
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 10,
                      top: 24,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.black9000c,
                          spreadRadius: getHorizontalSize(
                            2.00,
                          ),
                          blurRadius: getHorizontalSize(
                            2.00,
                          ),
                          offset: const Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 26,
                            bottom: 27,
                          ),
                          child: Text(
                            "msg_how_to_use_care",
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
                            top: 31,
                            right: 30,
                            bottom: 31,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getVerticalSize(
                              10.00,
                            ),
                            width: getHorizontalSize(
                              12.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 10,
                      top: 24,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.black9000c,
                          spreadRadius: getHorizontalSize(
                            2.00,
                          ),
                          blurRadius: getHorizontalSize(
                            2.00,
                          ),
                          offset: const Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 26,
                            bottom: 27,
                          ),
                          child: Text(
                            "msg_how_do_i_cancel",
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
                            top: 31,
                            right: 30,
                            bottom: 31,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getVerticalSize(
                              10.00,
                            ),
                            width: getHorizontalSize(
                              12.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 10,
                      top: 24,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.black9000c,
                          spreadRadius: getHorizontalSize(
                            2.00,
                          ),
                          blurRadius: getHorizontalSize(
                            2.00,
                          ),
                          offset: const Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 28,
                            bottom: 24,
                          ),
                          child: Text(
                            "msg_can_i_get_a_dis",
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
                            left: 46,
                            top: 31,
                            bottom: 31,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getVerticalSize(
                              10.00,
                            ),
                            width: getHorizontalSize(
                              12.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 10,
                      top: 24,
                      right: 10,
                      bottom: 31,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.black9000c,
                          spreadRadius: getHorizontalSize(
                            2.00,
                          ),
                          blurRadius: getHorizontalSize(
                            2.00,
                          ),
                          offset: const Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 28,
                            bottom: 24,
                          ),
                          child: Text(
                            "msg_why_can_t_i_mak",
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
                            top: 31,
                            right: 30,
                            bottom: 31,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getVerticalSize(
                              10.00,
                            ),
                            width: getHorizontalSize(
                              12.00,
                            ),
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
      ),
    );
  }
}
