import 'package:flutter/material.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';
import 'package:sizer/sizer.dart';

class MyCarScreen extends StatelessWidget {
  const MyCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 145, 179, 240),
      body: Container(
        padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 2.h),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width(context),
              height: 30.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/png/background_car.jpeg',fit: BoxFit.fill,),
              ),
            ),
            TextButton(onPressed: (){ }, child: const Text('Редактировать фото',style: TextStyle(
              color: Color.fromARGB(255, 42, 107, 246),
              fontSize: 16,
            ),)),
            SizedBox(height: 2.h,),
            Container(
              decoration: info_container_decoration,
              height: 30.h,
            )

          ],
        ),
      ),
    );
  }
}