import 'package:auto_route/auto_route.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/main/screen/info_company_screen.dart';
import 'package:rent_car_app/main/screen/my_car_screen.dart';
import 'package:rent_car_app/main/screen/test_drive_screen.dart';
import 'package:sizer/sizer.dart';

import '../core/globals.dart';
import 'model/car/car.dart';
@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Car> carList = [];
  @override
  void initState() {
    super.initState();
    getAllCar();
  }
    getAllCar() async{
    carList = await carRepository.getAllCar();
    setState(() {
      
    });
    }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Column(
          children: [
            Container(height: 5.h,color: Colors.white,),
            Container(
              width: width(context),
              height: 8.h,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: ButtonsTabBar(
                  labelStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
                  backgroundColor: Colors.black,
                  radius: 30,
                  height: 20.h,
                  contentPadding: const EdgeInsets.all(12),
                  buttonMargin: EdgeInsets.only(right: 4.w,left: 4.w,top: 1.5.h,bottom: 1.5.h),
                  tabs: const [
                 Tab(text: 'мое авто',),
                 Tab(text: 'Тест-драйв',),
                 Tab(text: 'О компании',),
                ]),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                const MyCarScreen(),
                TestDriveScreen(carList: carList,),
                const InfoCompanyScreen()
              ]),
            )
          ],
        ),
      ),
    );
  }
}