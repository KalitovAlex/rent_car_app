import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/main/widget/my_car_screen_row.dart';
import 'package:rent_car_app/theme/colors.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';
import 'package:sizer/sizer.dart';

import '../../core/routes.gr.dart';

class MyCarScreen extends StatefulWidget {
  const MyCarScreen({super.key});

  @override
  State<MyCarScreen> createState() => _MyCarScreenState();
}

class _MyCarScreenState extends State<MyCarScreen> {
    TextEditingController nameController = TextEditingController();
    TextEditingController whoGiveController = TextEditingController();
    TextEditingController documentNumberController = TextEditingController();
    TextEditingController whenGiveController = TextEditingController();
    TextEditingController categoriesController = TextEditingController();
    TextEditingController dateontrolller  = TextEditingController();
    @override
    void initState() {
      super.initState();
      nameController.text = documentModel.name!;
      whoGiveController.text = documentModel.issuedBy!;
      documentNumberController.text = documentModel.number!;
      whenGiveController.text = documentModel.whereIssued!;
      categoriesController.text  = documentModel.categories!;
    }
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
                child: Image.network('https://avatars.mds.yandex.net/get-autoru-vos/10147541/958cc70c55fd3922c11b0ea1e48c4965/1200x900n',fit: BoxFit.fill,),
              ),
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
              height: 49.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myCarScreenRow(context, 'ФИО', documentModel.name ?? ''),
                  myCarScreenRow(context, 'Дата рождения и\nместо', documentModel.birthDate),
                  myCarScreenRow(context, 'Дата выдачи', documentModel.dateOfIssue),
                  myCarScreenRow(context, 'Дата окончания', documentModel.endDate),
                  myCarScreenRow(context, 'Кем выдан', documentModel.issuedBy ?? ''),
                  myCarScreenRow(context, 'Номер', documentModel.number ?? ''),
                  myCarScreenRow(context, 'Где выдан', documentModel.whereIssued ?? ''),
                  myCarScreenRow(context, 'Категория',  documentModel.categories ?? ''),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 30.w,height: 5.h,child: FloatingActionButton(onPressed: (){
                        AutoRouter.of(context).push(const ChangeDocumentInfo());

                      }, child: Text('Изменить', style: Theme.of(context).textTheme.titleSmall,),)),
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