import 'package:flutter/material.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';
import 'package:sizer/sizer.dart';

class MyCarScreen extends StatelessWidget {
  const MyCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 145, 179, 240),
      body: Container(
        padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 10.h),
        child:  Column(
          children: [
            Container(
              width: 50.w,
              height: 30.h,
              decoration: image_container_decoration,
              child: Image.asset('assets/png/background_car.jpeg',fit: BoxFit.fill,),
            )

          ],
        ),
      ),
    );
  }
}