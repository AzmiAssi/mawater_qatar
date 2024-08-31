import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class SelectLanguage extends StatefulWidget {
  static String id = "SelectLanguage";
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    int radioGroup = context.locale == Constants.engLocal ? 0 : 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            isDark ? ColorConstant.darkBg : ColorConstant.whiteA700,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
            )),
        title: Text(
          "Language",
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
          child: Container(
            decoration: const BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      20.00,
                    ),
                    top: getVerticalSize(
                      16.00,
                    ),
                    right: getHorizontalSize(
                      20.00,
                    ),
                    bottom: getVerticalSize(
                      48.00,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            24.00,
                          ),
                          bottom: getVerticalSize(
                            24.00,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      0.00,
                                    ),
                                    top: getVerticalSize(
                                      10.00,
                                    ),
                                    bottom: getVerticalSize(
                                      10.00,
                                    ),
                                    right: getHorizontalSize(
                                      0.00,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: GestureDetector(
                                          onTap: () async {
                                            setState(() async {
                                              radioGroup = 0;

                                              await context.setLocale(
                                                  const Locale("en"));
                                            });
                                          },
                                          child: SizedBox(
                                            height: getVerticalSize(
                                              56.00,
                                            ),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    getHorizontalSize(
                                                                        16)),
                                                        child: Text(
                                                          "English (USA)",
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18.0,
                                                            ),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily:
                                                                'Urbanist',
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                24)),
                                                    child: Theme(
                                                      data: Theme.of(context)
                                                          .copyWith(
                                                        unselectedWidgetColor:
                                                            ColorConstant
                                                                .gray500,
                                                        // disabledColor: Colors.blue
                                                      ),
                                                      child: Radio(
                                                        value: 0,
                                                        activeColor:
                                                            ColorConstant
                                                                .gray500,
                                                        groupValue: radioGroup,
                                                        onChanged:
                                                            (value) async {
                                                          radioGroup =
                                                              value as int;
                                                          await context
                                                              .setLocale(
                                                                  const Locale(
                                                                      "en"));
                                                        },
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () async {
                                          setState(() async {
                                            radioGroup = 1;

                                            await context
                                                .setLocale(const Locale("ar"));
                                          });
                                        },
                                        child: SizedBox(
                                          height: getVerticalSize(
                                            56.00,
                                          ),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.symmetric(
                                                          horizontal:
                                                              getHorizontalSize(
                                                                  16)),
                                                      child: Text(
                                                        "العربية",
                                                        style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18.0,
                                                            ),
                                                            fontFamily:
                                                                'Urbanist',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          getHorizontalSize(
                                                              24)),
                                                  child: Theme(
                                                    data: Theme.of(context)
                                                        .copyWith(
                                                      unselectedWidgetColor:
                                                          ColorConstant.gray500,
                                                      // disabledColor: Colors.blue
                                                    ),
                                                    child: Radio(
                                                      value: 1,
                                                      activeColor:
                                                          ColorConstant.gray500,
                                                      groupValue: radioGroup,
                                                      onChanged: (value) async {
                                                        radioGroup =
                                                            value as int;
                                                        await context.setLocale(
                                                            const Locale("ar"));
                                                      },
                                                    ),
                                                  ),
                                                )
                                              ]),
                                        ),
                                      ),
                                    ],
                                  )),
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
        ),
      ),
    );
  }
}
