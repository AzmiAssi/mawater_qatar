import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mawater_qatar/models/entity/chat_message.dart';

void sendChatMessages({required ChatMessage message}) async {
  await FirebaseFirestore.instance.collection('chats').add({
    "chatRoomId": message.chatRoomId,
    "messageText": message.messageText,
    "messageTime": message.messageTime!,
    "receiverId": message.receiverId,
    "senderId": message.senderId,
  });

  // await FirebaseFirestore.instance.collection('chatRoom').where("field").

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference collection = firestore.collection('chatRoom');

  // Query documents to be updated
  QuerySnapshot querySnapshot =
      await collection.where('roomId', isEqualTo: message.chatRoomId).get();

  for (var doc in querySnapshot.docs) {
    // Update each document
    await collection.doc(doc.id).update(
        {'lastMessage': message.messageText, 'roomTime': message.messageTime});
  }
}
