// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FavouriteEntity {
  String? favouriteId;
  String? productId;
  String? userId;
  FavouriteEntity({
    this.favouriteId,
    this.productId,
    this.userId,
  });

  FavouriteEntity copyWith({
    String? favouriteId,
    String? productId,
    String? userId,
  }) {
    return FavouriteEntity(
      favouriteId: favouriteId ?? this.favouriteId,
      productId: productId ?? this.productId,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'favouriteId': favouriteId,
      'productId': productId,
      'userId': userId,
    };
  }

  factory FavouriteEntity.fromMap(Map<String, dynamic> map) {
    return FavouriteEntity(
      favouriteId:
          map['favouriteId'] != null ? map['favouriteId'] as String : null,
      productId: map['productId'] != null ? map['productId'] as String : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FavouriteEntity.fromJson(String source) =>
      FavouriteEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'FavouriteEntity(favouriteId: $favouriteId, productId: $productId, userId: $userId)';

  @override
  bool operator ==(covariant FavouriteEntity other) {
    if (identical(this, other)) return true;

    return other.favouriteId == favouriteId &&
        other.productId == productId &&
        other.userId == userId;
  }

  @override
  int get hashCode =>
      favouriteId.hashCode ^ productId.hashCode ^ userId.hashCode;
}
