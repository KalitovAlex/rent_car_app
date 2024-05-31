import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:rent_car_app/main/widget/my_car_screen_row.dart';
import 'package:rent_car_app/widget/snack_bar.dart';
import 'package:sizer/sizer.dart';


Widget testDriveScreenListView(BuildContext context,String brand, String model, String engine, String releaseYear, String color, String body, String complectation, String drive, String transmission, String wheel,String image){
  List<DateTime?> dates = [];
  return Expanded(
    child: SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          Image.network(image,fit: BoxFit.cover,height: 30.h,width: 90.w,),
          SizedBox(height: 2.h,),
                    Container(
                      width: 90.w,
                      padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 1.h),
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        children: [
                          myCarScreenRow(context, 'Год выпуска', brand),
                          myCarScreenRow(context, 'Двигатель', engine),
                          myCarScreenRow(context, 'Цвет', color),
                          myCarScreenRow(context, 'Кузов', body),
                          myCarScreenRow(context, 'Комплектация', complectation),
                          myCarScreenRow(context, 'Коробка', transmission),
                          myCarScreenRow(context, 'Привод', wheel),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.h,),
                      Container(
                        decoration: BoxDecoration(color: const Color.fromARGB(255, 161, 195, 255),borderRadius: BorderRadius.circular(30)),
                        width: 90.w,
                        height: 30.h,
                          child: CalendarDatePicker2(
                            config: CalendarDatePicker2Config(),
                            value: dates,
                            onValueChanged: (date) => dates = date,
                      ),
                    ),
                    SizedBox(height: 3.h,),
                    Container(
                      width: 85.w,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 4)
                        )
                      ]
                    ),child: TextButton(onPressed: (){
                      QuickAlert.show(context: context, type: QuickAlertType.confirm, 
                              title: 'Вы уверены?',
                              text: 'Вы точно хотите записаться на тест драйв на ${dates.first!.year} : ${dates.first!.month} : ${dates.first!.day}? ',
                              confirmBtnText: 'Да',
                              cancelBtnText: 'Нет',
                              headerBackgroundColor: Colors.blueAccent,
                              barrierColor: const Color.fromARGB(255, 153, 191, 255),
                              onConfirmBtnTap: (){
                                Navigator.of(context).pop();
                                showSnackBar(context, 'Вы успешно записались на тест драйв,скоро вам напишет наш консультант');
                              }
                              );
                    }, child: const Text('Записаться',style: TextStyle(color: Colors.white,fontSize: 20),))),
                    SizedBox(height: 5.h,)
        ],
      ),
    ),
  );
}