import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
InputDecoration invisible_input_decoration (String hint) {
  return InputDecoration(
  border: InputBorder.none,
  contentPadding: EdgeInsets.only(left: 3.w,top: 0.5.h),
  hintText: hint,
  );
}