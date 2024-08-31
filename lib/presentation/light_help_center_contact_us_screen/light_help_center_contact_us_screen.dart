// ignore_for_file: use_key_in_widget_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/app_export.dart';

class LightHelpCenterContactUsScreen extends StatelessWidget {
  //change whatsapp phone number in the url bellow
  final Uri _url1 = Uri.parse('whatsapp://send?phone=+201066113500');
  final Uri _url2 = Uri.parse('https://www.facebook.com/DokkanAgency');
  final Uri _url3 = Uri.parse('https://twitter.com/DokkanAgency');
  final Uri _url4 = Uri.parse('https://www.instagram.com/DokkanAgency');

  void _launchUrl(Uri url) async {
    if (!await launchUrl(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                24.00,
              ),
              right: getHorizontalSize(
                10.00,
              ),
            ),
            decoration: BoxDecoration(
              color: isDark
                  ? ColorConstant.darkTextField
                  : ColorConstant.whiteA700,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  20.00,
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
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
                      26.00,
                    ),
                    bottom: getVerticalSize(
                      25.14,
                    ),
                  ),
                  child: SizedBox(
                    height: getVerticalSize(
                      20.86,
                    ),
                    width: getHorizontalSize(
                      20.00,
                    ),
                    child: SvgPicture.asset(
                      ImageConstant.help1,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
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
                      25.21,
                    ),
                    bottom: getVerticalSize(
                      25.20,
                    ),
                  ),
                  child: Text(
                    "Customer Service",
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
          InkWell(
            onTap: () {
              //you need to change the whatsapp phone number
              _launchUrl(_url1);
            },
            child: Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              decoration: BoxDecoration(
                color: isDark
                    ? ColorConstant.darkTextField
                    : ColorConstant.whiteA700,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        isDark ? Colors.transparent : ColorConstant.black9000c,
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
                        26.88,
                      ),
                    ),
                    child: SizedBox(
                      height: getVerticalSize(
                        18.12,
                      ),
                      width: getHorizontalSize(
                        18.03,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.help2,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
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
                        25.21,
                      ),
                      bottom: getVerticalSize(
                        25.20,
                      ),
                    ),
                    child: Text(
                      "WhatsApp",
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
          ),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                24.00,
              ),
              right: getHorizontalSize(
                10.00,
              ),
            ),
            decoration: BoxDecoration(
              color: isDark
                  ? ColorConstant.darkTextField
                  : ColorConstant.whiteA700,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  20.00,
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
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
                      26.00,
                    ),
                    bottom: getVerticalSize(
                      26.00,
                    ),
                  ),
                  child: SizedBox(
                    height: getSize(
                      20.00,
                    ),
                    width: getSize(
                      20.00,
                    ),
                    child: SvgPicture.asset(
                      ImageConstant.help3,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
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
                      25.21,
                    ),
                    bottom: getVerticalSize(
                      25.20,
                    ),
                  ),
                  child: Text(
                    "Website",
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
          InkWell(
            onTap: () {
              _launchUrl(_url2);
            },
            child: Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              decoration: BoxDecoration(
                color: isDark
                    ? ColorConstant.darkTextField
                    : ColorConstant.whiteA700,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        isDark ? Colors.transparent : ColorConstant.black9000c,
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
                        26.00,
                      ),
                      bottom: getVerticalSize(
                        26.12,
                      ),
                    ),
                    child: SizedBox(
                      height: getVerticalSize(
                        19.88,
                      ),
                      width: getHorizontalSize(
                        20.00,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.help4,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
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
                        25.21,
                      ),
                      bottom: getVerticalSize(
                        25.20,
                      ),
                    ),
                    child: Text(
                      "Facebook",
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
          ),
          InkWell(
            onTap: () {
              _launchUrl(_url3);
            },
            child: Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              decoration: BoxDecoration(
                color: isDark
                    ? ColorConstant.darkTextField
                    : ColorConstant.whiteA700,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        isDark ? Colors.transparent : ColorConstant.black9000c,
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
                        28.02,
                      ),
                      bottom: getVerticalSize(
                        28.02,
                      ),
                    ),
                    child: SizedBox(
                      height: getVerticalSize(
                        15.96,
                      ),
                      width: getHorizontalSize(
                        19.65,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.help5,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
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
                        25.21,
                      ),
                      bottom: getVerticalSize(
                        25.20,
                      ),
                    ),
                    child: Text(
                      "Twitter",
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
          ),
          InkWell(
            onTap: () {
              _launchUrl(_url4);
            },
            child: Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  24.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              decoration: BoxDecoration(
                color: isDark
                    ? ColorConstant.darkTextField
                    : ColorConstant.whiteA700,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        isDark ? Colors.transparent : ColorConstant.black9000c,
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
                        24.00,
                      ),
                      bottom: getVerticalSize(
                        24.00,
                      ),
                    ),
                    child: SizedBox(
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.help6,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: context.locale == Constants.engLocal
                          ? getHorizontalSize(
                              16.00,
                            )
                          : getHorizontalSize(0),
                      right: context.locale == Constants.arLocal
                          ? getHorizontalSize(
                              16.00,
                            )
                          : getHorizontalSize(0),
                      top: getVerticalSize(
                        25.21,
                      ),
                      bottom: getVerticalSize(
                        25.20,
                      ),
                    ),
                    child: Text(
                      "Instagram",
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
          ),
        ],
      ),
    );
  }
}
