// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:rent_car_app/main/widget/test_drive_screen_listview.dart';
import 'package:rent_car_app/theme/colors.dart';

import '../model/car/car.dart';
@RoutePage()
class TestDriveScreen extends StatefulWidget {
  List<Car> carList;
  TestDriveScreen({
    super.key,
    required this.carList,
  });

  @override
  State<TestDriveScreen> createState() => _TestDriveScreenState();
}

class _TestDriveScreenState extends State<TestDriveScreen> {
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
              itemCount: widget.carList.length,
              itemBuilder: (BuildContext context, int index) {
                final currentCar = widget.carList[index];
                return testDriveScreenListView(context, currentCar.brand!, currentCar.model!, currentCar.engine!, currentCar.releaseYear!, currentCar.color!, currentCar.body!, currentCar.complectation!, currentCar.drive!, currentCar.transmission!, currentCar.wheel!, currentCar.imageName!);
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}