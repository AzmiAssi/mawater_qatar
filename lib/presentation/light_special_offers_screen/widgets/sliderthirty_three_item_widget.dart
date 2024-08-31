import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderthirtyThreeItemWidget extends StatelessWidget {
  const SliderthirtyThreeItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: getVerticalSize(
          181.00,
        ),
        width: getHorizontalSize(
          380.00,
        ),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: const EdgeInsets.all(0),
          color: ColorConstant.gray200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                32.00,
              ),
            ),
          ),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: getMargin(
                    left: 32,
                    top: 29,
                    right: 32,
                    bottom: 29,
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
                          "lbl_122",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              40,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 19,
                          right: 10,
                        ),
                        child: Text(
                          "Black Friday!",
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
                      Container(
                        width: getHorizontalSize(
                          128.00,
                        ),
                        margin: getMargin(
                          top: 12,
                        ),
                        child: Text(
                          "Get a new car discount,\nonly valid this week",
                          maxLines: null,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              12,
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
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    left: 10,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgImage4,
                    height: getVerticalSize(
                      181.00,
                    ),
                    width: getHorizontalSize(
                      252.00,
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
