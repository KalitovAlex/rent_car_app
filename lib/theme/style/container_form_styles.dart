import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
BoxDecoration text_field_boxdecoration = BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(12)
);
// ignore: non_constant_identifier_names
BoxDecoration button_black_decoration = BoxDecoration(
color: Colors.black,
borderRadius: BorderRadius.circular(30)
);
// ignore: non_constant_identifier_names
BoxDecoration button_grey_decoration = BoxDecoration(
color: const Color.fromARGB(255, 179, 179, 179).withOpacity(0.9),
borderRadius: BorderRadius.circular(30),
boxShadow: [
  BoxShadow(
    color: Colors.black.withOpacity(0.3),
    blurRadius: 10,
    offset: const Offset(0, 4)
  )
]
);