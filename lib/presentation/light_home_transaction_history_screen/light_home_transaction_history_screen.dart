import 'package:animate_do/animate_do.dart';

import '../../core/app_export.dart';
import '../light_home_transaction_history_screen/widgets/listautolayouthor3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LightHomeTransactionHistoryScreen extends StatelessWidget {
  const LightHomeTransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Transaction History",
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
              child: SvgPicture.asset(
                ImageConstant.icon,
                fit: BoxFit.fill,
                color: isDark ? Colors.white : Colors.black,
              ),
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInUp(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return Container(
                              height: getVerticalSize(
                                1.00,
                              ),
                              width: getHorizontalSize(
                                380.00,
                              ),
                              decoration: BoxDecoration(
                                color: isDark
                                    ? Colors.white
                                    : ColorConstant.gray200,
                              ),
                            );
                          },
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return const Listautolayouthor3ItemWidget();
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
