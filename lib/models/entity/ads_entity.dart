// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

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

class AdsEntity {
  bool? isActive;
  String? adsDateTime;
  String? adsId;
  String? mainImage;
  String? numberOfSeats;
  String? price;
  String? traveledDistance;
  String? description;
  String? subject;
  CarTransmitionEntity? carTransmition;
  CategoryEntity? category;
  CityEntity? city;
  ColorEntity? color;
  EnginCapacityEntity? enginCapacity;
  FuelTypeEntity? fuelType;
  FurnishingEntity? furnishing;
  List<String>? images;
  MawaterEntity? mawater;
  MawaterStatusEntity? mawaterStatus;
  MawaterStructureEntity? mawaterStructure;
  MawaterTypeEntity? mawaterType;
  WheelMovementEntity? wheelMovement;
  YearEntity? year;
  UserEntity? user;
  AdsEntity({
    this.isActive,
    this.adsDateTime,
    this.adsId,
    this.mainImage,
    this.numberOfSeats,
    this.price,
    this.traveledDistance,
    this.description,
    this.subject,
    this.carTransmition,
    this.category,
    this.city,
    this.color,
    this.enginCapacity,
    this.fuelType,
    this.furnishing,
    this.images,
    this.mawater,
    this.mawaterStatus,
    this.mawaterStructure,
    this.mawaterType,
    this.wheelMovement,
    this.year,
    this.user,
  });

  AdsEntity copyWith({
    bool? isActive,
    String? adsDateTime,
    String? adsId,
    String? mainImage,
    String? numberOfSeats,
    String? price,
    String? traveledDistance,
    String? description,
    String? subject,
    CarTransmitionEntity? carTransmition,
    CategoryEntity? category,
    CityEntity? city,
    ColorEntity? color,
    EnginCapacityEntity? enginCapacity,
    FuelTypeEntity? fuelType,
    FurnishingEntity? furnishing,
    List<String>? images,
    MawaterEntity? mawater,
    MawaterStatusEntity? mawaterStatus,
    MawaterStructureEntity? mawaterStructure,
    MawaterTypeEntity? mawaterType,
    WheelMovementEntity? wheelMovement,
    YearEntity? year,
    UserEntity? user,
  }) {
    return AdsEntity(
      isActive: isActive ?? this.isActive,
      adsDateTime: adsDateTime ?? this.adsDateTime,
      adsId: adsId ?? this.adsId,
      mainImage: mainImage ?? this.mainImage,
      numberOfSeats: numberOfSeats ?? this.numberOfSeats,
      price: price ?? this.price,
      traveledDistance: traveledDistance ?? this.traveledDistance,
      description: description ?? this.description,
      subject: subject ?? this.subject,
      carTransmition: carTransmition ?? this.carTransmition,
      category: category ?? this.category,
      city: city ?? this.city,
      color: color ?? this.color,
      enginCapacity: enginCapacity ?? this.enginCapacity,
      fuelType: fuelType ?? this.fuelType,
      furnishing: furnishing ?? this.furnishing,
      images: images ?? this.images,
      mawater: mawater ?? this.mawater,
      mawaterStatus: mawaterStatus ?? this.mawaterStatus,
      mawaterStructure: mawaterStructure ?? this.mawaterStructure,
      mawaterType: mawaterType ?? this.mawaterType,
      wheelMovement: wheelMovement ?? this.wheelMovement,
      year: year ?? this.year,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isActive': isActive,
      'adsDateTime': adsDateTime,
      'adsId': adsId,
      'mainImage': mainImage,
      'numberOfSeats': numberOfSeats,
      'price': price,
      'traveledDistance': traveledDistance,
      'description': description,
      'subject': subject,
      'carTransmition': carTransmition?.toMap(),
      'category': category?.toMap(),
      'city': city?.toMap(),
      'color': color?.toMap(),
      'enginCapacity': enginCapacity?.toMap(),
      'fuelType': fuelType?.toMap(),
      'furnishing': furnishing?.toMap(),
      'images': images,
      'mawater': mawater?.toMap(),
      'mawaterStatus': mawaterStatus?.toMap(),
      'mawaterStructure': mawaterStructure?.toMap(),
      'mawaterType': mawaterType?.toMap(),
      'wheelMovement': wheelMovement?.toMap(),
      'year': year?.toMap(),
      'user': user?.toMap(),
    };
  }

