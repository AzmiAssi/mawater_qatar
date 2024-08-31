// ignore_for_file: invalid_use_of_protected_member

import 'package:get/get.dart';
import 'package:mawater_qatar/data/firebase_data/filter_data.dart';
import 'package:mawater_qatar/data/firebase_data/home_data.dart';
import 'package:mawater_qatar/models/entity/ads_entity.dart';
import 'package:mawater_qatar/models/entity/banne_entity.dart';
import 'package:mawater_qatar/models/entity/category_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_entity.dart';

class HomeController extends GetxController {
  RxList<CategoryEntity> categoryItems = RxList<CategoryEntity>();
  CategoryEntity selectedCategory =
      CategoryEntity(categoryId: "d7cead21-6778-4300-95ad-d9eb095fe112");
  MawaterEntity selectedMawater = MawaterEntity();
  RxList<AdsEntity> ads = RxList<AdsEntity>().obs();
  RxList<AdsEntity> sourceADS = RxList<AdsEntity>();
  RxList<MawaterEntity> mawater = RxList<MawaterEntity>();
  RxList<BanneEntity> banner = RxList<BanneEntity>();

  Future<void> fetchCategoryData() async {
    List<CategoryEntity> items = await getCategories();
    categoryItems.assignAll(items);
  }

  Future<void> fetchMawaterData() async {
    List<MawaterEntity> items = await getMawater();
    mawater.assignAll(items);
  }

  Future<void> fetchMawaterDataByCategoryId(String category) async {
    List<MawaterEntity> items = await getMawaterByCategoryId(category);
    mawater.assignAll(items);
  }

  Future<void> fetchADS() async {
    List<AdsEntity> items = await getADS();
    ads.assignAll(items);
    sourceADS.assignAll(items);
  }

  Future<void> fetchBanner() async {
    List<BanneEntity> items = await getBanner();
    banner.assignAll(items);
  }

  void searchADS(String keyWord) {
    if (keyWord.isEmpty) {
      ads.clear();
      ads.assignAll(sourceADS);
    } else {
      var newAds = sourceADS.value.where((item) {
        return item.carTransmition!.transArabicName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.carTransmition!.transName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.enginCapacity!.capacityName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.enginCapacity!.capacityName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.fuelType!.fuelArabicName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.fuelType!.fuelArabicName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.category!.categoryArabicName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.category!.categoryName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.description!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.price!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.furnishing!.furnishingArabicName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.furnishing!.furnishingName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.mawater!.mawaterArabicName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.mawater!.mawaterName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.mawaterStatus!.statusArabicName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.mawaterStatus!.statusName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.mawaterStructure!.structureArabicName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.mawaterStructure!.structureName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.mawaterType!.mTypeArabicName!
                .toLowerCase()
                .trim()
                .contains(keyWord.toLowerCase().trim()) ||
            item.mawaterType!.mTypeName!.toLowerCase().trim().contains(keyWord.toLowerCase().trim()) ||
            item.subject!.toLowerCase().trim().contains(keyWord.toLowerCase().trim()) ||
            item.numberOfSeats!.toLowerCase().trim().contains(keyWord.toLowerCase().trim()) ||
            item.year!.yearName!.toLowerCase().trim().contains(keyWord.toLowerCase().trim()) ||
            item.year!.yearArabicName!.toLowerCase().trim().contains(keyWord.toLowerCase().trim()) ||
            item.wheelMovement!.wheelMovementArabicName!.toLowerCase().trim().contains(keyWord.toLowerCase().trim()) ||
            item.wheelMovement!.wheelMovementName!.toLowerCase().trim().contains(keyWord.toLowerCase().trim()) ||
            item.traveledDistance!.toLowerCase().trim().contains(keyWord.toLowerCase().trim());
      }).toList();
      ads.clear();
      ads.assignAll(newAds);
    }
  }

  Future<void> fetchHomeData() async {
    if (categoryItems.isEmpty) await fetchCategoryData();
    if (ads.isEmpty) await fetchADS();
    if (mawater.isEmpty) await fetchMawaterData();
    if (banner.isEmpty) await fetchBanner();
  }

  void setSelectedCategory({required CategoryEntity selected}) {
    selectedCategory = selected;
  }

  void setSelectedMawater({required MawaterEntity selected}) {
    selectedMawater = selected;
  }
}
