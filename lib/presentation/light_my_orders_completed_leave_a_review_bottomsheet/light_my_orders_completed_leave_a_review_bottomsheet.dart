import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/custom_text_form_field.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore_for_file: must_be_immutable
class LightMyOrdersCompletedLeaveAReviewBottomsheet extends StatefulWidget {
  const LightMyOrdersCompletedLeaveAReviewBottomsheet({super.key});

  @override
  State<LightMyOrdersCompletedLeaveAReviewBottomsheet> createState() =>
      _LightMyOrdersCompletedLeaveAReviewBottomsheetState();
}

class _LightMyOrdersCompletedLeaveAReviewBottomsheetState
    extends State<LightMyOrdersCompletedLeaveAReviewBottomsheet> {
  TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    textEditingController.text = "Amazing car & fast delivery! 🔥🔥";
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
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
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 26,
                      right: 24,
                    ),
                    child: Text(
                      "Leave a Review",
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
                  VerticalSpace(height: 16),
                  CustomDivider(isDark: isDark),
                  Container(
                    margin: getMargin(
                      left: 24,
                      top: 23,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: isDark
                          ? ColorConstant.darkTextField
                          : ColorConstant.whiteA700,
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
                            color: isDark
                                ? ColorConstant.darkLine
                                : ColorConstant.gray100,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  20.00,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        20.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgImage102X120,
                                      height: getVerticalSize(
                                        102.00,
                                      ),
                                      width: getHorizontalSize(
                                        120.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 16,
                            top: 28,
                            bottom: 25,
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
                                  "Porsche Sports",
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
                                  top: 12,
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
                                        color: ColorConstant.red500,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            8.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                        top: 5,
                                        bottom: 5,
                                      ),
                                      child: Text(
                                        "Red",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray700,
                                          fontSize: getFontSize(
                                            12,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.20,
                                        ),
                                      ),
                                    ),
                                    HorizontalSpace(width: 16),
                                    CustomButton(
                                      isDark: isDark,
                                      width: 72,
                                      text: "Completed",
                                      margin: getMargin(
                                        left: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 12,
                                  right: 10,
                                ),
                                child: Text(
                                  "172,500 ${Constants.currency}",
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
                            ],
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
                      380.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray201,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 28,
                      right: 24,
                    ),
                    child: Text(
                      "How is your car?",
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
                  Padding(
                    padding: getPadding(
                      left: 0,
                      top: 16,
                      right: 0,
                    ),
                    child: Text(
                      "Please give your rating & also your review...",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: isDark ? Colors.white : ColorConstant.gray700,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                  VerticalSpace(height: 10),
                  RatingBar(
                    initialRating: 4,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full: Image.asset(
                        ImageConstant.boldStar,
                        color: ColorConstant.gray500,
                      ),
                      half: Image.asset(ImageConstant.boldStar),
                      empty: Image.asset(
                        ImageConstant.star,
                        color: ColorConstant.gray500,
                      ),
                    ),
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: CustomTextFormField(
                      isDark: isDark,
                      width: 380,
                      focusNode: FocusNode(),
                      hintText: "Amazing car & fast delivery! 🔥🔥",
                      margin: getMargin(
                        left: 24,
                        top: 27,
                        right: 24,
                      ),
                      padding: TextFormFieldPadding.PaddingAll18,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: getMargin(
                          left: 20,
                          top: 20,
                          right: 20,
                          bottom: 20,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgIcon,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        minWidth: getHorizontalSize(
                          15.00,
                        ),
                        minHeight: getVerticalSize(
                          15.00,
                        ),
                      ),
                    ),
                  ),
                  VerticalSpace(height: 10),
                  CustomDivider(isDark: isDark),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 23,
                      right: 24,
                      bottom: 36,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomButton(
                          isDark: isDark,
                          width: 182,
                          text: "Cancel",
                          onTap: () {
                            Navigator.pop(context);
                          },
                          variant: ButtonVariant.FillGray200,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingAll18,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                        ),
                        CustomButton(
                          isDark: isDark,
                          width: 182,
                          text: "Submet",
                          margin: getMargin(
                            left: 12,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                          variant: ButtonVariant.OutlineBlack9003f,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingAll18,
                          fontStyle:
                              ButtonFontStyle.UrbanistRomanBold16WhiteA700,
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
    );
  }
}
