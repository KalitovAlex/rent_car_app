import 'package:auto_route/auto_route.dart';
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
              child: TabBar(
                labelColor: Colors.black,
                dividerColor: Colors.transparent,
                tabs: [
               Tab(child: Text('Мое авто',style: Theme.of(context).textTheme.titleSmall,)),
               Tab(child: Text('Тест-драйв',style: Theme.of(context).textTheme.titleSmall,),),
               Tab(child: Text('О компании',style: Theme.of(context).textTheme.titleSmall,),)
              ]),
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