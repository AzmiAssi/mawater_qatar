import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/data/chats_list.dart';
import 'package:mawater_qatar/models/entity/chat_room_entity.dart';
import 'package:mawater_qatar/presentation/light_inbox_chat_details_screen/light_inbox_chat_details_screen.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listellipse2ItemWidget extends StatelessWidget {
  ChatRoomEntity chat;
  Listellipse2ItemWidget({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        right: 24,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LightInboxChatDetailsScreen(
                      chat: chat,
                    )),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                top: 1,
                bottom: 1,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
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
                            child: Image.asset(
                              ImageConstant.fillProfile,
                              height: getSize(
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
                      bottom: 9,
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
                            chat.user!.userFName.toString(),
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
                            top: 9,
                          ),
                          child: Text(
                            chat.lastMessage!,
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
            Container(
              margin: getMargin(
                left: 0,
                bottom: 8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: getMargin(
                      left: 5,
                    ),
                    padding: getPadding(
                      left: 9,
                      top: 6,
                      right: 9,
                      bottom: 6,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 13,
                      ),
                      child: Text(
                        "${chat.roomTime!.toDate().hour}:${chat.roomTime!.toDate().minute}",
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
      ),
    );
  }
}
