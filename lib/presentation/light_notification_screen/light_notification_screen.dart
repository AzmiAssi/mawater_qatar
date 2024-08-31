import '../light_notification_screen/widgets/listlocation2_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class LightNotificationScreen extends StatelessWidget {
  const LightNotificationScreen({super.key});

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
                right: 24,
              ),
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
                        right: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 2,
                              bottom: 2,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 4,
                                    bottom: 3,
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
                                    "lbl_notification",
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
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 37,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
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
                            "lbl_today",
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
                        Container(
                          margin: getMargin(
                            top: 24,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                24.00,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomIconButton(
                                height: 68,
                                width: 68,
                                margin: getMargin(
                                  top: 16,
                                  bottom: 68,
                                ),
                                variant:
                                    IconButtonVariant.GradientGray500Gray500,
                                shape: IconButtonShape.CircleBorder34,
                                padding: IconButtonPadding.PaddingAll22,
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgExcludeWhiteA700,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 16,
                                  bottom: 16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        right: 10,
                                      ),
                                      child: Text(
                                        "msg_your_offer_has2",
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
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: getHorizontalSize(
                                          254.00,
                                        ),
                                        margin: getMargin(
                                          top: 12,
                                          right: 5,
                                        ),
                                        child: Text(
                                          "msg_congrats_your2",
                                          maxLines: null,
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
                                    ),
                                    CustomButton(
                                      isDark: isDark,
                                      width: 131,
                                      text: "View Details",
                                      margin: getMargin(
                                        top: 12,
                                        right: 10,
                                      ),
                                      variant: ButtonVariant.OutlineGray500,
                                      shape: ButtonShape.CircleBorder19,
                                      padding: ButtonPadding.PaddingAll9,
                                      fontStyle:
                                          ButtonFontStyle.UrbanistSemiBold16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 27,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_yesterday",
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
                            top: 24,
                          ),
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return const Listlocation2ItemWidget();
                            },
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 25,
                            right: 10,
                          ),
                          child: Text(
                            "December 22, 2024",
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
                        Container(
                          margin: getMargin(
                            top: 26,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                24.00,
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
                              CustomIconButton(
                                height: 68,
                                width: 68,
                                margin: getMargin(
                                  left: 16,
                                  top: 16,
                                  bottom: 16,
                                ),
                                variant:
                                    IconButtonVariant.GradientGray500Gray500,
                                shape: IconButtonShape.CircleBorder34,
                                padding: IconButtonPadding.PaddingAll22,
                                child: CommonImageView(
                                  svgPath: ImageConstant.imageNotFound,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 20,
                                  top: 28,
                                  bottom: 25,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Account Setup Successful!",
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
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 8,
                                          right: 7,
                                        ),
                                        child: Text(
                                          "msg_your_account_ha",
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
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
