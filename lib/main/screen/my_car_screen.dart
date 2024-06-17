import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/main/widget/my_car_screen_row.dart';
import 'package:rent_car_app/theme/colors.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';

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
    }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.only(left: width/20,right: width/20),
        child:  ListView(
          children: [
            SizedBox(
              width: width,
              height: height/3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.network('https://avatars.mds.yandex.net/get-autoru-vos/10147541/958cc70c55fd3922c11b0ea1e48c4965/1200x900n',fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: height/28,),
            Container(
              padding: EdgeInsets.only(left: width/50,right: width/50,top: height/100),
              decoration: info_container_decoration,
              height: height/1.5,
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
            SizedBox(height: height/50,),
            Center(child: Text('Мои документы', style: Theme.of(context).textTheme.titleLarge,)),
            SizedBox(height: height/50),
            Container(
              padding: EdgeInsets.only(left: width/50,right: width/50,top: height/100),
              decoration: info_container_decoration,
              height: height/1.90,
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
                  SizedBox(height: height/50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: width/3.3,height: height/20,child: FloatingActionButton(onPressed: (){
                        AutoRouter.of(context).push(const ChangeDocumentInfo());

                      }, child: Text('Изменить', style: Theme.of(context).textTheme.titleSmall,),)),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: height/20,)

          ],
        ),
      ),
    );
  }
}