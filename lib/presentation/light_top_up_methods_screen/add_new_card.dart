import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/math_utils.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "New Card",
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
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                33.50,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      28.00,
                                    ),
                                  ),
                                  child: SizedBox(
                                    height: getVerticalSize(
                                      56.00,
                                    ),
                                    width: getHorizontalSize(
                                      380.00,
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Daniel Austin',
                                        hintStyle: TextStyle(
                                          fontSize: getFontSize(
                                            14.0,
                                          ),
                                          color: ColorConstant.gray400,
                                        ),
                                        isDense: true,
                                        contentPadding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20.00,
                                          ),
                                          top: getVerticalSize(
                                            20.80,
                                          ),
                                          bottom: getVerticalSize(
                                            20.80,
                                          ),
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: isDark
                                            ? Colors.white
                                            : ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          14.0,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      28.00,
                                    ),
                                  ),
                                  child: SizedBox(
                                    height: getVerticalSize(
                                      56.00,
                                    ),
                                    width: getHorizontalSize(
                                      380.00,
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: '6373 2728 4797 4679',
                                        hintStyle: TextStyle(
                                          fontSize: getFontSize(
                                            14.0,
                                          ),
                                          color: ColorConstant.gray400,
                                        ),
                                        isDense: true,
                                        contentPadding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20.00,
                                          ),
                                          top: getVerticalSize(
                                            20.80,
                                          ),
                                          bottom: getVerticalSize(
                                            20.80,
                                          ),
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: isDark
                                            ? Colors.white
                                            : ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          14.0,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      28.00,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(
                                          182.00,
                                        ),
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: isDark
                                              ? ColorConstant.darkTextField
                                              : ColorConstant.gray50,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                        ),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: '02/03',
                                            hintStyle: TextStyle(
                                              fontSize: getFontSize(
                                                14.0,
                                              ),
                                              color: ColorConstant.gray400,
                                            ),
                                            isDense: true,
                                            contentPadding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                20.00,
                                              ),
                                              top: getVerticalSize(
                                                20.80,
                                              ),
                                              bottom: getVerticalSize(
                                                20.80,
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: isDark
                                                ? Colors.white
                                                : ColorConstant.gray900,
                                            fontSize: getFontSize(
                                              14.0,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          182.00,
                                        ),
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: isDark
                                              ? ColorConstant.darkTextField
                                              : ColorConstant.gray50,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                        ),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: '190',
                                            hintStyle: TextStyle(
                                              fontSize: getFontSize(
                                                14.0,
                                              ),
                                              color: ColorConstant.gray400,
                                            ),
                                            isDense: true,
                                            contentPadding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                20.00,
                                              ),
                                              top: getVerticalSize(
                                                20.80,
                                              ),
                                              bottom: getVerticalSize(
                                                20.80,
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: isDark
                                                ? Colors.white
                                                : ColorConstant.gray900,
                                            fontSize: getFontSize(
                                              14.0,
                                            ),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          24.00,
                        ),
                        top: getVerticalSize(
                          130.00,
                        ),
                        right: getHorizontalSize(
                          24.00,
                        ),
                        bottom: getVerticalSize(
                          20.00,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            55.00,
                          ),
                          width: getHorizontalSize(
                            380.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                100.00,
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: ColorConstant.gray500.withOpacity(0.2),
                                spreadRadius: getHorizontalSize(
                                  5.00,
                                ),
                                blurRadius: getHorizontalSize(
                                  7.00,
                                ),
                                offset: const Offset(
                                  0,
                                  4,
                                ),
                              ),
                            ],
                          ),
                          child: Text(
                            "Add New Card",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
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
            ],
          ),
        ),
      ),
    );
  }
}
