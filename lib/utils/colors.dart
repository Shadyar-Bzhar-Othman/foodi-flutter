import 'package:flutter/material.dart';

const Color primaryColor = Color(0xffFE724C);
const Color whiteColor = Color(0xffffffff);
const Color blackColor = Color(0xff000000);
const Color greyColor = Color(0xffF6F6F6);
const Color lightGreyColor = Color(0xff9796A1);
const Color darkGreyColor = Color(0xff5B5B5E);

final List<BoxShadow>? boxShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(0.1),
    offset: const Offset(0, 10),
    blurRadius: 15.0,
    spreadRadius: -3.0,
  ),
];
