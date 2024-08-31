import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mawater_qatar/models/entity/car_transmition%20entity.dart';
import 'package:mawater_qatar/models/entity/category_entity.dart';
import 'package:mawater_qatar/models/entity/city_entity.dart';
import 'package:mawater_qatar/models/entity/color_entity.dart';
import 'package:mawater_qatar/models/entity/country_entity.dart';
import 'package:mawater_qatar/models/entity/engin_capacity_entity.dart';
import 'package:mawater_qatar/models/entity/favourite_entity.dart';
import 'package:mawater_qatar/models/entity/fuel_type_entity.dart';
import 'package:mawater_qatar/models/entity/furnishing_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_status_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_structure_entity.dart';
import 'package:mawater_qatar/models/entity/mawater_type_entity.dart';
import 'package:mawater_qatar/models/entity/payment_package_entity.dart';
import 'package:mawater_qatar/models/entity/seen_by_entity.dart';
import 'package:mawater_qatar/models/entity/sub_category_entity.dart';
import 'package:mawater_qatar/models/entity/user_payment_entity.dart';
import 'package:mawater_qatar/models/entity/wheel_movement_entity.dart';
import 'package:mawater_qatar/models/entity/year_entity.dart';

Future<List<CategoryEntity>> getCategories() async {
  List<CategoryEntity> categories = [];
  await FirebaseFirestore.instance
      .collection('category')
      .orderBy('sortNumber')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      categories = data.docs
          .map((doc) => CategoryEntity(
              categoryArabicName: doc['categoryArabicName'],
              categoryId: doc['categoryId'],
              categoryImage: doc['categoryImage'],
              categoryName: doc['categoryName'],
              isActive: doc['isActive'],
              isSpecial: doc['isSpecial']))
          .toList();
    }
  });
  return categories;
}

Future<List<CarTransmitionEntity>> getCarTransmission() async {
  List<CarTransmitionEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('carTransmission')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((doc) => CarTransmitionEntity(
              actions: doc["actions"],
              transArabicName: doc["transArabicName"],
              transId: doc["transId"],
              transName: doc["transName"]))
          .toList();
    }
  });
  return dataList;
}

Future<List<CityEntity>> getCity() async {
  List<CityEntity> dataList = [];
  await FirebaseFirestore.instance.collection('city').get().then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => CityEntity(
              cityArabicName: element["cityArabicName"],
              cityId: element["cityId"],
              countryId: element["countryId"],
              cityName: element["cityName"]))
          .toList();
    }
  });
  return dataList;
}

Future<List<ColorEntity>> getColors() async {
  List<ColorEntity> dataList = [];
  await FirebaseFirestore.instance.collection('color').get().then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => ColorEntity(
              colorArabicName: element["colorArabicName"],
              colorId: element["colorId"],
              colorName: element["colorName"]))
          .toList();
    }
  });
  return dataList;
}

Future<List<CountryEntity>> getCountry() async {
  List<CountryEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('country')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => CountryEntity(
              countryArabicName: element["countryArabicName"],
              countryId: element["countryId"],
              countryName: element["countryName"]))
          .toList();
    }
  });
  return dataList;
}

Future<List<EnginCapacityEntity>> getEngineCapacity() async {
  List<EnginCapacityEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('engineCapacity')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => EnginCapacityEntity(
              capacityArabicName: element["capacityArabicName"],
              capacityId: element["capacityId"],
              isActive: element["isActive"],
              capacityName: element["capacityName"]))
          .toList();
    }
  });
  return dataList;
}

