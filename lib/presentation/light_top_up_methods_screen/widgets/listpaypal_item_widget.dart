import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/app_export.dart';

// ignore: must_be_immutable
class ListpaypalItemWidget extends StatefulWidget {
  const ListpaypalItemWidget({super.key});

  @override
  State<ListpaypalItemWidget> createState() => _ListpaypalItemWidgetState();
}

class _ListpaypalItemWidgetState extends State<ListpaypalItemWidget> {
  int radioGroup = 100;

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
      child: InkWell(
        radius: getHorizontalSize(16),
        onTap: () {
          setState(() {
            radioGroup = 0;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: context.locale == Constants.engLocal
                        ? getHorizontalSize(
                            20.00,
                          )
                        : getHorizontalSize(0),
                    right: context.locale == Constants.arLocal
                        ? getHorizontalSize(
                            20.00,
                          )
                        : getHorizontalSize(0),
                    top: getVerticalSize(
                      27.00,
                    ),
                    bottom: getVerticalSize(
                      27.00,
                    ),
                  ),
                  child: SizedBox(
                    height: getVerticalSize(
                      26.00,
                    ),
                    width: getHorizontalSize(
                      22.00,
                    ),
                    child: SvgPicture.asset(
                      ImageConstant.payPal,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      17.00,
                    ),
                    right: getHorizontalSize(
                      17.00,
                    ),
                    top: getVerticalSize(
                      29.00,
                    ),
                    bottom: getVerticalSize(
                      29.41,
                    ),
                  ),
                  child: Text(
                    "PayPal",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
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
            Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  16.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: ColorConstant.gray500,
                  // disabledColor: Colors.blue
                ),
                child: Radio(
                  value: 0,
                  activeColor: ColorConstant.gray500,
                  groupValue: radioGroup,
                  onChanged: (value) {
                    setState(() {
                      radioGroup = value as int;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
