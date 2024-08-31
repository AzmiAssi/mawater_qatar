// ignore_for_file: unused_field, avoid_print

import 'package:animate_do/animate_do.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/app_export.dart';

class LightFillProfileBlankFormScreen extends StatefulWidget {
  const LightFillProfileBlankFormScreen({super.key});

  @override
  State<LightFillProfileBlankFormScreen> createState() =>
      _LightFillProfileBlankFormScreenState();
}

class _LightFillProfileBlankFormScreenState
    extends State<LightFillProfileBlankFormScreen> {
  Object? value2;
  List<String> dropdownItemList2 = [
    "Male",
    "  Female",
  ];
  TextEditingController? _controller3;
  String dialCode = "+20";
  @override
  void initState() {
    super.initState();

    // _controller3 = TextEditingController(text: DateTime(1997).toString());
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Fill Your Profile",
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
          child: FadeInUp(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: getSize(
                    140.00,
                  ),
                  width: getSize(
                    140.00,
                  ),
                  margin: EdgeInsets.only(
                    left: getHorizontalSize(
                      24.00,
                    ),
                    top: getVerticalSize(
                      33.70,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              70.00,
                            ),
                          ),
                          child: Image.asset(
                            ImageConstant.fillProfile,
                            height: getSize(
                              140.00,
                            ),
                            width: getSize(
                              140.00,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              10.00,
                            ),
                            right: getHorizontalSize(
                              2.91,
                            ),
                            bottom: getVerticalSize(
                              2.91,
                            ),
                          ),
                          child: SizedBox(
                            height: getSize(
                              29.17,
                            ),
                            width: getSize(
                              29.17,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.edit,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      0.00,
                    ),
                    top: getVerticalSize(
                      24.00,
                    ),
                    right: getHorizontalSize(
                      0.00,
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
                      focusNode: FocusNode(),
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
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
                            18.21,
                          ),
                          right: getHorizontalSize(
                            30.00,
                          ),
                          bottom: getVerticalSize(
                            18.20,
                          ),
                        ),
                      ),
                      style: TextStyle(
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
                    left: getHorizontalSize(
                      0.00,
                    ),
                    top: getVerticalSize(
                      24.00,
                    ),
                    right: getHorizontalSize(
                      0.00,
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
                      focusNode: FocusNode(),
                      decoration: InputDecoration(
                        hintText: 'Nickname',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
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
                            18.21,
                          ),
                          right: getHorizontalSize(
                            30.00,
                          ),
                          bottom: getVerticalSize(
                            18.20,
                          ),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: getFontSize(
                          14.0,
                        ),
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //     left: getHorizontalSize(
                //       24.00,
                //     ),
                //     top: getVerticalSize(
                //       24.00,
                //     ),
                //     right: getHorizontalSize(
                //       24.00,
                //     ),
                //   ),
                //   child: DateTimePicker(
                //     type: DateTimePickerType.date,
                //     decoration: InputDecoration(
                //       hintText: "Your Date of birth",
                //       hintStyle: TextStyle(
                //         fontSize: getFontSize(
                //           14.0,
                //         ),
                //         fontFamily: 'Urbanist',
                //         color: ColorConstant.gray400,
                //       ),
                //       suffixIcon: Padding(
                //         padding: EdgeInsets.only(
                //           left: getHorizontalSize(
                //             10.00,
                //           ),
                //           right: getHorizontalSize(
                //             20.00,
                //           ),
                //         ),
                //         child: Container(
                //           height: getSize(
                //             20.00,
                //           ),
                //           width: getSize(
                //             20.00,
                //           ),
                //           child: SvgPicture.asset(
                //             ImageConstant.calendar,
                //             // color: ColorConstant.gray500,
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //       ),
                //       suffixIconConstraints: BoxConstraints(
                //         minWidth: getSize(
                //           20.00,
                //         ),
                //         minHeight: getSize(
                //           20.00,
                //         ),
                //       ),
                //       filled: true,
                //       fillColor: ColorConstant.gray100,
                //       isDense: true,
                //       contentPadding: EdgeInsets.only(
                //         left: context.locale == Constants.engLocal
                //             ? getHorizontalSize(
                //                 20.00,
                //               )
                //             : getHorizontalSize(0),
                //         right: context.locale == Constants.arLocal
                //             ? getHorizontalSize(
                //                 20.00,
                //               )
                //             : getHorizontalSize(0),
                //         top: getVerticalSize(
                //           20.80,
                //         ),
                //         bottom: getVerticalSize(
                //           20.80,
                //         ),
                //       ),
                //     ),
                //     dateMask: 'dd/MM/yyyy',
                //     style: TextStyle(
                //       color: ColorConstant.gray900,
                //       fontSize: getFontSize(
                //         14.0,
                //       ),
                //       fontFamily: 'Urbanist',
                //       fontWeight: FontWeight.w600,
                //     ),

                //     controller: _controller3,
                //     //initialValue: _initialValue,
                //     firstDate: DateTime(1900),

                //     lastDate: DateTime.now(),

                //     icon: Container(
                //       height: getSize(
                //         20.00,
                //       ),
                //       width: getSize(
                //         20.00,
                //       ),
                //       child: SvgPicture.asset(
                //         ImageConstant.calendar,
                //         fit: BoxFit.fill,
                //       ),
                //     ),

                //     onChanged: (val) => setState(() => val ),
                //     validator: (val) {
                //       setState(() => val ?? '');
                //       return null;
                //     },
                //     onSaved: (val) => setState(() => val ?? ''),
                //   ),
                // ),

                Container(
                  margin: EdgeInsets.only(
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
                  decoration: BoxDecoration(
                    color: isDark
                        ? ColorConstant.darkTextField
                        : ColorConstant.gray100,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        12.00,
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CountryListPick(
                        theme: CountryTheme(
                          isShowFlag: true,
                          isShowTitle: false,
                          isShowCode: true,
                          isDownIcon: false,
                          showEnglishName: false,
                          labelColor: Colors.black,
                        ),
                        initialSelection: dialCode,

                        // or
                        // initialSelection: 'US'
                        onChanged: (code) {
                          setState(() {
                            if (code!.dialCode != null) {
                              dialCode = code.dialCode!;
                            } else {
                              print("dialCode is null");
                            }
                          });
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getVerticalSize(9),
                            horizontal: getHorizontalSize(8)),
                        child: VerticalDivider(
                          color: ColorConstant.black900,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: getHorizontalSize(170),
                          child: TextFormField(
                            cursorColor: ColorConstant.gray500,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Your Phone Number ',
                              hintStyle: TextStyle(
                                color: ColorConstant.gray400,
                                fontSize: getFontSize(
                                  16.0,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                  borderSide: BorderSide.none),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                  borderSide: BorderSide.none),
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  8.00,
                                ),
                                right: getHorizontalSize(
                                  8.00,
                                ),
                                top: getVerticalSize(
                                  21.20,
                                ),
                                bottom: getVerticalSize(
                                  19.20,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: isDark
                                  ? Colors.white
                                  : ColorConstant.black900,
                              fontSize: getFontSize(
                                16.0,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      24.00,
                    ),
                  ),
                  height: getVerticalSize(
                    56.00,
                  ),
                  width: getHorizontalSize(
                    380.00,
                  ),
                  decoration: BoxDecoration(
                      color: isDark
                          ? ColorConstant.darkTextField
                          : ColorConstant.gray100,
                      borderRadius:
                          BorderRadius.circular(getHorizontalSize(12))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: getHorizontalSize(20)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(12),
                                right: getHorizontalSize(12),
                                top: getVerticalSize(22),
                                bottom: getVerticalSize(16)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                autofocus: true,
                                value: value2,
                                isExpanded: true,
                                icon: SizedBox(
                                  height: getSize(
                                    8.33,
                                  ),
                                  width: getSize(
                                    10.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.arrowDown,
                                    fit: BoxFit.fill,
                                    color: ColorConstant.gray500,
                                  ),
                                ),
                                hint: Text(
                                  'Gender',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray400,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    height: 1.00,
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    value2 = value;
                                  });
                                },
                                items: dropdownItemList2
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      textAlign: TextAlign.start,
                                    ),
                                  );
                                }).toList(),
                                selectedItemBuilder: (BuildContext context) {
                                  return dropdownItemList2.map((String value) {
                                    return Text(
                                      value,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: isDark
                                            ? Colors.white
                                            : ColorConstant.black900,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        height: 1.00,
                                      ),
                                    );
                                  }).toList();
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      24.00,
                    ),
                    top: getVerticalSize(
                      60.00,
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const CreateNewPIN()),
                      // );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        58.00,
                      ),
                      width: size.width,
                      decoration: BoxDecoration(
                        color: ColorConstant.gray500,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            29.00,
                          ),
                        ),
                      ),
                      child: Text(
                        "Continue",
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
        ),
      ),
    );
  }
}
