// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SeenByEntity {
  String? productId;
  String? seenAt;
  String? seenById;
  String? userId;
  SeenByEntity({
    this.productId,
    this.seenAt,
    this.seenById,
    this.userId,
  });

  SeenByEntity copyWith({
    String? productId,
    String? seenAt,
    String? seenById,
    String? userId,
  }) {
    return SeenByEntity(
      productId: productId ?? this.productId,
      seenAt: seenAt ?? this.seenAt,
      seenById: seenById ?? this.seenById,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'seenAt': seenAt,
      'seenById': seenById,
      'userId': userId,
    };
  }

  factory SeenByEntity.fromMap(Map<String, dynamic> map) {
    return SeenByEntity(
      productId: map['productId'] != null ? map['productId'] as String : null,
      seenAt: map['seenAt'] != null ? map['seenAt'] as String : null,
      seenById: map['seenById'] != null ? map['seenById'] as String : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SeenByEntity.fromJson(String source) =>
      SeenByEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SeenByEntity(productId: $productId, seenAt: $seenAt, seenById: $seenById, userId: $userId)';
  }

  @override
  bool operator ==(covariant SeenByEntity other) {
    if (identical(this, other)) return true;

    return other.productId == productId &&
        other.seenAt == seenAt &&
        other.seenById == seenById &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return productId.hashCode ^
        seenAt.hashCode ^
        seenById.hashCode ^
        userId.hashCode;
  }
}
