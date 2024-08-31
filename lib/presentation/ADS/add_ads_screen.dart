// ignore_for_file: avoid_print, unrelated_type_equality_checks

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawater_qatar/core/services/services.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/models/entity/payment_package_entity.dart';
// ignore: depend_on_referenced_packages
import 'package:uuid/uuid.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/core/theme/theme_constants.dart';
import 'package:mawater_qatar/models/entity/car_transmition%20entity.dart';
import 'package:mawater_qatar/models/entity/category_entity.dart';
import 'package:mawater_qatar/models/entity/city_entity.dart';
import 'package:mawater_qatar/models/entity/color_entity.dart';
import 'package:mawater_qatar/models/entity/country_entity.dart';
import 'package:mawater_qatar/models/entity/engin_capacity_entity.dart';
import 'package:mawater_qatar/models/entity/fuel_type_entity.dart';
import 'package:mawater_qatar/models/entity/furnishing_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_status_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_structure_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_type_entity.dart';
import 'package:mawater_qatar/models/entity/wheel_movement_entity.dart';
import 'package:mawater_qatar/models/entity/year_entity.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mawater_qatar/widgets/custom_button.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddAdsScreen extends StatefulWidget {
  const AddAdsScreen({super.key});

  @override
  State<AddAdsScreen> createState() => _AddAdsScreenState();
}

class _AddAdsScreenState extends State<AddAdsScreen> {
  bool isLoadingStep1 = false;
  bool isLoadingStep2 = true;
  var uuid = const Uuid();
  bool isgetFirstData = false;
  bool isgetSecondData = false;
  String defualtImageName = "";
  List<String> uploadedFiles = [];
  List<File> selectedFiles = [];
  File? defualtImage;
  int currentStep = 0;
  TextEditingController numberOfSeatsController = TextEditingController();
  TextEditingController traveledDistanceController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  //list of items
  List<CategoryEntity> categoryItems = [];
  List<CarTransmitionEntity> carTransmitionItems = [];
  List<CityEntity> cityItems = [];
  List<ColorEntity> colorItems = [];
  List<CountryEntity> countryItems = [];
  List<EnginCapacityEntity> enginCapacityItems = [];
  List<FuelTypeEntity> fuelTypeItems = [];
  List<FurnishingEntity> furnishingItems = [];
  List<MawaterEntity> mawaterItems = [];
  List<MawaterStatusEntity> mawaterStatusItems = [];
  List<MawaterStructureEntity> mawaterStructureItems = [];
  List<MawaterTypeEntity> mawaterTypeItems = [];
  List<YearEntity> yearItems = [];
  List<WheelMovementEntity> wheelMovementItems = [];

  ///selected parameters
  CategoryEntity? selectedCategory;
  CarTransmitionEntity? selectedCarTransmition;
  CityEntity? selectedCity;
  ColorEntity? selectedColor;
  CountryEntity? selectedCountry;
  EnginCapacityEntity? selectedEnginCapacity;
  FuelTypeEntity? selectedFuelType;
  FurnishingEntity? selectedFurnishing;
  MawaterEntity? selectedMawater;
  MawaterStatusEntity? selectedMawaterStatus;
  MawaterStructureEntity? selectedMawaterStructure;
  MawaterTypeEntity? selectedMawaterType;
  YearEntity? selectedYear;
  WheelMovementEntity? selectedWheelMovement;
  PaymentPackageEntity? selectedPaymentPackage;

  @override
  void initState() {
    super.initState();
    fetchingDataStep1();
  }

  Future<void> fetchingDataStep1() async {
    setState(() {
      isLoadingStep1 = true;
    });
    await filterController.fetchDataStep1();
    isLoadingStep1 = false;
    isgetFirstData = true;
    setState(() {});
    if (mounted) setState(() {});
  }

