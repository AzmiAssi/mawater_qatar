import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

// ignore: must_be_immutable
class Listautolayouthor3ItemWidget extends StatelessWidget {
  const Listautolayouthor3ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          top: getVerticalSize(
            16.00,
          ),
          right: getHorizontalSize(
            1.80,
          ),
          bottom: getVerticalSize(
            16.00,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: getSize(
                  76.00,
                ),
                minWidth: getSize(
                  76.00,
                ),
              ),
              padding: const EdgeInsets.all(0),
              icon: Container(
                width: getSize(
                  76.00,
                ),
                height: getSize(
                  76.00,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray500,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      38.00,
                    ),
                  ),
                ),
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    26.33,
                  ),
                  top: getVerticalSize(
                    26.33,
                  ),
                  right: getHorizontalSize(
                    26.33,
                  ),
                  bottom: getVerticalSize(
                    26.33,
                  ),
                ),
                // child: Image.asset(
                //   ImageConstant.imgAutolayouthor29,
                // ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  24.00,
                ),
                top: getVerticalSize(
                  3.21,
                ),
                bottom: getVerticalSize(
                  3.40,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Text(
                      "New Order Made!",
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
                    width: getHorizontalSize(
                      179.00,
                    ),
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        8.61,
                      ),
                    ),
                    child: Text(
                      "You have created a new shipping order",
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
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  28.21,
                ),
                bottom: getVerticalSize(
                  28.20,
                ),
              ),
              child: Text(
                "2 hours ago",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.gray500,
                  fontSize: getFontSize(
                    14,
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
    );
  }
}
