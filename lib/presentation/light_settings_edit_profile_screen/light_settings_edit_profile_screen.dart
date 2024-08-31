// ignore_for_file: unused_field

import 'package:country_list_pick/country_list_pick.dart';
// import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/app_export.dart';

class LightSettingsEditProfileScreen extends StatefulWidget {
  const LightSettingsEditProfileScreen({super.key});

  @override
  State<LightSettingsEditProfileScreen> createState() =>
      _LightSettingsEditProfileScreenState();
}

class _LightSettingsEditProfileScreenState
    extends State<LightSettingsEditProfileScreen> {
  String dialCode = "+20";

  List<String> dropdownItemList = [
    "Country 1",
    "Country 2",
    "Country 3",
  ];
  List<String> dropdownItemList2 = [
    "Male",
    "  Female",
  ];
  Object? value1;
  Object? value2;
  TextEditingController? _controller3;

  @override
  void initState() {
    super.initState();

    _controller3 = TextEditingController(text: DateTime(1997).toString());
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Edit Profile",
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: getHorizontalSize(24)),
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
                    0.00,
                  ),
                  top: getVerticalSize(
                    33.70,
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
                    initialValue: "Andrew Ainsley",
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: 'Full name',
                      hintStyle: TextStyle(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: ColorConstant.gray500,
                          fontWeight: FontWeight.w400),
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
                    initialValue: "Andrew",
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: 'Nickname',
                      hintStyle: TextStyle(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: ColorConstant.gray500,
                          fontWeight: FontWeight.w400),
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
              //     Padding(
              //       padding: EdgeInsets.only(
              //         left: getHorizontalSize(
              //           0.00,
              //         ),
              //         top: getVerticalSize(
              //           24.00,
              //         ),
              //         right: getHorizontalSize(
              //           0.00,
              //         ),
              //       ),
              //       child:DateTimePicker(
              //   type: DateTimePickerType.date,
              //  decoration:InputDecoration(

              //                               hintText: "Your Date of birth",
              //                               hintStyle: TextStyle(
              //                                 fontSize: getFontSize(
              //                                   14.0,
              //                                 ),
              //                                 color: ColorConstant.gray500,
              //                               ),

              //                               suffixIcon: Padding(
              //                                 padding: EdgeInsets.only(
              //                                   left: getHorizontalSize(
              //                                     20.00,
              //                                   ),
              //                                   right: getHorizontalSize(
              //                                     20.00,
              //                                   ),
              //                                 ),
              //                                 child: Container(
              //                                   height: getSize(
              //                                     20.00,
              //                                   ),
              //                                   width: getSize(
              //                                     20.00,
              //                                   ),
              //                                   child:isDark?SvgPicture.asset(
              //                   ImageConstant.calendar,
              //                   fit: BoxFit.fill,
              //                    color: ColorConstant.gray500,

              //                 ):SvgPicture.asset(
              //                   ImageConstant.calendar,
              //                   fit: BoxFit.fill,
              //                   color: ColorConstant.gray500,
              //                 ),
              //                                 ),
              //                               ),
              //                               suffixIconConstraints:
              //                                   BoxConstraints(
              //                                 minWidth: getSize(
              //                                   20.00,
              //                                 ),
              //                                 minHeight: getSize(
              //                                   20.00,
              //                                 ),
              //                               ),

              //                               isDense: true,
              //                               contentPadding: EdgeInsets.only(
              //                     left: context.locale==Constants.engLocal?
              //                     getHorizontalSize(
              //                                   20.00,
              //                                 ):getHorizontalSize(0),
              //                                 right: context.locale==Constants.arLocal? getHorizontalSize(
              //                                   20.00,
              //                                 ):getHorizontalSize(0),
              //                                 top: getVerticalSize(
              //                                   20.80,
              //                                 ),
              //                                 bottom: getVerticalSize(
              //                                   20.80,
              //                                 ),
              //                               ),
              //                             ),
              //   dateMask: 'dd/MM/yyyy',
              //   style:  TextStyle(

              //                             fontSize: getFontSize(
              //                               14.0,
              //                             ),
              //                             fontFamily: 'Urbanist',
              //                             fontWeight: FontWeight.w600,
              //                           ),

              //   controller: _controller3,
              //   //initialValue: _initialValue,
              //   firstDate: DateTime(1900),

              //   lastDate: DateTime.now(),

              //   icon: Container(
              //                                   height: getSize(
              //                                     20.00,
              //                                   ),
              //                                   width: getSize(
              //                                     20.00,
              //                                   ),
              //                                   child:isDark?SvgPicture.asset(
              //                   ImageConstant.calendar,
              //                   fit: BoxFit.fill,
              //                   color: Colors.white,
              //                 ):SvgPicture.asset(
              //                   ImageConstant.calendar,
              //                   fit: BoxFit.fill,
              //                 ),
              //                                 ),

              //   onChanged: (val) => setState(() => val),
              //   validator: (val) {
              //     setState(() => val ?? '');
              //     return null;
              //   },
              //   onSaved: (val) => setState(() => val ?? ''),
              // ),

              //     ),

              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    24.00,
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
                    initialValue: "andrew_ainsley@yourdomain.com",
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: ColorConstant.gray500,
                          fontWeight: FontWeight.w400),
                      suffixIcon: Container(
                        margin: EdgeInsets.only(
                          left: getHorizontalSize(
                            30.00,
                          ),
                          top: getVerticalSize(
                            20.38,
                          ),
                          right: getHorizontalSize(
                            22.09,
                          ),
                          bottom: getVerticalSize(
                            20.43,
                          ),
                        ),
                        child: SizedBox(
                          height: getSize(
                            15.19,
                          ),
                          width: getSize(
                            15.87,
                          ),
                          child: isDark
                              ? SvgPicture.asset(
                                  ImageConstant.email,
                                  fit: BoxFit.fill,
                                  color: ColorConstant.gray500,
                                )
                              : SvgPicture.asset(
                                  ImageConstant.email,
                                  fit: BoxFit.fill,
                                  color: ColorConstant.gray500,
                                ),
                        ),
                      ),
                      suffixIconConstraints: BoxConstraints(
                        minWidth: getSize(
                          15.19,
                        ),
                        minHeight: getSize(
                          15.19,
                        ),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: getHorizontalSize(
                          20.00,
                        ),
                        top: getVerticalSize(
                          18.21,
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
                  top: getVerticalSize(
                    24.00,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      12.00,
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
                                value: value1,
                                isExpanded: true,
                                icon: SizedBox(
                                  height: getSize(
                                    8.33,
                                  ),
                                  width: getSize(
                                    10.00,
                                  ),
                                  child: isDark
                                      ? SvgPicture.asset(
                                          ImageConstant.arrowDown,
                                          fit: BoxFit.fill,
                                        )
                                      : SvgPicture.asset(
                                          ImageConstant.arrowDown,
                                          fit: BoxFit.fill,
                                          color: ColorConstant.black900,
                                        ),
                                ),

                                // iconEnabledColor: Colors.transparent,
                                // iconDisabledColor: Colors.transparent,
                                hint: Text(
                                  'Country',
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
                                    value1 = value;
                                  });
                                },
                                items: dropdownItemList
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
                                  return dropdownItemList.map((String value) {
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
              ),
              Container(
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    0.00,
                  ),
                  top: getVerticalSize(
                    12.00,
                  ),
                  right: getHorizontalSize(
                    0.00,
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
                          initialValue: "01022589745",
                          cursorColor: ColorConstant.gray500,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Your Phone Number ',
                            hintStyle: TextStyle(
                              color: ColorConstant.gray500,
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
                            color:
                                isDark ? Colors.white : ColorConstant.black900,
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
                    borderRadius: BorderRadius.circular(getHorizontalSize(12))),
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
                                child: isDark
                                    ? SvgPicture.asset(
                                        ImageConstant.arrowDown,
                                        fit: BoxFit.fill,
                                        // color: Colors.white,
                                      )
                                    : SvgPicture.asset(
                                        ImageConstant.arrowDown,
                                        fit: BoxFit.fill,
                                        color: Colors.black,
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
                  top: getVerticalSize(
                    24.00,
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
                    initialValue: "365 New Avenue, New York, United States",
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: 'Address',
                      hintStyle: TextStyle(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: ColorConstant.gray500,
                          fontWeight: FontWeight.w400),
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
                  top: getVerticalSize(
                    64.00,
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
                      "Update",
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
    );
  }
}
