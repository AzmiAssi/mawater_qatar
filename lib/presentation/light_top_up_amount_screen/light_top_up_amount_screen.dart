import 'package:mawater_qatar/presentation/light_make_an_offer_processed_screen/light_make_an_offer_processed_screen.dart';
import 'package:mawater_qatar/presentation/light_top_up_methods_screen/light_top_up_methods_screen.dart';
import '../../core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class LightTopUpAmountScreen extends StatefulWidget {
  bool isMakingOffer;
  LightTopUpAmountScreen({super.key, this.isMakingOffer = false});
  @override
  State<LightTopUpAmountScreen> createState() => _LightTopUpAmountScreenState();
}

class _LightTopUpAmountScreenState extends State<LightTopUpAmountScreen> {
  TextEditingController textEditingController = TextEditingController();

  int amount = 10;

  int selectedAmountIndex = 0;
  List<int> amountsList = [
    10000,
    20000,
    50000,
    100000,
    200000,
    250000,
    500000,
    750000,
    1000000
  ];
  @override
  void initState() {
    super.initState();
    textEditingController.text =
        "${amountsList[0].toString()} ${Constants.currency}";
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            isDark ? ColorConstant.darkBg : ColorConstant.whiteA700,

        // leading:   Padding(
        //                             padding: EdgeInsets.only(
        //                               top: getVerticalSize(
        //                                 21.92,
        //                               ),
        //                               bottom: getVerticalSize(
        //                                 21.07,
        //                               ),

        //                         right: getHorizontalSize(
        //                           20.00,
        //                         ),

        //                         left: getHorizontalSize(20)

        //                             ),
        //                             child: Container(
        //                               height: getVerticalSize(
        //                                 15.81,
        //                               ),
        //                               width: getHorizontalSize(
        //                                 19.25,
        //                               ),
        //                               child: SvgPicture.asset(
        //                                 ImageConstant.imgGroup79,
        //                                 fit: BoxFit.fill,
        //                               ),
        //                             ),
        //                           ),

        title: Text(
          widget.isMakingOffer ? "Make An Offer" : "Top Up Wallet",
          style: TextStyle(
            fontSize: getFontSize(
              24,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
        child: SizedBox(
          width: getHorizontalSize(380),
          height: getVerticalSize(60),
          child: FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getHorizontalSize(30))),
              backgroundColor: ColorConstant.gray500,
              foregroundColor: ColorConstant.whiteA700,
              extendedTextStyle: TextStyle(
                color: ColorConstant.whiteA700,
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.20,
              ),
              onPressed: widget.isMakingOffer
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LightMakeAnOfferProcessedScreen()),
                      );
                    }
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LightTopUpMethodsScreen()),
                      );
                    },
              label: const Text('Continue')),
        ),
      ),
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    33.70,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Text(
                  widget.isMakingOffer
                      ? "Enter your offer amount"
                      : "Enter the amount of top up",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: isDark ? Colors.white : ColorConstant.gray800,
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.20,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    24.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      24.00,
                    ),
                  ),
                ),
                child: OutlineGradientButton(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      2.00,
                    ),
                    top: getVerticalSize(
                      2.00,
                    ),
                    right: getHorizontalSize(
                      2.00,
                    ),
                    bottom: getVerticalSize(
                      2.00,
                    ),
                  ),
                  strokeWidth: getHorizontalSize(
                    2.00,
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
                  corners: const Corners(
                    topLeft: Radius.circular(
                      24,
                    ),
                    topRight: Radius.circular(
                      24,
                    ),
                    bottomLeft: Radius.circular(
                      24,
                    ),
                    bottomRight: Radius.circular(
                      24,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(bottom: getVerticalSize(35)),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        cursorColor: ColorConstant.gray500,
                        controller: textEditingController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          filled: false,
                          //   prefix:Row(
                          //     mainAxisSize: MainAxisSize.min,
                          //     mainAxisAlignment: MainAxisAlignment.start,
                          //     children: [
                          //       SizedBox(width: getHorizontalSize(24),),
                          //       Text("${Constants.currency}",
                          //       style: TextStyle(
                          //       color: ColorConstant.gray500,
                          //       fontSize: getFontSize(
                          //         48,
                          //       ),
                          //       fontFamily: 'Urbanist',
                          //       fontWeight: FontWeight.w700,
                          // ),

                          //       ),
                          //     ],
                          //   ),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.gray500,
                          fontSize: getFontSize(
                            48,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    24.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(
                      45.5,
                    ),
                    crossAxisCount: 3,
                    mainAxisSpacing: getHorizontalSize(
                      16.00,
                    ),
                    crossAxisSpacing: getHorizontalSize(
                      16.00,
                    ),
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedAmountIndex = index;
                          // amount=amountsList[index];
                          textEditingController.text =
                              "${amountsList[index].toString()} ${Constants.currency}";
                        });
                      },
                      child: Container(
                        width: getHorizontalSize(120),
                        height: getVerticalSize(45),
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            0.00,
                          ),
                          top: getVerticalSize(
                            10.00,
                          ),
                          right: getHorizontalSize(
                            0.00,
                          ),
                          bottom: getVerticalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: selectedAmountIndex == index
                              ? ColorConstant.gray500
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              22.50,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.gray500,
                            width: getHorizontalSize(
                              2.00,
                            ),
                          ),
                        ),
                        child: Text(
                          "${amountsList[index].toString()} ${Constants.currency}",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: selectedAmountIndex == index
                                ? Colors.white
                                : ColorConstant.gray500,
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