  Future<void> fetchingDataStep2() async {
    setState(() {
      isLoadingStep2 = true;
    });
    await filterController.fetchDataStep2();
    isLoadingStep2 = false;
    isgetSecondData = true;
    setState(() {});
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: Builder(builder: (context) {
        return Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                margin: getMargin(left: 24, right: 24, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 7,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 3,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.appLogo,
                              height: getVerticalSize(
                                30.00,
                              ),
                              width: getHorizontalSize(
                                30.00,
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 16),
                          Padding(
                            padding: getPadding(
                              left: 0,
                            ),
                            child: Text(
                              tr("addAds"),
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
                  ],
                ),
              ),
            ),
            Expanded(
              child: Theme(
                data: isDark
                    ? darkTheme
                    : ThemeData(
                        primarySwatch: Colors.grey,
                        colorScheme:
                            ColorScheme.light(primary: ColorConstant.gray500),
                        inputDecorationTheme: InputDecorationTheme(
                          alignLabelWithHint: true,
                          hintStyle: TextStyle(
                            color: ColorConstant.gray400,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  12.00,
                                ),
                              ),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: ColorConstant.gray500,
                              width: 1,
                            ),
                          ),
                          filled: true,
                          fillColor: ColorConstant.gray100,
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                            left: getHorizontalSize(
                              14.00,
                            ),
                            right: getHorizontalSize(
                              14.00,
                            ),
                            top: getVerticalSize(
                              50.11,
                            ),
                            bottom: getVerticalSize(
                              0.12,
                            ),
                          ),
                        ),
                      ),
                child: Stepper(
                    //margin: const EdgeInsets.symmetric(horizontal: 20),
                    elevation: 0.5,
                    // type: StepperType.horizontal,
                    steps: getSteps(isDark),
                    currentStep: currentStep,
                    //physics: ScrollPhysics(),
                    onStepContinue: () {},
                    onStepTapped: (step) {},
                    onStepCancel: currentStep == 0
                        ? null
                        : () {
                            setState(() => currentStep -= 1);
                          },
                    controlsBuilder: (BuildContext context, details) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          currentStep > 0
                              ? Padding(
                                  padding: getPadding(top: 7.5, bottom: 7.5),
                                  child: CustomButton(
                                    isDark: false,
                                    width: 150,
                                    text: tr("back"),
                                    onTap: () {
                                      setState(() {
                                        --currentStep;
                                      });
                                    },
                                    variant: ButtonVariant.FillGray200,
                                    shape: ButtonShape.CircleBorder29,
                                    padding: ButtonPadding.PaddingAll18,
                                    fontStyle:
                                        ButtonFontStyle.UrbanistRomanBold16,
                                  ),
                                )
                              : const SizedBox(),
                          Padding(
                            padding: getPadding(top: 7.5, bottom: 7.5),
                            child: CustomButton(
                              isDark: false,
                              width: 150,
                              //width: 380,
                              text:
                                  currentStep != 4 ? tr("next") : tr("finish"),
                              onTap: () {
                                if (currentStep != 4) {
                                  if (currentStep == 0 &&
                                      isgetSecondData == false) {
                                    fetchingDataStep2();
                                  }
                                  setState(() {
                                    ++currentStep;
                                  });
                                } else {
                                  addADS();
                                }
                              },
                              variant: ButtonVariant.OutlineBlack9003f,
                              shape: ButtonShape.CircleBorder29,
                              padding: ButtonPadding.PaddingAll18,
                              fontStyle:
                                  ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
          ],
        );
      }),
    );
  }

  Future uploadImage() async {
    for (int i = 0; i < selectedFiles.length; i++) {
      String fileName = uuid.v1();

      try {
        await FirebaseStorage.instance
            .ref('ADS/$fileName')
            .putFile(selectedFiles[i]);
        print("Successfully upload file ${selectedFiles[i].path}");
        if (selectedFiles[i] == defualtImage) {
          defualtImageName = fileName;
        }
        uploadedFiles.add(fileName);
      } on FirebaseException catch (e) {
        print('error is ${e.message}');
      }
    }
    return true;
  }

  dynamic _showSelectImageDialog() {
    return Platform.isIOS ? _iosBottomSheet() : _androidDialog();
  }

  Future _iosBottomSheet() async => showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            // title: Text('Add Photo'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                onPressed: () => _upload(ImageSource.camera),
                child: const Text('Take Photo'),
              ),
              CupertinoActionSheetAction(
                onPressed: () => _upload(ImageSource.gallery),
                child: const Text('Choose Photo'),
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          );
        },
      );

  _androidDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Add Photo'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () => _upload(ImageSource.camera),
              child: const Text('Take Photo'),
            ),
            SimpleDialogOption(
              onPressed: () => _upload(ImageSource.gallery),
              child: const Text('Choose From Gallery'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _upload(ImageSource source) async {
    var picker = ImagePicker();
    if (source == ImageSource.gallery) {
      picker
          .pickMultiImage(
              //source: source,
              limit: 10,
              maxHeight: 800,
              maxWidth: 800,
              imageQuality: 80)
          .then((value) {
        for (var element in value) {
          XFile? image = element;

          setState(() {
            selectedFiles.add(File.fromUri(Uri.file(image.path)));
          });
        }
      });
    } else {
      picker
          .pickImage(
              source: source, maxHeight: 800, maxWidth: 800, imageQuality: 80)
          .then((value) {
        XFile? image = value;

        if (image != null) {
          setState(() {
            selectedFiles.add(File.fromUri(Uri.file(image.path)));
          });

          // uploadImage(File.fromUri(Uri.file(image.path)));
        }
      });
    }

    setState(() {
      if (selectedFiles.isNotEmpty) {
        defualtImage = selectedFiles[0];
      }
    });
    Navigator.pop(context);
  }

  List<Step> getSteps(isDark) {
    return [
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        // subtitle: Text(
        //   "Car Info",
        //   style: TextStyle(fontSize: 8, color: ColorConstant.gray500),
        // ),
        title: Text(
          tr('step1'),
          style: const TextStyle(fontSize: 12),
        ),
        content: SizedBox(
          //width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 330,
          child: isLoadingStep1
              ? Center(
                  child: CircularProgressIndicator(
                  color: ColorConstant.gray500,
                ))
              : ListView(
                  children: [
                    //category
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 0,
                        right: 5,
                      ),
                      child: Text(
                        tr("category"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedCategory,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr('category'),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedCategory = value!;
                                        });
                                      },
                                      items: filterController.categoryItems.map<
                                              DropdownMenuItem<CategoryEntity>>(
                                          (CategoryEntity value) {
                                        return DropdownMenuItem<CategoryEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.categoryName
                                                      .toString()
                                                  : value.categoryArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController.categoryItems
                                            .map((CategoryEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.categoryName.toString()
                                                : value.categoryArabicName
                                                    .toString(),
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
                    //CarTransmition
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 7,
                        right: 5,
                      ),
                      child: Text(
                        tr("carTransmition"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedCarTransmition,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr("carTransmition"),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedCarTransmition = value!;
                                        });
                                      },
                                      items: filterController
                                          .carTransmitionItems
                                          .map<
                                                  DropdownMenuItem<
                                                      CarTransmitionEntity>>(
                                              (CarTransmitionEntity value) {
                                        return DropdownMenuItem<
                                            CarTransmitionEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.transName.toString()
                                                  : value.transArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController
                                            .carTransmitionItems
                                            .map((CarTransmitionEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.transName.toString()
                                                : value.transArabicName
                                                    .toString(),
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
                    //city
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 7,
                        right: 5,
                      ),
                      child: Text(
                        tr("city"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedCity,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr('city'),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedCity = value!;
                                        });
                                      },
                                      items: filterController.cityItems
                                          .map<DropdownMenuItem<CityEntity>>(
                                              (CityEntity value) {
                                        return DropdownMenuItem<CityEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.cityName.toString()
                                                  : value.cityArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController.cityItems
                                            .map((CityEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.cityName.toString()
                                                : value.cityArabicName
                                                    .toString(),
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

                    //Color
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 7,
                        right: 5,
                      ),
                      child: Text(
                        tr("color"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedColor,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr("color"),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedColor = value!;
                                        });
                                      },
                                      items: filterController.colorItems
                                          .map<DropdownMenuItem<ColorEntity>>(
                                              (ColorEntity value) {
                                        return DropdownMenuItem<ColorEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.colorName.toString()
                                                  : value.colorArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController.colorItems
                                            .map((ColorEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.colorName.toString()
                                                : value.colorArabicName
                                                    .toString(),
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

                    //Engin Capacity
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 7,
                        right: 5,
                      ),
                      child: Text(
                        tr("enginCapacity"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedEnginCapacity,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr("enginCapacity"),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedEnginCapacity = value!;
                                        });
                                      },
                                      items: filterController.enginCapacityItems
                                          .map<
                                                  DropdownMenuItem<
                                                      EnginCapacityEntity>>(
                                              (EnginCapacityEntity value) {
                                        return DropdownMenuItem<
                                            EnginCapacityEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.capacityName
                                                      .toString()
                                                  : value.capacityArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController
                                            .enginCapacityItems
                                            .map((EnginCapacityEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.capacityName.toString()
                                                : value.capacityArabicName
                                                    .toString(),
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

                    // Align(
                    //   alignment: Alignment.center,
                    //   child: SizedBox(
                    //       height: getVerticalSize(50),
                    //       child: ListView.separated(
                    //           padding: getPadding(
                    //             left: 5,
                    //             top: 7,
                    //             right: 5,
                    //           ),
                    //           scrollDirection: Axis.horizontal,
                    //           itemBuilder: (context, index) {
                    //             return InkWell(
                    //               onTap: () {
                    //                 setState(() {
                    //                   selectedEnginCapacity =
                    //                       enginCapacityItems[index];
                    //                 });
                    //               },
                    //               child: Container(
                    //                 margin: getMargin(
                    //                   left: 0,
                    //                 ),
                    //                 padding: getPadding(
                    //                     left: 16, right: 16, top: 8, bottom: 8),
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(
                    //                     getHorizontalSize(
                    //                       10.00,
                    //                     ),
                    //                   ),
                    //                   color:
                    //                       selectedEnginCapacity.capacityName ==
                    //                               enginCapacityItems[index]
                    //                                   .capacityName
                    //                           ? ColorConstant.gray500
                    //                           : Colors.transparent,
                    //                   border: Border.all(
                    //                     color: ColorConstant.gray500,
                    //                     width: getHorizontalSize(
                    //                       1.00,
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 child: Align(
                    //                   alignment: Alignment.center,
                    //                   child: Text(
                    //                     enginCapacityItems[index]
                    //                         .capacityName
                    //                         .toString(),
                    //                     overflow: TextOverflow.ellipsis,
                    //                     textAlign: TextAlign.start,
                    //                     style: TextStyle(
                    //                       color: selectedEnginCapacity ==
                    //                               enginCapacityItems[index]
                    //                           ? Colors.white
                    //                           : ColorConstant.gray500,
                    //                       fontSize: getFontSize(
                    //                         14,
                    //                       ),
                    //                       fontFamily: 'Inter',
                    //                       fontWeight: FontWeight.w400,
                    //                       height: 1.00,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             );
                    //           },
                    //           separatorBuilder: (context, index) {
                    //             return HorizontalSpace(width: 8);
                    //           },
                    //           itemCount: colorItems.length)),
                    // ),

                    //Fuel Type
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 7,
                        right: 5,
                      ),
                      child: Text(
                        tr("fuelType"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedFuelType,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr("fuelType"),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedFuelType = value!;
                                        });
                                      },
                                      items: filterController.fuelTypeItems.map<
                                              DropdownMenuItem<FuelTypeEntity>>(
                                          (FuelTypeEntity value) {
                                        return DropdownMenuItem<FuelTypeEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.fuelName.toString()
                                                  : value.fuelArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController.fuelTypeItems
                                            .map((FuelTypeEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.fuelName.toString()
                                                : value.fuelArabicName
                                                    .toString(),
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
                    //wheelMovement
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 5,
                        right: 5,
                      ),
                      child: Text(
                        tr("wheelMovement"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedWheelMovement,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr('wheelMovement'),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedWheelMovement = value!;
                                        });
                                      },
                                      items: filterController.wheelMovementItems
                                          .map<
                                                  DropdownMenuItem<
                                                      WheelMovementEntity>>(
                                              (WheelMovementEntity value) {
                                        return DropdownMenuItem<
                                            WheelMovementEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.wheelMovementName
                                                      .toString()
                                                  : value
                                                      .wheelMovementArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController
                                            .wheelMovementItems
                                            .map((WheelMovementEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.wheelMovementName
                                                    .toString()
                                                : value.wheelMovementArabicName
                                                    .toString(),
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
                  ],
                ),
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: Text(
          tr("step2"),
          style: const TextStyle(fontSize: 12),
        ),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 330,
          child: isLoadingStep2
              ? Center(
                  child: CircularProgressIndicator(
                  color: ColorConstant.gray500,
                ))
              : ListView(
                  children: [
                    //Furnishing
                    Padding(
                      padding: getPadding(
                        left: 5,
                        right: 5,
                      ),
                      child: Text(
                        tr("furnishing"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedFurnishing,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr("furnishing"),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedFurnishing = value!;
                                        });
                                      },
                                      items: filterController.furnishingItems
                                          .map<
                                                  DropdownMenuItem<
                                                      FurnishingEntity>>(
                                              (FurnishingEntity value) {
                                        return DropdownMenuItem<
                                            FurnishingEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.furnishingName
                                                      .toString()
                                                  : value.furnishingArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController.furnishingItems
                                            .map((FurnishingEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.furnishingName
                                                    .toString()
                                                : value.furnishingArabicName
                                                    .toString(),
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

                    //Mawater
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 7,
                        right: 5,
                      ),
                      child: Text(
                        tr("mawater"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedMawater,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr("mawater"),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedMawater = value!;
                                        });
                                      },
                                      items: filterController.mawaterItems
                                          .map<DropdownMenuItem<MawaterEntity>>(
                                              (MawaterEntity value) {
                                        return DropdownMenuItem<MawaterEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.mawaterName.toString()
                                                  : value.mawaterArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController.mawaterItems
                                            .map((MawaterEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.mawaterName.toString()
                                                : value.mawaterArabicName
                                                    .toString(),
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

                    //MawaterStatus
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 7,
                        right: 5,
                      ),
                      child: Text(
                        tr("mawaterStatus"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedMawaterStatus,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr("mawaterStatus"),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedMawaterStatus = value!;
                                        });
                                      },
                                      items: filterController.mawaterStatusItems
                                          .map<
                                                  DropdownMenuItem<
                                                      MawaterStatusEntity>>(
                                              (MawaterStatusEntity value) {
                                        return DropdownMenuItem<
                                            MawaterStatusEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.statusName.toString()
                                                  : value.statusArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController
                                            .mawaterStatusItems
                                            .map((MawaterStatusEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.statusName.toString()
                                                : value.statusArabicName
                                                    .toString(),
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

                    //MawaterStructure
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 7,
                        right: 5,
                      ),
                      child: Text(
                        tr("mawaterStructure"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedMawaterStructure,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr("mawaterStructure"),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedMawaterStructure = value!;
                                        });
                                      },
                                      items: filterController
                                          .mawaterStructureItems
                                          .map<
                                                  DropdownMenuItem<
                                                      MawaterStructureEntity>>(
                                              (MawaterStructureEntity value) {
                                        return DropdownMenuItem<
                                            MawaterStructureEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.structureName
                                                      .toString()
                                                  : value.structureArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController
                                            .mawaterStructureItems
                                            .map(
                                                (MawaterStructureEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.structureName.toString()
                                                : value.structureArabicName
                                                    .toString(),
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

                    //MawaterType
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 7,
                        right: 5,
                      ),
                      child: Text(
                        tr("mawaterType"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedMawaterType,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr("mawaterType"),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedMawaterType = value!;
                                        });
                                      },
                                      items: filterController.mawaterTypeItems
                                          .map<
                                                  DropdownMenuItem<
                                                      MawaterTypeEntity>>(
                                              (MawaterTypeEntity value) {
                                        return DropdownMenuItem<
                                            MawaterTypeEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.mTypeName.toString()
                                                  : value.mTypeArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController.mawaterTypeItems
                                            .map((MawaterTypeEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.mTypeName.toString()
                                                : value.mTypeArabicName
                                                    .toString(),
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

                    //Year
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 7,
                        right: 5,
                      ),
                      child: Text(
                        tr("year"),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            0.00,
                          ),
                        ),
                        height: getVerticalSize(
                          50.00,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(12),
                                      right: getHorizontalSize(12),
                                      top: getVerticalSize(17),
                                      bottom: getVerticalSize(17)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      menuMaxHeight: 200,
                                      autofocus: true,
                                      value: selectedYear,
                                      isExpanded: true,
                                      icon: SizedBox(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.arrowDown,
                                                fit: BoxFit.fill,
                                                color: ColorConstant.gray500,
                                              ),
                                      ),
                                      hint: Text(
                                        tr("year"),
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w300,
                                          height: 1.00,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedYear = value!;
                                        });
                                      },
                                      items: filterController.yearItems
                                          .map<DropdownMenuItem<YearEntity>>(
                                              (YearEntity value) {
                                        return DropdownMenuItem<YearEntity>(
                                          value: value,
                                          child: Text(
                                              context.locale.toString() == "en"
                                                  ? value.yearName.toString()
                                                  : value.yearArabicName
                                                      .toString(),
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
                                              )),
                                        );
                                      }).toList(),
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                        return filterController.yearItems
                                            .map((YearEntity value) {
                                          return Text(
                                            context.locale.toString() == "en"
                                                ? value.yearName.toString()
                                                : value.yearArabicName
                                                    .toString(),
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
                  ],
                ),
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: Text(
          tr("step3"),
          style: const TextStyle(fontSize: 12),
        ),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 330,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 5,
                  right: 5,
                ),
                child: Text(
                  tr("numberOfSeats"),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    10.00,
                  ),
                ),
                child: SizedBox(
                  height: getVerticalSize(
                    75.00,
                  ),
                  width: getHorizontalSize(
                    380.00,
                  ),
                  child: TextFormField(
                    maxLength: 2,
                    controller: numberOfSeatsController,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (int.parse(value.toString()) < 1 ||
                          int.parse(value.toString()) < 50) {
                        return "";
                      } else {
                        return null;
                      }
                    },
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: tr("numberOfSeats"),
                      hintStyle: TextStyle(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: Colors.grey,
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
                padding: getPadding(
                  left: 5,
                  right: 5,
                ),
                child: Text(
                  tr("traveledDistance"),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    10.00,
                  ),
                ),
                child: SizedBox(
                  height: getVerticalSize(
                    50.00,
                  ),
                  width: getHorizontalSize(
                    380.00,
                  ),
                  child: TextFormField(
                    maxLines: 1,
                    controller: traveledDistanceController,
                    keyboardType: TextInputType.number,
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: tr("traveledDistance"),
                      hintStyle: TextStyle(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: Colors.grey,
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
                padding: getPadding(
                  left: 5,
                  top: 5,
                  right: 5,
                ),
                child: Text(
                  tr("price"),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    10.00,
                  ),
                ),
                child: SizedBox(
                  height: getVerticalSize(
                    50.00,
                  ),
                  width: getHorizontalSize(
                    380.00,
                  ),
                  child: TextFormField(
                    maxLines: 1,
                    controller: priceController,
                    keyboardType: TextInputType.number,
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: tr("price"),
                      suffix: Text(
                        context.locale.toString() == "en" ? "QR" : "ر.ق",
                        style: TextStyle(color: ColorConstant.gray500),
                        textAlign: TextAlign.center,
                      ),
                      hintStyle: TextStyle(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: Colors.grey,
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
                padding: getPadding(
                  left: 5,
                  top: 5,
                  right: 5,
                ),
                child: Text(
                  tr("subject"),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    10.00,
                  ),
                ),
                child: SizedBox(
                  height: getVerticalSize(
                    50.00,
                  ),
                  width: getHorizontalSize(
                    380.00,
                  ),
                  child: TextFormField(
                    maxLines: 1,
                    controller: subjectController,
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: tr("subject"),
                      hintStyle: TextStyle(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: Colors.grey,
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
                padding: getPadding(
                  left: 5,
                  top: 5,
                  right: 5,
                ),
                child: Text(
                  tr("description"),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    10.00,
                  ),
                ),
                child: SizedBox(
                  height: getVerticalSize(
                    350.00,
                  ),
                  width: getHorizontalSize(
                    380.00,
                  ),
                  child: TextFormField(
                    minLines: 12,
                    maxLines: 15,
                    maxLength: 700,
                    controller: descriptionController,
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: tr("description"),
                      hintStyle: TextStyle(
                          fontSize: getFontSize(
                            14.0,
                          ),
                          color: Colors.grey,
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
            ],
          ),
        ),
      ),
      Step(
        state: currentStep > 3 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 3,
        title: Text(
          tr("Step4"),
          style: const TextStyle(fontSize: 12),
        ),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 330,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 5,
                  top: 7,
                  right: 5,
                ),
                child: Text(
                  tr("images"),
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
                padding: getPadding(all: 10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _showSelectImageDialog();
                    });
                  },
                  child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstant.gray500),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_a_photo,
                                size: 28,
                                color: ColorConstant.gray500,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                tr("uploadPhotos"),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  color: ColorConstant.gray500,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ))),
                ),
              ),
              selectedFiles.isNotEmpty
                  ? Container(
                      // decoration: BoxDecoration(
                      //     border: Border.all(color: ColorConstant.gray500),
                      //     borderRadius:
                      //         const BorderRadius.all(Radius.circular(10))),
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      height: 400,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, // Number of columns
                                crossAxisSpacing:
                                    10.0, // Spacing between columns
                                mainAxisSpacing: 10.0, // Spacing between rows
                                mainAxisExtent: 200),
                        itemCount: selectedFiles.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Expanded(
                                child: Image.file(
                                  selectedFiles[index],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                              Padding(
                                padding: getPadding(top: 3),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      defualtImage = selectedFiles[index];
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      35.00,
                                    ),
                                    // width: getHorizontalSize(
                                    //   69.00,
                                    // ),
                                    decoration: BoxDecoration(
                                        color:
                                            defualtImage == selectedFiles[index]
                                                ? Colors.transparent
                                                : ColorConstant.gray500,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            5.00,
                                          ),
                                        ),
                                        border: Border.all(
                                            color: ColorConstant.gray500)),
                                    child: Text(
                                      defualtImage == selectedFiles[index]
                                          ? tr("main")
                                          : tr("choose"),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color:
                                            defualtImage == selectedFiles[index]
                                                ? ColorConstant.gray500
                                                : ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ))
                  : const SizedBox()
            ],
          ),
        ),
      ),
      Step(
        state: currentStep > 4 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 4,
        title: Text(
          tr("finish"),
          style: const TextStyle(fontSize: 12),
        ),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 330,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = filterController.paymentPackageItems.length - 1;
                    i >= 0;
                    i--)
                  getPaymentPackageWidget(
                      payment: filterController.paymentPackageItems[i]),
              ],
            ),
          ),
        ),
      ),
    ];
  }

  Widget getPaymentPackageWidget({required PaymentPackageEntity payment}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstant.gray500,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "${payment.paymentPackageName!} | ${payment.paymentArabicName!}",
                  style: TextStyle(
                    fontSize: getFontSize(
                      20,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    color: ColorConstant.whiteA700,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int i = 0;
                        i < payment.paymentPackageFeatures!.length;
                        i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Icon(
                                Icons.check,
                                color: ColorConstant.gray500,
                                size: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              payment.paymentPackageFeatures![i],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                letterSpacing: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                          color: selectedPaymentPackage == payment
                              ? ColorConstant.gray500
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                selectedPaymentPackage = payment;
                              });
                            },
                            child: Text(
                              selectedPaymentPackage == payment
                                  ? "Selected"
                                  : 'Select Plan',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: selectedPaymentPackage == payment
                                      ? Colors.white
                                      : ColorConstant.gray500,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      payment.paymentPackagePrice == "Free"
                          ? payment.paymentPackagePrice!
                          : payment.paymentPackagePrice! + Constants.currency,
                      style: TextStyle(
                          color: payment.paymentPackagePrice == "Free"
                              ? Colors.green
                              : Colors.amber,
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future addADS() async {
    try {
      await uploadImage();
      CollectionReference addNew = FirebaseFirestore.instance.collection("ADS");
      return await addNew.doc().set(({
            "adsId": uuid.v1(),
            "adsDateTime": getTime(DateTime.now()),
            "adsUser": {
              "userId": userController.myUser.value.userId!,
              "userName":
                  "${userController.myUser.value.userFName} ${userController.myUser.value.userLName}",
              "userPhone": userController.myUser.value.userPhone
            },
            "packageId": selectedPaymentPackage!.paymentPackageId.toString(),
            "isActive": "true",
            "numberOfSeats": numberOfSeatsController.text,
            "traveledDistance": traveledDistanceController.text,
            "price": priceController.text,
            "subject": subjectController.text,
            "description": descriptionController.text,
            "images": uploadedFiles,
            "mainImage": defualtImageName,
            "category": {
              "categoryId": selectedCategory?.categoryId.toString(),
              "categoryName": selectedCategory?.categoryName.toString(),
              "categoryArabicName":
                  selectedCategory?.categoryArabicName.toString(),
            },
            "carTransmition": {
              "transId": selectedCarTransmition?.transId.toString(),
              "transName": selectedCarTransmition?.transName.toString(),
              "transArabicName":
                  selectedCarTransmition?.transArabicName.toString(),
            },
            "city": {
              "cityId": selectedCity?.cityId.toString(),
              "cityName": selectedCity?.cityName.toString(),
              "cityArabicName": selectedCity?.cityArabicName.toString(),
            },
            "color": {
              "colorId": selectedColor?.colorId.toString(),
              "colorName": selectedColor?.colorName.toString(),
              "colorArabicName": selectedColor?.colorArabicName.toString(),
            },
            "enginCapacity": {
              "capacityId": selectedEnginCapacity?.capacityId.toString(),
              "capacityName": selectedEnginCapacity?.capacityName.toString(),
              "capacityArabicName":
                  selectedEnginCapacity?.capacityArabicName.toString(),
            },
            "fuelType": {
              "fuelId": selectedFuelType?.fuelId.toString(),
              "fuelName": selectedFuelType?.fuelName.toString(),
              "fuelArabicName": selectedFuelType?.fuelArabicName.toString(),
            },
            "wheelMovement": {
              "wheelMovementId":
                  selectedWheelMovement?.wheelMovementId.toString(),
              "wheelMovementName":
                  selectedWheelMovement?.wheelMovementName.toString(),
              "wheelMovementArabicName":
                  selectedWheelMovement?.wheelMovementArabicName.toString(),
            },
            "furnishing": {
              "furnishingId": selectedFurnishing?.furnishingId.toString(),
              "furnishingName": selectedFurnishing?.furnishingName.toString(),
              "furnishingArabicName":
                  selectedFurnishing?.furnishingArabicName.toString(),
            },
            "mawater": {
              "mawaterId": selectedMawater?.mawaterId.toString(),
              "mawaterName": selectedMawater?.mawaterName.toString(),
              "mawaterArabicName": selectedMawater?.mawaterArabicName.toString()
            },
            "mawaterStatus": {
              "statusId": selectedMawaterStatus?.statusId.toString(),
              "statusName": selectedMawaterStatus?.statusName.toString(),
              "statusArabicName":
                  selectedMawaterStatus?.statusArabicName.toString(),
            },
            "mawaterStructure": {
              "structureId": selectedMawaterStructure?.structureId.toString(),
              "structureName":
                  selectedMawaterStructure?.structureName.toString(),
              "structureArabicName":
                  selectedMawaterStructure?.structureArabicName.toString(),
            },
            "mawaterType": {
              "mTypeId": selectedMawaterType?.mTypeId.toString(),
              "mTypeName": selectedMawaterType?.mTypeName.toString(),
              "mTypeArabicName":
                  selectedMawaterType?.mTypeArabicName.toString(),
            },
            "year": {
              "yearId": selectedYear?.yearId.toString(),
              "yearName": selectedYear?.yearName.toString(),
              "yearArabicName": selectedYear?.yearArabicName.toString(),
            }
          }));
    } catch (e) {
      print(e);
    }
  }
}
