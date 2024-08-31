import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/data/chats_list.dart';
import 'package:mawater_qatar/presentation/light_inbox_call_screen/light_inbox_call_screen.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListellipseItemWidget extends StatelessWidget {
  int index;

  ListellipseItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LightInboxCallScreen(
                      callinfo: chatList[index],
                    )),
          );
        },
        child: Padding(
          padding: getPadding(
            right: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.gray100,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          30.00,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                30.00,
                              ),
                            ),
                            child: CommonImageView(
                              imagePath: chatList[index].img,
                              height: getSize(
                                60.00,
                              ),
                              width: getSize(
                                60.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  HorizontalSpace(width: 20),
                  Container(
                    margin: getMargin(
                      left: 0,
                      top: 8,
                      bottom: 7,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 0,
                          ),
                          child: Text(
                            chatList[index].title,
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
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 10,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 3,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.incomming,
                                  height: getSize(
                                    13.00,
                                  ),
                                  width: getSize(
                                    13.00,
                                  ),
                                ),
                              ),
                              HorizontalSpace(width: 5),
                              Padding(
                                padding: getPadding(
                                  left: 0,
                                  top: 1,
                                ),
                                child: Text(
                                  "Incoming",
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
                                  left: 4,
                                  top: 1,
                                  bottom: 2,
                                ),
                                child: Text(
                                  " | Dec 19, 2024",
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  left: 14,
                  right: 14,
                  top: 18,
                  bottom: 18,
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.call,
                  height: getSize(
                    22.00,
                  ),
                  width: getSize(
                    22.00,
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