Future<List<FavouriteEntity>> getFavourite() async {
  List<FavouriteEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('favourite')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => FavouriteEntity(
                favouriteId: element["favouriteId"],
                productId: element["productId"],
                userId: element["userId"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<FuelTypeEntity>> getFuelType() async {
  List<FuelTypeEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('fuelType')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => FuelTypeEntity(
                fuelArabicName: element["fuelArabicName"],
                fuelId: element["fuelId"],
                fuelName: element["fuelName"],
                isActive: element["isActive"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<FurnishingEntity>> getFurnishing() async {
  List<FurnishingEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('furnishing')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => FurnishingEntity(
                furnishingArabicName: element["furnishingArabicName"],
                furnishingId: element["furnishingId"],
                furnishingName: element["furnishingName"],
                isActive: element["isActive"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<MawaterEntity>> getMawater() async {
  List<MawaterEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('mawater')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => MawaterEntity(
                mawaterArabicName: element["mawaterArabicName"],
                mawaterId: element["mawaterId"],
                mawaterImage: element["mawaterImage"],
                mawaterName: element["mawaterName"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<MawaterEntity>> getMawaterByCategoryId(String categoryId) async {
  List<MawaterEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('mawater')
      .where("catergoryId", isEqualTo: categoryId)
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => MawaterEntity(
                mawaterArabicName: element["mawaterArabicName"],
                mawaterId: element["mawaterId"],
                mawaterImage: element["mawaterImage"],
                mawaterName: element["mawaterName"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<MawaterStatusEntity>> getMawaterStatus() async {
  List<MawaterStatusEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('mawaterStatus')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => MawaterStatusEntity(
                isActive: element["isActive"],
                statusArabicName: element["statusArabicName"],
                statusId: element["statusId"],
                statusName: element["statusName"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<MawaterStructureEntity>> getMawaterStructure() async {
  List<MawaterStructureEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('mawaterStructure')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => MawaterStructureEntity(
                isActive: element["isActive"],
                structureArabicName: element["structureArabicName"],
                structureId: element["structureId"],
                structureName: element["structureName"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<MawaterTypeEntity>> getMawaterType() async {
  List<MawaterTypeEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('mawaterType')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => MawaterTypeEntity(
                mTypeArabicName: element["mTypeArabicName"],
                mTypeId: element["mTypeId"],
                mTypeName: element["mTypeName"],
                mawaterId: element["mawaterId"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<SeenByEntity>> getSeenBy() async {
  List<SeenByEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('seenBy')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => SeenByEntity(
                productId: element["productId"],
                seenAt: element["seenAt"],
                seenById: element["seenById"],
                userId: element["userId"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<SubCategoryEntity>> getSubCategory() async {
  List<SubCategoryEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('subCategory')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => SubCategoryEntity(
                categoryId: element["categoryId"],
                subArabicName: element["subArabicName"],
                subId: element["subId"],
                subImage: element["subImage"],
                subName: element["subName"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<UserPaymentEntity>> getUserPayment() async {
  List<UserPaymentEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('userPayment')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => UserPaymentEntity(
                paymentAt: element["paymentAt"],
                paymentId: element["paymentId"],
                userId: element["userId"],
                value: element["value"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<YearEntity>> getYear() async {
  List<YearEntity> dataList = [];
  await FirebaseFirestore.instance.collection('year').get().then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => YearEntity(
                isActive: element["isActive"],
                yearArabicName: element["yearArabicName"],
                yearId: element["yearId"],
                yearName: element["yearName"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<WheelMovementEntity>> getWheelMovement() async {
  List<WheelMovementEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('wheelMovement')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => WheelMovementEntity(
                wheelMovementArabicName: element["wheelMovementArabicName"],
                wheelMovementId: element["wheelMovementId"],
                wheelMovementName: element["wheelMovementName"],
              ))
          .toList();
    }
  });
  return dataList;
}

Future<List<PaymentPackageEntity>> getPaymentPackage() async {
  List<PaymentPackageEntity> dataList = [];
  await FirebaseFirestore.instance
      .collection('paymentPackage')
      .get()
      .then((data) async {
    if (data.docs.isNotEmpty) {
      dataList = data.docs
          .map((element) => PaymentPackageEntity(
              paymentArabicName: element["paymentArabicName"],
              paymentPackageDescription: element["paymentPackageDescription"],
              paymentPackageFeatures:
                  element["paymentPackageFeatures"].cast<String>(),
              paymentPackageId: element["paymentPackageId"],
              paymentPackageName: element["paymentPackageName"],
              paymentPackagePrice: element["paymentPackagePrice"].toString()))
          .toList();
    }
  });
  return dataList;
}
