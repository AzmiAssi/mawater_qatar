import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mawater_qatar/models/entity/user_entity.dart';
import 'package:uuid/uuid.dart';

class UserController extends GetxController {
  var myUser = UserEntity().obs;

  Future<void> registerNewUser({required UserEntity user}) async {
    var uuid = const Uuid();
    var userId = uuid.v1();
    var collection = FirebaseFirestore.instance.collection('user');
    collection.add({
      'userId': userId,
      'userPhone': user.userPhone,
      'userPassword': user.userPassword,
      'userType': user.userType,
      'isActive': user.isActive,
      'isPaid': user.isPaid,
      'packageId': user.packageId,
      'userEmail': user.userEmail,
      'userFName': user.userFName,
      'userLName': user.userLName,
    }).then((test) async {
      user.userId = userId;
      myUser.update((userUpdate) {
        myUser.value = user;
      });
    });
  }

  Future<int> checkRegisterUser({required UserEntity user}) async {
    late int result = 0;
    var collection = FirebaseFirestore.instance.collection('user');
    await collection
        .where("userPhone", isEqualTo: user.userPhone)
        .get()
        .then((data) async {
      if (data.docs.isNotEmpty) {
        result = 0;
      } else {
        result = 1;
      }
    });
    return result;
  }

  Future<int> checkUserLogin(
      {required String phone, required String pass}) async {
    late int result = 0;
    var collection = FirebaseFirestore.instance.collection('user');
    await collection
        .where("userPhone", isEqualTo: phone)
        .where("userPassword", isEqualTo: pass)
        .get()
        .then((data) {
      if (data.docs.isEmpty) {
        result = 0;
      } else {
        myUser.update((userUpdate) {
          myUser.value = UserEntity(
            isActive: data.docs[0]["isActive"],
            //image: data.docs[0]["image"],
            isPaid: data.docs[0]["isPaid"],
            packageId: data.docs[0]["packageId"],
            userEmail: data.docs[0]["userEmail"],
            userFName: data.docs[0]["userFName"],
            userId: data.docs[0]["userId"],
            userLName: data.docs[0]["userLName"],
            userPassword: data.docs[0]["userPassword"],
            userPhone: data.docs[0]["userPhone"],
            userType: data.docs[0]["userType"],
          );
        });
        result = 1;
      }
    });
    return result;
  }
}
