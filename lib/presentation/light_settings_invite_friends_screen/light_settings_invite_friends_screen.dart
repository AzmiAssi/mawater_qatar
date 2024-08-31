import 'package:animate_do/animate_do.dart';

import '../../core/app_export.dart';
import '../light_settings_invite_friends_screen/widgets/listname_item_widget.dart';
import 'package:flutter/material.dart';

class LightSettingsInviteFriendsScreen extends StatelessWidget {
  const LightSettingsInviteFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Invite Friends",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getFontSize(
              24,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    0.00,
                  ),
                  top: getVerticalSize(
                    33.70,
                  ),
                  right: getHorizontalSize(
                    0.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInUp(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(
                            horizontal: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return const ListnameItemWidget();
                          },
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
    );
  }
}
