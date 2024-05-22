import 'package:flutter/material.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/main/widget/my_car_screen_row.dart';
import 'package:rent_car_app/theme/colors.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';
import 'package:sizer/sizer.dart';

class MyCarScreen extends StatelessWidget {
  const MyCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.only(left: 5.w,right: 5.w),
        child:  ListView(
          children: [
            SizedBox(
              width: width(context),
              height: 30.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset('assets/png/background_car.jpeg',fit: BoxFit.fill,),
              ),
            ),
            SizedBox(
              width: 20.w,
              child: TextButton(onPressed: (){ }, child: const Text('Редактировать фото',style: TextStyle(
                color: Color.fromARGB(255, 42, 107, 246),
                fontSize: 16,
              ),)),
            ),
            SizedBox(height: 2.h,),
            Container(
              padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 1.h),
              decoration: info_container_decoration,
              height: 60.h,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                myCarScreenRow(context, 'Марка', 'Rolls-royce'),
                myCarScreenRow(context, 'Модель', 'Phantom'),
                myCarScreenRow(context, 'Двигатель', '6.8 литров \n 460 л.с \n Бензин'),
                myCarScreenRow(context, 'Год выпуска', '2012'),
                myCarScreenRow(context, 'Цвет', 'Черный'),
                myCarScreenRow(context, 'Кузов', 'Купе'),
                myCarScreenRow(context, 'Комплектация', 'Стандарт'),
                myCarScreenRow(context, 'Коробка', 'Автомат'),
                myCarScreenRow(context, 'привод', 'Задний'),
                myCarScreenRow(context, 'Руль', 'Левый'),
                myCarScreenRow(context, 'VIN - номер', '1N4DL01DXWC257013')
              ],),
            ),
            SizedBox(height: 2.h,),
            Center(child: Text('Мои документы', style: Theme.of(context).textTheme.titleLarge,)),
            SizedBox(height: 2.h,),
            Container(
              padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 1.h),
              decoration: info_container_decoration,
              height: 52.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myCarScreenRow(context, 'ФИО', 'Калитов \n Александр \n Андреевич'),
                  myCarScreenRow(context, 'Дата рождения и\nместо', '07.07.2007 \n  Г.Владимир'),
                  myCarScreenRow(context, 'Дата выдачи', '30.05.2021'),
                  myCarScreenRow(context, 'Дата окончания', '02.02.2030'),
                  myCarScreenRow(context, 'Кем выдан', 'ГИБДД'),
                  myCarScreenRow(context, 'Номер', '9937674310'),
                  myCarScreenRow(context, 'Где выдан', 'Московская область'),
                  myCarScreenRow(context, 'Категория',  'B/B1/M'),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 30.w,height: 5.h,child: FloatingActionButton(onPressed: (){}, child: Text('Изменить', style: Theme.of(context).textTheme.titleSmall,),)),
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}