  factory AdsEntity.fromMap(Map<String, dynamic> map) {
    return AdsEntity(
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
      adsDateTime:
          map['adsDateTime'] != null ? map['adsDateTime'] as String : null,
      adsId: map['adsId'] != null ? map['adsId'] as String : null,
      mainImage: map['mainImage'] != null ? map['mainImage'] as String : null,
      numberOfSeats:
          map['numberOfSeats'] != null ? map['numberOfSeats'] as String : null,
      price: map['price'] != null ? map['price'] as String : null,
      traveledDistance: map['traveledDistance'] != null
          ? map['traveledDistance'] as String
          : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      subject: map['subject'] != null ? map['subject'] as String : null,
      carTransmition: map['carTransmition'] != null
          ? CarTransmitionEntity.fromMap(
              map['carTransmition'] as Map<String, dynamic>)
          : null,
      category: map['category'] != null
          ? CategoryEntity.fromMap(map['category'] as Map<String, dynamic>)
          : null,
      city: map['city'] != null
          ? CityEntity.fromMap(map['city'] as Map<String, dynamic>)
          : null,
      color: map['color'] != null
          ? ColorEntity.fromMap(map['color'] as Map<String, dynamic>)
          : null,
      enginCapacity: map['enginCapacity'] != null
          ? EnginCapacityEntity.fromMap(
              map['enginCapacity'] as Map<String, dynamic>)
          : null,
      fuelType: map['fuelType'] != null
          ? FuelTypeEntity.fromMap(map['fuelType'] as Map<String, dynamic>)
          : null,
      furnishing: map['furnishing'] != null
          ? FurnishingEntity.fromMap(map['furnishing'] as Map<String, dynamic>)
          : null,
      images: map['images'] != null
          ? List<String>.from((map['images'] as List<String>))
          : null,
      mawater: map['mawater'] != null
          ? MawaterEntity.fromMap(map['mawater'] as Map<String, dynamic>)
          : null,
      mawaterStatus: map['mawaterStatus'] != null
          ? MawaterStatusEntity.fromMap(
              map['mawaterStatus'] as Map<String, dynamic>)
          : null,
      mawaterStructure: map['mawaterStructure'] != null
          ? MawaterStructureEntity.fromMap(
              map['mawaterStructure'] as Map<String, dynamic>)
          : null,
      mawaterType: map['mawaterType'] != null
          ? MawaterTypeEntity.fromMap(
              map['mawaterType'] as Map<String, dynamic>)
          : null,
      wheelMovement: map['wheelMovement'] != null
          ? WheelMovementEntity.fromMap(
              map['wheelMovement'] as Map<String, dynamic>)
          : null,
      year: map['year'] != null
          ? YearEntity.fromMap(map['year'] as Map<String, dynamic>)
          : null,
      user: map['user'] != null
          ? UserEntity.fromMap(map['user'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AdsEntity.fromJson(String source) =>
      AdsEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AdsEntity(isActive: $isActive, adsDateTime: $adsDateTime, adsId: $adsId, mainImage: $mainImage, numberOfSeats: $numberOfSeats, price: $price, traveledDistance: $traveledDistance, description: $description, subject: $subject, carTransmition: $carTransmition, category: $category, city: $city, color: $color, enginCapacity: $enginCapacity, fuelType: $fuelType, furnishing: $furnishing, images: $images, mawater: $mawater, mawaterStatus: $mawaterStatus, mawaterStructure: $mawaterStructure, mawaterType: $mawaterType, wheelMovement: $wheelMovement, year: $year, user: $user)';
  }

  @override
  bool operator ==(covariant AdsEntity other) {
    if (identical(this, other)) return true;

    return other.isActive == isActive &&
        other.adsDateTime == adsDateTime &&
        other.adsId == adsId &&
        other.mainImage == mainImage &&
        other.numberOfSeats == numberOfSeats &&
        other.price == price &&
        other.traveledDistance == traveledDistance &&
        other.description == description &&
        other.subject == subject &&
        other.carTransmition == carTransmition &&
        other.category == category &&
        other.city == city &&
        other.color == color &&
        other.enginCapacity == enginCapacity &&
        other.fuelType == fuelType &&
        other.furnishing == furnishing &&
        listEquals(other.images, images) &&
        other.mawater == mawater &&
        other.mawaterStatus == mawaterStatus &&
        other.mawaterStructure == mawaterStructure &&
        other.mawaterType == mawaterType &&
        other.wheelMovement == wheelMovement &&
        other.year == year &&
        other.user == user;
  }

  @override
  int get hashCode {
    return isActive.hashCode ^
        adsDateTime.hashCode ^
        adsId.hashCode ^
        mainImage.hashCode ^
        numberOfSeats.hashCode ^
        price.hashCode ^
        traveledDistance.hashCode ^
        description.hashCode ^
        subject.hashCode ^
        carTransmition.hashCode ^
        category.hashCode ^
        city.hashCode ^
        color.hashCode ^
        enginCapacity.hashCode ^
        fuelType.hashCode ^
        furnishing.hashCode ^
        images.hashCode ^
        mawater.hashCode ^
        mawaterStatus.hashCode ^
        mawaterStructure.hashCode ^
        mawaterType.hashCode ^
        wheelMovement.hashCode ^
        year.hashCode ^
        user.hashCode;
  }
}
