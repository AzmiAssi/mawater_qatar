import '../light_settings_invited_friends_screen/widgets/listellipse3_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightSettingsInvitedFriendsScreen extends StatelessWidget {
  const LightSettingsInvitedFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                left: 24,
                top: 35,
                right: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: size.width,
                    margin: getMargin(
                      left: 4,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 4,
                            bottom: 3,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: getVerticalSize(
                              15.00,
                            ),
                            width: getHorizontalSize(
                              19.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 20,
                          ),
                          child: Text(
                            "lbl_invite_friends",
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
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 36,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return const Listellipse3ItemWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
