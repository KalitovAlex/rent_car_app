import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

width (context){
  return MediaQuery.of(context).size.width;
}
height (context){
  return MediaQuery.of(context).size.height;
}
final ifMobile = SizerUtil.deviceType == DeviceType.mobile;