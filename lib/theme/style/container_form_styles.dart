import 'package:flutter/material.dart';

BoxDecoration text_field_boxdecoration = BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(12)
);
BoxDecoration button_black_decoration = BoxDecoration(
color: Colors.black,
borderRadius: BorderRadius.circular(30)
);
BoxDecoration button_grey_decoration = BoxDecoration(
color: const Color.fromARGB(255, 179, 179, 179).withOpacity(0.8),
borderRadius: BorderRadius.circular(30),
boxShadow: [
  BoxShadow(
    color: Colors.black.withOpacity(0.2),
    blurRadius: 10,
    offset: Offset(0, 4)
  )
]
);