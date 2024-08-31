import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/models/chat_model.dart';
import 'package:mawater_qatar/widgets/custom_icon_button.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LightInboxCallScreen extends StatelessWidget {
  ChatModel callinfo;
  LightInboxCallScreen({super.key, required this.callinfo});
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(
                          left: 28,
                          top: 40,
                          right: 28,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: isDark ? Colors.white : Colors.black,
                          ),
                        )),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      200.00,
                    ),
                    margin: getMargin(
                      left: 28,
                      top: 189,
                      right: 28,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                100.00,
                              ),
                            ),
                            child: CommonImageView(
                              imagePath: callinfo.img,
                              height: getSize(
                                200.00,
                              ),
                              width: getSize(
                                200.00,
                              ),
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
                      left: 28,
                      top: 50,
                      right: 28,
                    ),
                    child: Text(
                      callinfo.title,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray500,
                        fontSize: getFontSize(
                          32,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 28,
                      top: 30,
                      right: 28,
                    ),
                    child: Text(
                      "01:25 minutes",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray700A2,
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 28,
                      top: 176,
                      right: 28,
                      bottom: 48,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomIconButton(
                            height: 80,
                            width: 80,
                            variant: IconButtonVariant.GradientGray500Gray500,
                            shape: IconButtonShape.CircleBorder40,
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.clear,
                                  color: Colors.white,
                                ))),
                        HorizontalSpace(width: 16),
                        CustomIconButton(
                          height: 80,
                          width: 80,
                          margin: getMargin(
                            left: 0,
                          ),
                          variant: IconButtonVariant.GradientGray500Gray500,
                          shape: IconButtonShape.CircleBorder40,
                          padding: IconButtonPadding.PaddingAll22,
                          child: CommonImageView(
                            imagePath: ImageConstant.vidCall,
                          ),
                        ),
                        HorizontalSpace(width: 16),
                        CustomIconButton(
                          height: 80,
                          width: 80,
                          margin: getMargin(
                            left: 0,
                          ),
                          variant: IconButtonVariant.OutlineBlack9003f1,
                          shape: IconButtonShape.CircleBorder40,
                          padding: IconButtonPadding.PaddingAll22,
                          child: CommonImageView(
                            imagePath: ImageConstant.volumeUp,
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
