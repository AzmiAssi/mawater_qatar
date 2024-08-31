import 'package:get/get.dart';
import 'package:mawater_qatar/data/firebase_data/filter_data.dart';
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
import 'package:mawater_qatar/models/entity/payment_package_entity.dart';
import 'package:mawater_qatar/models/entity/wheel_movement_entity.dart';
import 'package:mawater_qatar/models/entity/year_entity.dart';

class FilterController extends GetxController {
  RxList<CategoryEntity> categoryItems = RxList<CategoryEntity>();
  RxList<CarTransmitionEntity> carTransmitionItems =
      RxList<CarTransmitionEntity>();
  RxList<CityEntity> cityItems = RxList<CityEntity>();
  RxList<ColorEntity> colorItems = RxList<ColorEntity>();
  RxList<CountryEntity> countryItems = RxList<CountryEntity>();
  RxList<EnginCapacityEntity> enginCapacityItems =
      RxList<EnginCapacityEntity>();
  RxList<FuelTypeEntity> fuelTypeItems = RxList<FuelTypeEntity>();
  RxList<FurnishingEntity> furnishingItems = RxList<FurnishingEntity>();
  RxList<MawaterEntity> mawaterItems = RxList<MawaterEntity>();
  RxList<MawaterStatusEntity> mawaterStatusItems =
      RxList<MawaterStatusEntity>();
  RxList<MawaterStructureEntity> mawaterStructureItems =
      RxList<MawaterStructureEntity>();
  RxList<MawaterTypeEntity> mawaterTypeItems = RxList<MawaterTypeEntity>();
  RxList<YearEntity> yearItems = RxList<YearEntity>();
  RxList<WheelMovementEntity> wheelMovementItems =
      RxList<WheelMovementEntity>();

  RxList<PaymentPackageEntity> paymentPackageItems =
      RxList<PaymentPackageEntity>();

  Future<void> fetchCategoryData() async {
    List<CategoryEntity> items = await getCategories();
    categoryItems.assignAll(items);
  }

  Future<void> fetchCarTransmitionData() async {
    List<CarTransmitionEntity> items = await getCarTransmission();
    carTransmitionItems.assignAll(items);
  }

  Future<void> fetchCityData() async {
    List<CityEntity> items = await getCity();
    cityItems.assignAll(items);
  }

  Future<void> fetchColorData() async {
    List<ColorEntity> items = await getColors();
    colorItems.assignAll(items);
  }

  Future<void> fetchCountryData() async {
    List<CountryEntity> items = await getCountry();
    countryItems.assignAll(items);
  }

  Future<void> fetchEngineCapacityData() async {
    List<EnginCapacityEntity> items = await getEngineCapacity();
    enginCapacityItems.assignAll(items);
  }

  Future<void> fetchFuelTypeData() async {
    List<FuelTypeEntity> items = await getFuelType();
    fuelTypeItems.assignAll(items);
  }

  Future<void> fetchFurnishing() async {
    List<FurnishingEntity> items = await getFurnishing();
    furnishingItems.assignAll(items);
  }

  Future<void> fetchMawater() async {
    List<MawaterEntity> items = await getMawater();
    mawaterItems.assignAll(items);
  }

  Future<void> fetchMawaterStatus() async {
    List<MawaterStatusEntity> items = await getMawaterStatus();
    mawaterStatusItems.assignAll(items);
  }

  Future<void> fetchMawaterStructure() async {
    List<MawaterStructureEntity> items = await getMawaterStructure();
    mawaterStructureItems.assignAll(items);
  }

  Future<void> fetchMawaterType() async {
    List<MawaterTypeEntity> items = await getMawaterType();
    mawaterTypeItems.assignAll(items);
  }

  Future<void> fetchYear() async {
    List<YearEntity> items = await getYear();
    yearItems.assignAll(items);
  }

  Future<void> fetchWheelMovement() async {
    List<WheelMovementEntity> items = await getWheelMovement();
    wheelMovementItems.assignAll(items);
  }

  Future<void> fetchPaymentPackage() async {
    List<PaymentPackageEntity> items = await getPaymentPackage();
    paymentPackageItems.assignAll(items);
  }

  Future<void> fetchDataStep1() async {
    if (categoryItems.isEmpty) await fetchCategoryData();
    if (carTransmitionItems.isEmpty) await fetchCarTransmitionData();
    if (cityItems.isEmpty) await fetchCityData();
    if (colorItems.isEmpty) await fetchColorData();
    if (enginCapacityItems.isEmpty) await fetchEngineCapacityData();
    if (fuelTypeItems.isEmpty) await fetchFuelTypeData();
    if (wheelMovementItems.isEmpty) await fetchWheelMovement();
  }

  Future<void> fetchDataStep2() async {
    if (furnishingItems.isEmpty) await fetchFurnishing();
    if (mawaterItems.isEmpty) await fetchMawater();
    if (mawaterStatusItems.isEmpty) await fetchMawaterStatus();
    if (mawaterStructureItems.isEmpty) await fetchMawaterStructure();
    if (mawaterTypeItems.isEmpty) await fetchMawaterType();
    if (yearItems.isEmpty) await fetchYear();
    if (paymentPackageItems.isEmpty) await fetchPaymentPackage();
  }

  Future<void> fetchAllData() async {
    if (categoryItems.isEmpty) await fetchCategoryData();
    if (carTransmitionItems.isEmpty) await fetchCarTransmitionData();
    if (cityItems.isEmpty) await fetchCityData();
    if (colorItems.isEmpty) await fetchColorData();
    if (enginCapacityItems.isEmpty) await fetchEngineCapacityData();
    if (fuelTypeItems.isEmpty) await fetchFuelTypeData();
    if (wheelMovementItems.isEmpty) await fetchWheelMovement();
    if (furnishingItems.isEmpty) await fetchFurnishing();
    if (mawaterItems.isEmpty) await fetchMawater();
    if (mawaterStatusItems.isEmpty) await fetchMawaterStatus();
    if (mawaterStructureItems.isEmpty) await fetchMawaterStructure();
    if (mawaterTypeItems.isEmpty) await fetchMawaterType();
    if (yearItems.isEmpty) await fetchYear();
    //if (paymentPackageItems.isEmpty) await fetchPaymentPackage();
  }

  Future<void> refreshFilter() async {
    await fetchCategoryData();
    await fetchCarTransmitionData();
    await fetchCityData();
    await fetchColorData();
    await fetchEngineCapacityData();
    await fetchFuelTypeData();
    await fetchWheelMovement();
    await fetchFurnishing();
    await fetchMawater();
    await fetchMawaterStatus();
    await fetchMawaterStructure();
    await fetchMawaterType();
    await fetchYear();
  }
}
