import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Gridlocation1ItemWidget extends StatelessWidget {
  const Gridlocation1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: getVerticalSize(
            150.00,
          ),
          width: getHorizontalSize(
            182.00,
          ),
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: const EdgeInsets.all(0),
            color: ColorConstant.gray100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  24.00,
                ),
              ),
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        24.00,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgImage150X182,
                      height: getVerticalSize(
                        150.00,
                      ),
                      width: getHorizontalSize(
                        182.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: getPadding(
                      all: 22,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          7.50,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: getSize(
                          15.00,
                        ),
                        width: getSize(
                          15.00,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 16,
            right: 10,
          ),
          child: Text(
            "lbl_toyota_sports",
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
            left: 1,
            top: 7,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: getPadding(
                  top: 4,
                  bottom: 4,
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: getVerticalSize(
                    15.00,
                  ),
                  width: getHorizontalSize(
                    16.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 9,
                  top: 5,
                  bottom: 4,
                ),
                child: Text(
                  "lbl_4_6",
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
              Padding(
                padding: getPadding(
                  left: 8,
                  top: 7,
                  bottom: 2,
                ),
                child: Text(
                  "lbl",
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
              CustomButton(
                isDark: isDark,
                width: 41,
                text: "lbl_new",
                margin: getMargin(
                  left: 8,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            top: 8,
            right: 10,
          ),
          child: Text(
            "167,000",
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
      ],
    );
  }
}
