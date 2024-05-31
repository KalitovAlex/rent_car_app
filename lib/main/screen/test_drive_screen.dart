import 'package:flutter/material.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/main/widget/test_drive_screen_listview.dart';
import 'package:rent_car_app/theme/colors.dart';
import 'package:sizer/sizer.dart';

import '../model/car/car.dart';

class TestDriveScreen extends StatefulWidget {
  const TestDriveScreen({super.key});

  @override
  State<TestDriveScreen> createState() => _TestDriveScreenState();
}

class _TestDriveScreenState extends State<TestDriveScreen> {
  List<Car> carList =  [];
  @override
  void initState() { 
    getAllCar();
    super.initState();
  }
  getAllCar() async{
    carList = await carRepository.getAllCar();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 2.h),
        child:  Column(
          children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder:(context, index) {
              return  SizedBox(width: 3.w,);
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: carList.length,
              itemBuilder: (BuildContext context, int index) {
                final currentCar = carList[index];
                return testDriveScreenListView(context, currentCar.brand!, currentCar.model!, currentCar.engine!, currentCar.releaseYear!, currentCar.color!, currentCar.body!, currentCar.complectation!, currentCar.drive!, currentCar.transmission!, currentCar.wheel!);
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}