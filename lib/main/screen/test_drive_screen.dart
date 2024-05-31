import 'package:flutter/material.dart';
import 'package:rent_car_app/main/widget/test_drive_screen_listview.dart';
import 'package:rent_car_app/theme/colors.dart';
import 'package:sizer/sizer.dart';

class TestDriveScreen extends StatelessWidget {
  const TestDriveScreen({super.key});

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
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return testDriveScreenListView();
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}