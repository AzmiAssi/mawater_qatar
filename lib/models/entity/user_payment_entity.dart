// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserPaymentEntity {
  String? paymentAt;
  String? paymentId;
  String? userId;
  double? value;
  UserPaymentEntity({
    this.paymentAt,
    this.paymentId,
    this.userId,
    this.value,
  });

  UserPaymentEntity copyWith({
    String? paymentAt,
    String? paymentId,
    String? userId,
    double? value,
  }) {
    return UserPaymentEntity(
      paymentAt: paymentAt ?? this.paymentAt,
      paymentId: paymentId ?? this.paymentId,
      userId: userId ?? this.userId,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymentAt': paymentAt,
      'paymentId': paymentId,
      'userId': userId,
      'value': value,
    };
  }

  factory UserPaymentEntity.fromMap(Map<String, dynamic> map) {
    return UserPaymentEntity(
      paymentAt: map['paymentAt'] != null ? map['paymentAt'] as String : null,
      paymentId: map['paymentId'] != null ? map['paymentId'] as String : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
      value: map['value'] != null ? map['value'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserPaymentEntity.fromJson(String source) =>
      UserPaymentEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserPaymentEntity(paymentAt: $paymentAt, paymentId: $paymentId, userId: $userId, value: $value)';
  }

  @override
  bool operator ==(covariant UserPaymentEntity other) {
    if (identical(this, other)) return true;

    return other.paymentAt == paymentAt &&
        other.paymentId == paymentId &&
        other.userId == userId &&
        other.value == value;
  }

  @override
  int get hashCode {
    return paymentAt.hashCode ^
        paymentId.hashCode ^
        userId.hashCode ^
        value.hashCode;
  }
}
