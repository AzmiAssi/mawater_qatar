// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/data/firebase_data/chat_data.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/models/entity/chat_message.dart';
import 'package:mawater_qatar/models/entity/chat_room_entity.dart';
import 'package:mawater_qatar/widgets/custom_text_form_field.dart';
import 'package:mawater_qatar/widgets/spacing.dart';

import '../../widgets/back_btn.dart';

class LightInboxChatDetailsScreen extends StatelessWidget {
  ChatRoomEntity chat;
  LightInboxChatDetailsScreen({
    super.key,
    required this.chat,
  });
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                margin: getMargin(left: 17, top: 17, right: 17, bottom: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 2,
                        bottom: 2,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 3,
                            ),
                            child: const BackBtn(),
                          ),
                          HorizontalSpace(width: 20),
                          Padding(
                            padding: getPadding(
                              left: 0,
                            ),
                            child: Text(
                              chat.user!.userFName!,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  24,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 9,
                              top: 3,
                              bottom: 3,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgVector17X17,
                              height: getSize(
                                17.00,
                              ),
                              width: getSize(
                                17.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: getPadding(
                    //     top: 3,
                    //     right: 3,
                    //     bottom: 3,
                    //   ),
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    //       InkWell(
                    //         onTap: () {
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => LightInboxCallScreen(
                    //                       callinfo: ChatModel(
                    //                           icon: const SizedBox(),
                    //                           msgNumber: 1,
                    //                           title: 'BMW Store',
                    //                           img: ImageConstant.chat1),
                    //                     )),
                    //           );
                    //         },
                    //         child: CommonImageViewWithDarkOption(
                    //           isDark: isDark,
                    //           svgPath: ImageConstant.blackCall,
                    //           height: getSize(
                    //             24.00,
                    //           ),
                    //           width: getSize(
                    //             24.00,
                    //           ),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: getPadding(
                    //           left: 26,
                    //           top: 1,
                    //           bottom: 1,
                    //         ),
                    //         child: CommonImageViewWithDarkOption(
                    //           isDark: isDark,
                    //           svgPath: ImageConstant.icon,
                    //           height: getSize(
                    //             24.00,
                    //           ),
                    //           width: getSize(
                    //             24.00,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // CustomButton(
                    //   isDark: isDark,
                    //   width: 50,
                    //   text: "today",
                    //   margin: getMargin(
                    //     left: 17,
                    //     top: 33,
                    //     right: 17,
                    //   ),
                    //   variant: ButtonVariant.FillGray6001e,
                    //   fontStyle: ButtonFontStyle.UrbanistSemiBold10,
                    //   alignment: Alignment.center,
                    // ),
                    StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection('chats')
                            .where("chatRoomId", isEqualTo: chat.roomId)
                            .snapshots(includeMetadataChanges: true),
                        builder: (context, snapshot) {
                          List<ChatMessage> messagesList = [];

                          if (!snapshot.hasData) {
                            return Center(
                              child: CircularProgressIndicator(
                                backgroundColor: ColorConstant.gray500,
                                color: Colors.white,
                              ),
                            );
                          }
                          final messages = snapshot.data!.docs;
                          for (var message in messages) {
                            Timestamp messageTime = message.get('messageTime');
                            final messageText = message.get('messageText');
                            final receiverId = message.get('receiverId');
                            final senderId = message.get('senderId');

                            messagesList.add(ChatMessage(
                              messageText: messageText,
                              messageTime: messageTime,
                              receiverId: receiverId,
                              senderId: senderId,
                            ));
                          }

                          if (messagesList.isNotEmpty) {
                            messagesList.sort(
                              (a, b) =>
                                  a.messageTime!.compareTo(b.messageTime!),
                            );
                            return ListView.separated(
                              separatorBuilder: (context, index) {
                                return VerticalSpace(height: 10);
                              },
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: messagesList.length,
                              itemBuilder: (context, index) {
                                if (messagesList[index].senderId !=
                                    userController.myUser.value.userId) {
                                  return Row(
                                    children: [
                                      Container(
                                        width: getHorizontalSize(280),
                                        margin: getMargin(
                                          left: 17,
                                          top: 0,
                                          right: 17,
                                        ),
                                        padding:
                                            getPadding(left: 20, right: 20),
                                        decoration: BoxDecoration(
                                          color: isDark
                                              ? ColorConstant.darkTextField
                                              : ColorConstant.gray101,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(
                                              getHorizontalSize(
                                                16.00,
                                              ),
                                            ),
                                            bottomLeft: Radius.circular(
                                              getHorizontalSize(
                                                16.00,
                                              ),
                                            ),
                                            bottomRight: Radius.circular(
                                              getHorizontalSize(
                                                16.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: getHorizontalSize(
                                                166.00,
                                              ),
                                              margin: getMargin(
                                                left: 0,
                                                top: 17,
                                                bottom: 15,
                                              ),
                                              child: Text(
                                                messagesList[index]
                                                    .messageText!,
                                                maxLines: null,
                                                textAlign: TextAlign.start,
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
                                            Padding(
                                              padding: getPadding(
                                                left: 0,
                                                top: 5,
                                                bottom: 14,
                                              ),
                                              child: Text(
                                                "${messagesList[index].messageTime!.toDate().hour}:${messagesList[index].messageTime!.toDate().minute}",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                } else {
                                  return Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: getHorizontalSize(
                                        283.00,
                                      ),
                                      margin: getMargin(
                                        left: 17,
                                        top: 5,
                                        right: 17,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                    getHorizontalSize(
                                                      16.00,
                                                    ),
                                                  ),
                                                  bottomLeft: Radius.circular(
                                                    getHorizontalSize(
                                                      16.00,
                                                    ),
                                                  ),
                                                  bottomRight: Radius.circular(
                                                    getHorizontalSize(
                                                      16.00,
                                                    ),
                                                  ),
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
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: getHorizontalSize(
                                                      190.00,
                                                    ),
                                                    margin: getMargin(
                                                      top: 17,
                                                      bottom: 12,
                                                    ),
                                                    child: Text(
                                                      messagesList[index]
                                                          .messageText!,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        fontSize: getFontSize(
                                                          16,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 5,
                                                      bottom: 14,
                                                    ),
                                                    child: Text(
                                                      "${messagesList[index].messageTime!.toDate().hour}:${messagesList[index].messageTime!.toDate().minute}",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray300,
                                                        fontSize: getFontSize(
                                                          14,
                                                        ),
                                                        fontFamily: 'Urbanist',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                            );
                          }
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage(ImageConstant.noChat),
                                  height: getSize(150),
                                ),
                                const Text(
                                  "No Messages In Chat",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),

            //send aria
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 10,
                  top: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        isDark: isDark,
                        width: 312,
                        focusNode: FocusNode(),
                        controller: messageController,
                        hintText: "Message...",
                        padding: TextFormFieldPadding.PaddingT22,
                        fontStyle: TextFormFieldFontStyle.UrbanistRegular14,
                        textInputAction: TextInputAction.done,
                        suffix: InkWell(
                          onTap: () {
                            sendChatMessages(
                                message: ChatMessage(
                                    chatRoomId: chat.roomId,
                                    messageText: messageController.text,
                                    messageTime:
                                        Timestamp.fromDate(DateTime.now()),
                                    receiverId: chat.user!.userId,
                                    senderId:
                                        userController.myUser.value.userId));

                            messageController.clear();
                          },
                          child: Container(
                            margin: getMargin(
                              left: 30,
                              top: 20,
                              right: 22,
                              bottom: 20,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.sendMessage,
                              height: getSize(
                                20.00,
                              ),
                              width: getSize(
                                20.00,
                              ),
                            ),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          minWidth: getHorizontalSize(
                            15.00,
                          ),
                          minHeight: getVerticalSize(
                            15.00,
                          ),
                        ),
                      ),
                    ),
                    // HorizontalSpace(width: 12),
                    // CustomIconButton(
                    //   height: 56,
                    //   width: 56,
                    //   margin: getMargin(
                    //     left: 0,
                    //   ),
                    //   variant: IconButtonVariant.GradientGray500Gray500,
                    //   child: CommonImageView(
                    //     imagePath: ImageConstant.sendMessage,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
