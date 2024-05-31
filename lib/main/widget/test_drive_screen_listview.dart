import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget testDriveScreenListView(){
  List<DateTime?> dates = [];
  return Expanded(
    child: SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          Image.network('https://s3-alpha-sig.figma.com/img/72f6/89ea/c7bc0f00ed2cc903b41a96f8e04cbdf5?Expires=1717372800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=VVriV8-lBakTJffn5IzhsCDy-Hc2tMRNuacvb4idV1OTV6N-DKKujCgzq0GyqAsX1pd3-g-3vO8d8MhJVQIbKzQnbNtiy9OHRzAMaouuyiXr9gSWzUbS1IfD0qe1r8KbCXKyopqYPQcpgO0PVKvxGAJ38dgHRbQfJs8-4Vn78SXVYby-4VVplGgngc~q6M1OiXkFXMLK-UCvhhInf0gGxhbOOcey62aQrLcRDn9uZb-MjPHkuXF41R-9Rj5aJm0lo509PCMHTyvW33rQ71U3UFEivD2eQ2u6-INlbKaumJ35MynVjFcaAWHoj~SfoTVi4Rnv1tKG8cWDBtp93mrudw__',fit: BoxFit.cover,height: 30.h,width: 90.w,),
          SizedBox(height: 2.h,),
                    Container(
                      width: 90.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
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
                    TextButton(onPressed: (){}, child: const Text('Записаться',style: TextStyle(color: Colors.white,fontSize: 20),)),
                    SizedBox(height: 5.h,)
        ],
      ),
    ),
  );
}