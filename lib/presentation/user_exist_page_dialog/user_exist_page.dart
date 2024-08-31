// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AlerDialogMessages extends StatefulWidget {
  String title;
  String description;
  AlerDialogMessages(
      {super.key, required this.title, required this.description});

  @override
  State<AlerDialogMessages> createState() => _AlerDialogMessagesState();
}

class _AlerDialogMessagesState extends State<AlerDialogMessages> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                40.00,
              ),
              right: getHorizontalSize(
                10.00,
              ),
            ),
            child: Image.asset(
              ImageConstant.alert,
              width: getHorizontalSize(100),
              height: getVerticalSize(100),
              color: ColorConstant.gray500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                32.00,
              ),
              right: getHorizontalSize(
                10.00,
              ),
            ),
            child: Text(
              widget.title,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.gray500,
                fontSize: getFontSize(
                  24,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              276.00,
            ),
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                16.20,
              ),
              right: getHorizontalSize(
                10.00,
              ),
            ),
            child: Text(
              widget.description,
              maxLines: null,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.20,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  24.00,
                ),
                top: getVerticalSize(
                  60.00,
                ),
                right: getHorizontalSize(
                  24.00,
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: getVerticalSize(
                    58.00,
                  ),
                  width: size.width,
                  decoration: BoxDecoration(
                    color: ColorConstant.gray500,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        29.00,
                      ),
                    ),
                  ),
                  child: Text(
                    "Ok",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        16,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: getVerticalSize(30),
          )
        ],
      ),
    );
  }
}
