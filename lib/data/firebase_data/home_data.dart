import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mawater_qatar/main.dart';
import 'package:mawater_qatar/models/entity/ads_entity.dart';
import 'package:mawater_qatar/models/entity/banne_entity.dart';
import 'package:mawater_qatar/models/entity/car_transmition%20entity.dart';
import 'package:mawater_qatar/models/entity/category_entity.dart';
import 'package:mawater_qatar/models/entity/city_entity.dart';
import 'package:mawater_qatar/models/entity/color_entity.dart';
import 'package:mawater_qatar/models/entity/engin_capacity_entity.dart';
import 'package:mawater_qatar/models/entity/fuel_type_entity.dart';
import 'package:mawater_qatar/models/entity/furnishing_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_status_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_structure_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_type_entity.dart';
import 'package:mawater_qatar/models/entity/user_entity.dart';
import 'package:mawater_qatar/models/entity/wheel_movement_entity.dart';
import 'package:mawater_qatar/models/entity/year_entity.dart';

Future<List<AdsEntity>> getADS() async {
  List<AdsEntity> dataList = [];
  if (homeController.selectedMawater.mawaterId == null) {
    await FirebaseFirestore.instance
        .collection('ADS')
        .where('category.categoryId',
            isEqualTo: homeController.selectedCategory.categoryId)
        .get()
        .then((data) async {
      if (data.docs.isNotEmpty) {
        dataList = thenFunctionOfGetADS(data);
      }
    });
  } else {
    await FirebaseFirestore.instance
        .collection('ADS')
        .where('category.categoryId',
            isEqualTo: homeController.selectedCategory.categoryId)
        .where("mawater.mawaterId",
            isEqualTo: homeController.selectedMawater.mawaterId)
        .get()
        .then((data) async {
      if (data.docs.isNotEmpty) {
        dataList = thenFunctionOfGetADS(data);
      }
    });
  }
  return dataList;
}

Future<List<BanneEntity>> getBanner() async {
  List<BanneEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('banner')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((doc) => BanneEntity(
              bannerId: doc["bannerId"], bannerImage: doc["bannerImage"]))
          .toList();
    }
  });
  return dataList;
}

List<AdsEntity> thenFunctionOfGetADS(QuerySnapshot<Map<String, dynamic>> data) {
  List<AdsEntity> dataList = [];
  dataList = data.docs
      .map(
        (element) => AdsEntity(
            isActive: element["isActive"],
            adsDateTime: element["adsDateTime"],
            adsId: element["adsId"],
            description: element["description"],
            mainImage: element["mainImage"],
            subject: element["subject"],
            images: element["images"].cast<String>(),
            numberOfSeats: element["numberOfSeats"],
            price: element["price"],
            traveledDistance: element["traveledDistance"],
            carTransmition: CarTransmitionEntity(
              transArabicName: element["carTransmition"]["transArabicName"],
              transId: element["carTransmition"]["transId"],
              transName: element["carTransmition"]["transName"],
            ),
            category: CategoryEntity(
                categoryArabicName: element["category"]["categoryArabicName"],
                categoryId: element["category"]["categoryId"],
                categoryName: element["category"]["categoryName"]),
            city: CityEntity(
                cityArabicName: element["city"]["cityArabicName"],
                cityId: element["city"]["cityId"],
                cityName: element["city"]["cityName"]),
            color: ColorEntity(
                colorArabicName: element["color"]["colorArabicName"],
                colorId: element["color"]["colorId"],
                colorName: element["color"]["colorName"]),
            enginCapacity: EnginCapacityEntity(
                capacityArabicName: element["enginCapacity"]
                    ["capacityArabicName"],
                capacityId: element["enginCapacity"]["capacityId"],
                capacityName: element["enginCapacity"]["capacityName"]),
            fuelType: FuelTypeEntity(
                fuelArabicName: element["fuelType"]["fuelArabicName"],
                fuelId: element["fuelType"]["fuelId"],
                fuelName: element["fuelType"]["fuelName"]),
            furnishing: FurnishingEntity(
                furnishingArabicName: element["furnishing"]
                    ["furnishingArabicName"],
                furnishingId: element["furnishing"]["furnishingId"],
                furnishingName: element["furnishing"]["furnishingName"]),
            mawater: MawaterEntity(
              mawaterArabicName: element["mawater"]["mawaterArabicName"],
              mawaterId: element["mawater"]["mawaterId"],
              mawaterName: element["mawater"]["mawaterName"],
            ),
            mawaterStatus: MawaterStatusEntity(
                statusArabicName: element["mawaterStatus"]["statusArabicName"],
                statusId: element["mawaterStatus"]["statusId"],
                statusName: element["mawaterStatus"]["statusName"]),
            mawaterStructure: MawaterStructureEntity(
                structureArabicName: element["mawaterStructure"]
                    ["structureArabicName"],
                structureId: element["mawaterStructure"]["structureId"],
                structureName: element["mawaterStructure"]["structureName"]),
            mawaterType: MawaterTypeEntity(
                mTypeArabicName: element["mawaterType"]["mTypeArabicName"],
                mTypeId: element["mawaterType"]["mTypeId"],
                mTypeName: element["mawaterType"]["mTypeName"]),
            year: YearEntity(
              yearArabicName: element["year"]["yearArabicName"],
              yearId: element["year"]["yearId"],
              yearName: element["year"]["yearName"],
            ),
            wheelMovement: WheelMovementEntity(
                wheelMovementArabicName: element["wheelMovement"]
                    ["wheelMovementArabicName"],
                wheelMovementId: element["wheelMovement"]["wheelMovementId"],
                wheelMovementName: element["wheelMovement"]
                    ["wheelMovementName"]),
            user: UserEntity(
              userFName: element["adsUser"]["userName"],
              userId: element["adsUser"]["userId"],
              userPhone: element["adsUser"]["userPhone"],
            )),
      )
      .toList();
  return dataList;
}
