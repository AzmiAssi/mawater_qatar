import '../light_rating_reviews_screen/widgets/listellipse1_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LightRatingReviewsScreen extends StatelessWidget {
  const LightRatingReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                left: 24,
                top: 33,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: size.width,
                    margin: getMargin(
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 3,
                            bottom: 1,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                  bottom: 4,
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
                                  "4.8 (86 reviews)",
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
                            bottom: 2,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgSearch,
                            height: getVerticalSize(
                              22.00,
                            ),
                            width: getHorizontalSize(
                              21.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 33,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomTextFormField(
                                isDark: isDark,
                                width: 83,
                                focusNode: FocusNode(),
                                hintText: "lbl_all",
                                variant: TextFormFieldVariant.FillGray500,
                                shape: TextFormFieldShape.CircleBorder19,
                                padding: TextFormFieldPadding.PaddingAll11,
                                fontStyle: TextFormFieldFontStyle
                                    .UrbanistSemiBold16WhiteA700,
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                  margin: getMargin(
                                    left: 21,
                                    top: 12,
                                    right: 9,
                                    bottom: 12,
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imageNotFound,
                                    height: getVerticalSize(
                                      12.00,
                                    ),
                                    width: getHorizontalSize(
                                      13.00,
                                    ),
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  minWidth: getSize(
                                    12.00,
                                  ),
                                  minHeight: getSize(
                                    12.00,
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 12,
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 21,
                                        top: 12,
                                        bottom: 12,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imageNotFound,
                                        height: getVerticalSize(
                                          12.00,
                                        ),
                                        width: getHorizontalSize(
                                          13.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 9,
                                        top: 11,
                                        right: 20,
                                        bottom: 10,
                                      ),
                                      child: Text(
                                        "5",
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
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 12,
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 21,
                                        top: 12,
                                        bottom: 12,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imageNotFound,
                                        height: getVerticalSize(
                                          12.00,
                                        ),
                                        width: getHorizontalSize(
                                          13.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 9,
                                        top: 11,
                                        right: 20,
                                        bottom: 10,
                                      ),
                                      child: Text(
                                        "4",
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
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 12,
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 21,
                                        top: 12,
                                        bottom: 12,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imageNotFound,
                                        height: getVerticalSize(
                                          12.00,
                                        ),
                                        width: getHorizontalSize(
                                          13.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 9,
                                        top: 11,
                                        right: 20,
                                        bottom: 10,
                                      ),
                                      child: Text(
                                        "3",
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
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 12,
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 21,
                                        top: 12,
                                        bottom: 12,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imageNotFound,
                                        height: getVerticalSize(
                                          12.00,
                                        ),
                                        width: getHorizontalSize(
                                          13.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 9,
                                        top: 11,
                                        right: 20,
                                        bottom: 10,
                                      ),
                                      child: Text(
                                        "2",
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
                              Container(
                                margin: getMargin(
                                  left: 12,
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 21,
                                        top: 12,
                                        bottom: 12,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imageNotFound,
                                        height: getVerticalSize(
                                          12.00,
                                        ),
                                        width: getHorizontalSize(
                                          13.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 9,
                                        top: 8,
                                        right: 20,
                                        bottom: 8,
                                      ),
                                      child: Text(
                                        "lbl_1",
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 24,
                            right: 10,
                          ),
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return const Listellipse1ItemWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
