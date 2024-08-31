import 'package:animate_do/animate_do.dart';
import 'package:mawater_qatar/presentation/light_make_an_offer_accepted_screen/light_make_an_offer_accepted_screen.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import '../../core/app_export.dart';
import '../light_home_notification_screen/widgets/listview27_item_widget.dart';
import '../light_home_notification_screen/widgets/listview9_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LightHomeNotificationScreen extends StatelessWidget {
  const LightHomeNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Notification",
          style: TextStyle(
            fontSize: getFontSize(
              24,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: getVerticalSize(
                  21.71,
                ),
                right: getHorizontalSize(
                  20.00,
                ),
                bottom: getVerticalSize(
                  21.71,
                ),
                left: getHorizontalSize(20)),
            child: SizedBox(
              height: getSize(
                21.58,
              ),
              width: getSize(
                21.58,
              ),
              child: SvgPicture.asset(ImageConstant.icon,
                  fit: BoxFit.fill,
                  color: isDark ? Colors.white : Colors.black),
            ),
          ),
        ],
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
                    24.00,
                  ),
                  top: getVerticalSize(
                    33.50,
                  ),
                  right: getHorizontalSize(
                    24.00,
                  ),
                ),
                child: FadeInUp(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: getHorizontalSize(
                            10.00,
                          ),
                          left: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Text(
                          "Today",
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
                      Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            24.41,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: isDark
                              ? ColorConstant.darkTextField
                              : ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16.00,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: isDark
                                  ? Colors.transparent
                                  : ColorConstant.black9000c,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    1.00,
                                  ),
                                  top: getVerticalSize(
                                    16.00,
                                  ),
                                  bottom: getVerticalSize(
                                    16.00,
                                  ),
                                ),
                                child: Image.asset(
                                  ImageConstant.noti1,
                                  height: getVerticalSize(80),
                                  width: getHorizontalSize(83),
                                )),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  31.21,
                                ),
                                right: getHorizontalSize(
                                  20.59,
                                ),
                                bottom: getVerticalSize(
                                  31.20,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      "Your offer has been accepted!",
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
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        8.41,
                                      ),
                                    ),
                                    child: Text(
                                      "Congrats! your offer has been accepted \n by the seller for ${Constants.currency}170,000",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: isDark
                                            ? Colors.white
                                            : ColorConstant.gray700,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                  VerticalSpace(height: 12),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LightMakeAnOfferAcceptedScreen()),
                                      );
                                    },
                                    child: Container(
                                      padding: getPadding(
                                          left: 16,
                                          right: 16,
                                          top: 8,
                                          bottom: 8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: ColorConstant.gray500,
                                        ),
                                      ),
                                      child: Text(
                                        "View Details",
                                        style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontFamily: 'Urbanist',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            24.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Text(
                          "Yesterday",
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
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            24.41,
                          ),
                        ),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const Listview9ItemWidget();
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            24.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Text(
                          "December 20, 2024",
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
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            24.41,
                          ),
                        ),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const Listview27ItemWidget();
                          },
                        ),
                      ),
                    ],
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
