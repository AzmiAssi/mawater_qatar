import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../../core/app_export.dart';

// ignore: must_be_immutable
class ListautolayouthorItemWidget extends StatelessWidget {
  const ListautolayouthorItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: getHorizontalSize(
            3.00,
          ),
          top: getVerticalSize(
            3.00,
          ),
          right: getHorizontalSize(
            3.00,
          ),
          bottom: getVerticalSize(
            3.00,
          ),
        ),
        strokeWidth: getHorizontalSize(
          3.00,
        ),
        gradient: LinearGradient(
          begin: const Alignment(
            1.0000000298023233,
            1.0000000298023233,
          ),
          end: const Alignment(
            1.1102230246251565e-16,
            0,
          ),
          colors: [
            ColorConstant.gray500,
            ColorConstant.gray500,
          ],
        ),
        corners: const Corners(
          topLeft: Radius.circular(
            20,
          ),
          topRight: Radius.circular(
            20,
          ),
          bottomLeft: Radius.circular(
            20,
          ),
          bottomRight: Radius.circular(
            20,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            // Padding(
            //   padding: EdgeInsets.only(
            //     left: getHorizontalSize(
            //       24.00,
            //     ),
            //     top: getVerticalSize(
            //       24.00,
            //     ),
            //     bottom: getVerticalSize(
            //       24.00,
            //     ),
            //   ),
            //   child: IconButton(
            //     onPressed: () {},
            //     constraints: BoxConstraints(
            //       minHeight: getSize(
            //         80.00,
            //       ),
            //       minWidth: getSize(
            //         80.00,
            //       ),
            //     ),
            //     padding: EdgeInsets.all(0),
            //     icon: Container(
            //       width: getSize(
            //         80.00,
            //       ),
            //       height: getSize(
            //         80.00,
            //       ),
            //       decoration: BoxDecoration(
            //         color: ColorConstant.gray500,
            //         borderRadius: BorderRadius.circular(
            //           getHorizontalSize(
            //             40.00,
            //           ),
            //         ),
            //       ),
            //       padding: EdgeInsets.only(
            //         left: getHorizontalSize(
            //           26.66,
            //         ),
            //         top: getVerticalSize(
            //           26.66,
            //         ),
            //         right: getHorizontalSize(
            //           26.66,
            //         ),
            //         bottom: getVerticalSize(
            //           26.66,
            //         ),
            //       ),
            //       child: Image.asset(
            //         ImageConstant.imgAutolayouthor10,
            //       ),
            //     ),
            //   ),
            // ),

            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  20.00,
                ),
                top: getVerticalSize(
                  39.00,
                ),
                right: getHorizontalSize(
                  24.00,
                ),
                bottom: getVerticalSize(
                  39.00,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Text(
                      "via SMS:",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray600,
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
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        8.41,
                      ),
                    ),
                    child: Text(
                      "+1 111 ******99",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.black900,
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
          ],
        ),
      ),
    );
  }
}
