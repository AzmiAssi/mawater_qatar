import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mawater_qatar/core/utils/color_constant.dart';
import 'package:mawater_qatar/data/chats_list.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/models/entity/chat_room_entity.dart';
import 'package:mawater_qatar/models/entity/user_entity.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import '../light_inbox_calls_screen/widgets/listellipse_item_widget.dart';
import '../light_inbox_chats_screen/widgets/listellipse2_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightInboxChatsScreen extends StatefulWidget {
  const LightInboxChatsScreen({super.key});

  @override
  State<LightInboxChatsScreen> createState() => _LightInboxChatsScreenState();
}

class _LightInboxChatsScreenState extends State<LightInboxChatsScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                margin: getMargin(left: 24, right: 24, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 5,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 3,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.appLogo,
                              height: getVerticalSize(
                                30.00,
                              ),
                              width: getHorizontalSize(
                                30.00,
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 16),
                          Padding(
                            padding: getPadding(
                              left: 0,
                            ),
                            child: Text(
                              "Inbox",
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                        right: 3,
                        bottom: 2,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.imgSearch,
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 26),
                          Padding(
                            padding: getPadding(
                              left: 0,
                              bottom: 1,
                            ),
                            child: CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.icon,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: double.infinity,
                margin: getMargin(
                  left: 0,
                  top: 0,
                  right: 0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Padding(
                    //     padding: EdgeInsets.only(
                    //       top: getVerticalSize(
                    //         24.00,
                    //       ),
                    //       right: getHorizontalSize(
                    //         0.00,
                    //       ),
                    //     ),
                    //     child: SizedBox(
                    //       height: getVerticalSize(50),
                    //       child: TabBar(
                    //           controller: tabController,
                    //           indicatorWeight: 6,
                    //           indicator: UnderlineTabIndicator(
                    //               insets: EdgeInsets.symmetric(
                    //                   horizontal: getHorizontalSize(16)),
                    //               borderSide:
                    //                   BorderSide(color: ColorConstant.gray500)),
                    //           labelColor: ColorConstant.gray500,
                    //           unselectedLabelColor:
                    //               isDark ? Colors.white : ColorConstant.gray400,
                    //           labelStyle: TextStyle(
                    //             fontSize: getFontSize(
                    //               18,
                    //             ),
                    //             fontFamily: 'Urbanist',
                    //             fontWeight: FontWeight.w600,
                    //           ),
                    //           unselectedLabelStyle: TextStyle(
                    //             fontSize: getFontSize(
                    //               18,
                    //             ),
                    //             fontFamily: 'Urbanist',
                    //             fontWeight: FontWeight.w600,
                    //           ),
                    //           tabs: const [
                    //             Tab(
                    //               text: "Chats",
                    //             ),
                    //             Tab(
                    //               text: "Calls",
                    //             )
                    //           ]),
                    //     )),

                    Padding(
                      padding: getPadding(left: 20, right: 20),
                      child: SizedBox(
                        height: getVerticalSize(700),
                        child: FadeInUp(
                          child: Padding(
                              padding: getPadding(
                                top: 24,
                              ),
                              child: StreamBuilder<QuerySnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('chatRoom')
                                      .where("users",
                                          arrayContains: userController
                                              .myUser.value.userId)
                                      .snapshots(),
                                  builder: (context, snapshot) {
                                    List<ChatRoomEntity> allChats = [];
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          backgroundColor:
                                              ColorConstant.gray500,
                                          color: Colors.white,
                                        ),
                                      );
                                    }
                                    final chats = snapshot.data!.docs;
                                    for (var chat in chats) {
                                      Timestamp roomTime = chat.get('roomTime');
                                      final roomId = chat.get('roomId');
                                      final lastMessage =
                                          chat.get('lastMessage');
                                      UserEntity chatUser = UserEntity();

                                      if (chat["user1"]["userId"] !=
                                          userController.myUser.value.userId) {
                                        chatUser = UserEntity(
                                          userId: chat["user1"]["userId"],
                                          userFName: chat["user1"]["userName"],
                                        );
                                      } else {
                                        chatUser = UserEntity(
                                            userId: chat["user2"]["userId"],
                                            userFName: chat["user2"]
                                                ["userName"]);
                                      }
                                      allChats.add(ChatRoomEntity(
                                          roomTime: roomTime,
                                          user: chatUser,
                                          lastMessage: lastMessage,
                                          roomId: roomId));
                                    }
                                    if (allChats.isNotEmpty) {
                                      return ListView.separated(
                                        separatorBuilder: (context, index) {
                                          return VerticalSpace(height: 24);
                                        },
                                        physics: const BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: allChats.length,
                                        itemBuilder: (context, index) {
                                          return Listellipse2ItemWidget(
                                            chat: allChats[index],
                                          );
                                        },
                                      );
                                    }
                                    return Center(
                                      child: Column(
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  ImageConstant.noChat)),
                                          const Text(
                                            "You Dont Have Chats",
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    );
                                  })),
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
}
