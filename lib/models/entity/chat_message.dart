// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatMessage {
  String? chatRoomId;
  String? messageText;
  Timestamp? messageTime;
  String? receiverId;
  String? senderId;
  ChatMessage({
    this.chatRoomId,
    this.messageText,
    this.messageTime,
    this.receiverId,
    this.senderId,
  });

  ChatMessage copyWith({
    String? chatRoomId,
    String? messageText,
    Timestamp? messageTime,
    String? receiverId,
    String? senderId,
  }) {
    return ChatMessage(
      chatRoomId: chatRoomId ?? this.chatRoomId,
      messageText: messageText ?? this.messageText,
      messageTime: messageTime ?? this.messageTime,
      receiverId: receiverId ?? this.receiverId,
      senderId: senderId ?? this.senderId,
    );
  }

  @override
  String toString() {
    return 'ChatMessage(chatRoomId: $chatRoomId, messageText: $messageText, messageTime: $messageTime, receiverId: $receiverId, senderId: $senderId)';
  }

  @override
  bool operator ==(covariant ChatMessage other) {
    if (identical(this, other)) return true;

    return other.chatRoomId == chatRoomId &&
        other.messageText == messageText &&
        other.messageTime == messageTime &&
        other.receiverId == receiverId &&
        other.senderId == senderId;
  }

  @override
  int get hashCode {
    return chatRoomId.hashCode ^
        messageText.hashCode ^
        messageTime.hashCode ^
        receiverId.hashCode ^
        senderId.hashCode;
  }
}
