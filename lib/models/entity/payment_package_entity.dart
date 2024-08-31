// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class PaymentPackageEntity {
  String? paymentArabicName;
  String? paymentPackageDescription;
  List<String>? paymentPackageFeatures;
  String? paymentPackageId;
  String? paymentPackageName;
  String? paymentPackagePrice;
  PaymentPackageEntity({
    this.paymentArabicName,
    this.paymentPackageDescription,
    this.paymentPackageFeatures,
    this.paymentPackageId,
    this.paymentPackageName,
    this.paymentPackagePrice,
  });

  PaymentPackageEntity copyWith({
    String? paymentArabicName,
    String? paymentPackageDescription,
    List<String>? paymentPackageFeatures,
    String? paymentPackageId,
    String? paymentPackageName,
    String? paymentPackagePrice,
  }) {
    return PaymentPackageEntity(
      paymentArabicName: paymentArabicName ?? this.paymentArabicName,
      paymentPackageDescription:
          paymentPackageDescription ?? this.paymentPackageDescription,
      paymentPackageFeatures:
          paymentPackageFeatures ?? this.paymentPackageFeatures,
      paymentPackageId: paymentPackageId ?? this.paymentPackageId,
      paymentPackageName: paymentPackageName ?? this.paymentPackageName,
      paymentPackagePrice: paymentPackagePrice ?? this.paymentPackagePrice,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymentArabicName': paymentArabicName,
      'paymentPackageDescription': paymentPackageDescription,
      'paymentPackageFeatures': paymentPackageFeatures,
      'paymentPackageId': paymentPackageId,
      'paymentPackageName': paymentPackageName,
      'paymentPackagePrice': paymentPackagePrice,
    };
  }

  factory PaymentPackageEntity.fromMap(Map<String, dynamic> map) {
    return PaymentPackageEntity(
      paymentArabicName: map['paymentArabicName'] != null
          ? map['paymentArabicName'] as String
          : null,
      paymentPackageDescription: map['paymentPackageDescription'] != null
          ? map['paymentPackageDescription'] as String
          : null,
      paymentPackageFeatures: map['paymentPackageFeatures'] != null
          ? List<String>.from((map['paymentPackageFeatures'] as List<String>))
          : null,
      paymentPackageId: map['paymentPackageId'] != null
          ? map['paymentPackageId'] as String
          : null,
      paymentPackageName: map['paymentPackageName'] != null
          ? map['paymentPackageName'] as String
          : null,
      paymentPackagePrice: map['paymentPackagePrice'] != null
          ? map['paymentPackagePrice'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentPackageEntity.fromJson(String source) =>
      PaymentPackageEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PaymentPackageEntity(paymentArabicName: $paymentArabicName, paymentPackageDescription: $paymentPackageDescription, paymentPackageFeatures: $paymentPackageFeatures, paymentPackageId: $paymentPackageId, paymentPackageName: $paymentPackageName, paymentPackagePrice: $paymentPackagePrice)';
  }

  @override
  bool operator ==(covariant PaymentPackageEntity other) {
    if (identical(this, other)) return true;

    return other.paymentArabicName == paymentArabicName &&
        other.paymentPackageDescription == paymentPackageDescription &&
        listEquals(other.paymentPackageFeatures, paymentPackageFeatures) &&
        other.paymentPackageId == paymentPackageId &&
        other.paymentPackageName == paymentPackageName &&
        other.paymentPackagePrice == paymentPackagePrice;
  }

  @override
  int get hashCode {
    return paymentArabicName.hashCode ^
        paymentPackageDescription.hashCode ^
        paymentPackageFeatures.hashCode ^
        paymentPackageId.hashCode ^
        paymentPackageName.hashCode ^
        paymentPackagePrice.hashCode;
  }
}
