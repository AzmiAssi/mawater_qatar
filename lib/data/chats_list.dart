import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../models/chat_model.dart';

List<ChatModel> chatList = [
  ChatModel(
      icon: Container(
        margin: getMargin(
          left: 5,
        ),
        padding: getPadding(
          left: 9,
          top: 6,
          right: 9,
          bottom: 6,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorConstant.gray500,
        ),
        child: Text(
          "2",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: ColorConstant.whiteA700,
            fontSize: getFontSize(
              10,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.20,
          ),
        ),
      ),
      msgNumber: 2,
      title: "BMW Store",
      img: ImageConstant.chat1),
  ChatModel(
      icon: Container(
        margin: getMargin(
          left: 5,
        ),
        padding: getPadding(
          left: 9,
          top: 6,
          right: 9,
          bottom: 6,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
        ),
      ),
      msgNumber: 2,
      title: "Tesla Motor",
      img: ImageConstant.chat2),
  ChatModel(
      icon: Container(
        margin: getMargin(
          left: 5,
        ),
        padding: getPadding(
          left: 9,
          top: 6,
          right: 9,
          bottom: 6,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorConstant.gray500,
        ),
        child: Text(
          "2",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: ColorConstant.whiteA700,
            fontSize: getFontSize(
              10,
            ),
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.20,
          ),
        ),
      ),
      msgNumber: 2,
      title: "Nissan Official",
      img: ImageConstant.chat3),
  ChatModel(
      icon: Container(
        margin: getMargin(
          left: 5,
        ),
        padding: getPadding(
          left: 9,
          top: 6,
          right: 9,
          bottom: 6,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
        ),
      ),
      msgNumber: 2,
      title: "Opel Store",
      img: ImageConstant.chat4),
];
