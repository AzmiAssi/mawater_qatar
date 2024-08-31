import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

// ignore: must_be_immutable
class Listview27ItemWidget extends StatelessWidget {
  const Listview27ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: EdgeInsets.only(
        top: getVerticalSize(
          12.00,
        ),
        bottom: getVerticalSize(
          12.00,
        ),
      ),
      decoration: BoxDecoration(
        color: isDark ? ColorConstant.darkTextField : ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: isDark ? Colors.transparent : ColorConstant.black9000c,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  1.00,
                ),
                top: getVerticalSize(
                  16.00,
                ),
                bottom: getVerticalSize(
                  16.00,
                ),
              ),
              child: Image.asset(
                ImageConstant.noti2,
                height: getVerticalSize(80),
                width: getHorizontalSize(83),
              )),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                20.00,
              ),
              top: getVerticalSize(
                31.21,
              ),
              right: getHorizontalSize(
                20.00,
              ),
              bottom: getVerticalSize(
                31.20,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "New Services Available!",
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
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      8.41,
                    ),
                  ),
                  child: Text(
                    "Now you can track orders in real time",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: isDark ? Colors.white : ColorConstant.gray700,
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
        ],
      ),
    );
  }
}
