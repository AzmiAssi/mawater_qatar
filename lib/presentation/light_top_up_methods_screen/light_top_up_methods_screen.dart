import 'package:mawater_qatar/data/payment_method_list.dart';
import 'package:mawater_qatar/presentation/light_top_up_methods_screen/add_new_card.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../core/app_export.dart';
import '../light_top_up_confirm_pin_screen/light_top_up_confirm_pin_screen.dart';
import 'package:flutter/material.dart';

class LightTopUpMethodsScreen extends StatefulWidget {
  const LightTopUpMethodsScreen({super.key});

  @override
  State<LightTopUpMethodsScreen> createState() =>
      _LightTopUpMethodsScreenState();
}

class _LightTopUpMethodsScreenState extends State<LightTopUpMethodsScreen> {
  int radioGroup = 0;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Top Up Wallet",
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LightTopUpConfirmPinScreen()),
                );
              },
              label: const Text('Confirm')),
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
                  "Select the top up method you want to use",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
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
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    24.00,
                  ),
                  top: getVerticalSize(
                    24.00,
                  ),
                  right: getHorizontalSize(
                    24.00,
                  ),
                ),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        top: getVerticalSize(
                          12.00,
                        ),
                        bottom: getVerticalSize(
                          12.00,
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
                              0.00,
                            ),
                            blurRadius: getHorizontalSize(
                              10.00,
                            ),
                            offset: const Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                      child: InkWell(
                        radius: getHorizontalSize(16),
                        onTap: () {
                          setState(() {
                            radioGroup = index;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: context.locale == Constants.engLocal
                                        ? getHorizontalSize(
                                            20.00,
                                          )
                                        : getHorizontalSize(0),
                                    right: context.locale == Constants.arLocal
                                        ? getHorizontalSize(
                                            20.00,
                                          )
                                        : getHorizontalSize(0),
                                    top: getVerticalSize(
                                      27.00,
                                    ),
                                    bottom: getVerticalSize(
                                      27.00,
                                    ),
                                  ),
                                  child: SizedBox(
                                    height: getVerticalSize(
                                      26.00,
                                    ),
                                    width: getHorizontalSize(
                                      22.00,
                                    ),
                                    child: Image.asset(
                                      paymentMethidsList[index].img,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      17.00,
                                    ),
                                    right: getHorizontalSize(
                                      17.00,
                                    ),
                                    top: getVerticalSize(
                                      29.00,
                                    ),
                                    bottom: getVerticalSize(
                                      29.41,
                                    ),
                                  ),
                                  child: Text(
                                    paymentMethidsList[index].title,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                                right: getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: Theme(
                                data: Theme.of(context).copyWith(
                                  unselectedWidgetColor: ColorConstant.gray500,
                                  // disabledColor: Colors.blue
                                ),
                                child: Radio(
                                  value: index,
                                  activeColor: ColorConstant.gray500,
                                  groupValue: radioGroup,
                                  onChanged: (value) {
                                    setState(() {
                                      radioGroup = value as int;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    24.00,
                  ),
                  top: getVerticalSize(
                    24.00,
                  ),
                  right: getHorizontalSize(
                    24.00,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddNewCardScreen()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: getVerticalSize(
                      58.00,
                    ),
                    width: size.width,
                    decoration: BoxDecoration(
                      color: isDark
                          ? ColorConstant.darkLine
                          : ColorConstant.gray100,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          29.00,
                        ),
                      ),
                    ),
                    child: Text(
                      "Add New Card",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isDark ? Colors.white : ColorConstant.gray500,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.20,
                      ),
                    ),
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
