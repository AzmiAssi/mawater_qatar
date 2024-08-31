

import 'package:flutter/cupertino.dart';

class ChatModel{
  String img;
  String title;
  Widget icon;
  int msgNumber;
  ChatModel({

    required this.icon,
    required this.msgNumber,
    required this.title,
    required this.img
  });
}