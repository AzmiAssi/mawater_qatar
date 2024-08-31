// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mawater_qatar/models/entity/user_entity.dart';

class ChatRoomEntity {
  Timestamp? roomTime;
  String? roomId;
  String? lastMessage;
  UserEntity? user;
  ChatRoomEntity({
    this.roomTime,
    this.roomId,
    this.lastMessage,
    this.user,
  });

  ChatRoomEntity copyWith({
    Timestamp? roomTime,
    String? roomId,
    String? lastMessage,
    UserEntity? user,
  }) {
    return ChatRoomEntity(
      roomTime: roomTime ?? this.roomTime,
      roomId: roomId ?? this.roomId,
      lastMessage: lastMessage ?? this.lastMessage,
      user: user ?? this.user,
    );
  }

  @override
  String toString() {
    return 'ChatRoomEntity(roomTime: $roomTime, roomId: $roomId, lastMessage: $lastMessage, user: $user)';
  }

  @override
  bool operator ==(covariant ChatRoomEntity other) {
    if (identical(this, other)) return true;

    return other.roomTime == roomTime &&
        other.roomId == roomId &&
        other.lastMessage == lastMessage &&
        other.user == user;
  }

  @override
  int get hashCode {
    return roomTime.hashCode ^
        roomId.hashCode ^
        lastMessage.hashCode ^
        user.hashCode;
  }
}
