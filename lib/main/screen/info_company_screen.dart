import 'package:flutter/material.dart';
import 'package:rent_car_app/theme/colors.dart';
import 'package:sizer/sizer.dart';

class InfoCompanyScreen extends StatelessWidget {
  const InfoCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 3.h),
        child: Column(
          children: [
            Text('Hign Wheels-официальный диллер люксовых автомобилей в России',style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.center,),
            SizedBox(height: 2.h,),
            Image.asset('assets/png/info_company_image.png'),
            SizedBox(height: 2.h,),
            Image.asset('assets/png/info.png'),

          ],
        ),
      ),
    );
  }
}