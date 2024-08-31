import 'package:mawater_qatar/data/cars_list.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import '../../widgets/back_btn.dart';
import '../light_transaction_history_screen/widgets/listname1_item_widget.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightTransactionHistoryScreen extends StatelessWidget {
  const LightTransactionHistoryScreen({super.key});

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
                top: 20,
                right: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      margin: getMargin(
                        right: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const BackBtn(),
                                HorizontalSpace(width: 20),
                                Padding(
                                  padding: getPadding(left: 0, top: 0),
                                  child: Text(
                                    "Transaction History",
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
                              bottom: 2,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgSearch,
                              height: getVerticalSize(
                                22.00,
                              ),
                              width: getHorizontalSize(
                                21.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 33,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return VerticalSpace(height: 16);
                            },
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: carsList.length,
                            itemBuilder: (context, index) {
                              return Listname1ItemWidget(index: index);
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
