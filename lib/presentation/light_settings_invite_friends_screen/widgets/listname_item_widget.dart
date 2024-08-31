import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

// ignore: must_be_immutable
class ListnameItemWidget extends StatefulWidget {
  const ListnameItemWidget({super.key});

  @override
  State<ListnameItemWidget> createState() => _ListnameItemWidgetState();
}

class _ListnameItemWidgetState extends State<ListnameItemWidget> {
  bool isInvited = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          top: getVerticalSize(
            12.00,
          ),
          bottom: getVerticalSize(
            12.00,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      30.00,
                    ),
                  ),
                  child: Image.asset(
                    ImageConstant.person1,
                    height: getSize(
                      60.00,
                    ),
                    width: getSize(
                      60.00,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: getHorizontalSize(
                    20.00,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      7.21,
                    ),
                    bottom: getVerticalSize(
                      7.20,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Tynisha Obey",
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
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              4.41,
                            ),
                            right: getHorizontalSize(
                              3.00,
                            ),
                          ),
                          child: Text(
                            "+1-300-555-0135",
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
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  0.00,
                ),
                top: getVerticalSize(
                  14.00,
                ),
                bottom: getVerticalSize(
                  14.00,
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isInvited = true;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: getVerticalSize(
                    32.00,
                  ),
                  width: getHorizontalSize(
                    69.00,
                  ),
                  decoration: BoxDecoration(
                      color: isInvited
                          ? Colors.transparent
                          : ColorConstant.gray500,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      border: Border.all(color: ColorConstant.gray500)),
                  child: Text(
                    isInvited ? "Invited" : "Invite",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isInvited
                          ? ColorConstant.gray500
                          : ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
