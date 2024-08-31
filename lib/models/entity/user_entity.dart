// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserEntity {
  String? image;
  bool? isActive;
  bool? isPaid;
  String? userEmail;
  String? userId;
  String? userFName;
  String? userLName;
  String? userPassword;
  String? userPhone;
  String? packageId;
  int? userType;
  UserEntity({
    this.image,
    this.isActive = true,
    this.isPaid,
    this.userEmail,
    this.userId,
    this.userFName,
    this.userLName,
    this.userPassword,
    this.userPhone,
    this.packageId,
    this.userType,
  });

  UserEntity copyWith({
    String? image,
    bool? isActive,
    bool? isPaid,
    String? userEmail,
    String? userId,
    String? userFName,
    String? userLName,
    String? userPassword,
    String? userPhone,
    String? packageId,
    int? userType,
  }) {
    return UserEntity(
      image: image ?? this.image,
      isActive: isActive ?? this.isActive,
      isPaid: isPaid ?? this.isPaid,
      userEmail: userEmail ?? this.userEmail,
      userId: userId ?? this.userId,
      userFName: userFName ?? this.userFName,
      userLName: userLName ?? this.userLName,
      userPassword: userPassword ?? this.userPassword,
      userPhone: userPhone ?? this.userPhone,
      packageId: packageId ?? this.packageId,
      userType: userType ?? this.userType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'isActive': isActive,
      'isPaid': isPaid,
      'userEmail': userEmail,
      'userId': userId,
      'userFName': userFName,
      'userLName': userLName,
      'userPassword': userPassword,
      'userPhone': userPhone,
      'packageId': packageId,
      'userType': userType,
    };
  }

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      image: map['image'] != null ? map['image'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
      isPaid: map['isPaid'] != null ? map['isPaid'] as bool : null,
      userEmail: map['userEmail'] != null ? map['userEmail'] as String : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
      userFName: map['userFName'] != null ? map['userFName'] as String : null,
      userLName: map['userLName'] != null ? map['userLName'] as String : null,
      userPassword:
          map['userPassword'] != null ? map['userPassword'] as String : null,
      userPhone: map['userPhone'] != null ? map['userPhone'] as String : null,
      packageId: map['packageId'] != null ? map['packageId'] as String : null,
      userType: map['userType'] != null ? map['userType'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserEntity.fromJson(String source) =>
      UserEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserEntity(image: $image, isActive: $isActive, isPaid: $isPaid, userEmail: $userEmail, userId: $userId, userFName: $userFName, userLName: $userLName, userPassword: $userPassword, userPhone: $userPhone, packageId: $packageId, userType: $userType)';
  }

  @override
  bool operator ==(covariant UserEntity other) {
    if (identical(this, other)) return true;

    return other.image == image &&
        other.isActive == isActive &&
        other.isPaid == isPaid &&
        other.userEmail == userEmail &&
        other.userId == userId &&
        other.userFName == userFName &&
        other.userLName == userLName &&
        other.userPassword == userPassword &&
        other.userPhone == userPhone &&
        other.packageId == packageId &&
        other.userType == userType;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        isActive.hashCode ^
        isPaid.hashCode ^
        userEmail.hashCode ^
        userId.hashCode ^
        userFName.hashCode ^
        userLName.hashCode ^
        userPassword.hashCode ^
        userPhone.hashCode ^
        packageId.hashCode ^
        userType.hashCode;
  }
}
