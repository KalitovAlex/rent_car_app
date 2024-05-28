import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:sizer/sizer.dart';

import '../../helper/adaptive_helper.dart';
import '../widget/car_text_decoration.dart';
@RoutePage()
class ChangeDocumentInfo extends StatefulWidget {
  const ChangeDocumentInfo({super.key});

  @override
  State<ChangeDocumentInfo> createState() => _ChangeDocumentInfoState();
}

class _ChangeDocumentInfoState extends State<ChangeDocumentInfo> {
    TextEditingController nameController = TextEditingController();
    TextEditingController whoGiveController = TextEditingController();
    TextEditingController documentNumberController = TextEditingController();
    TextEditingController whenGiveController = TextEditingController();
    TextEditingController categoriesController = TextEditingController();
      @override
    void initState() {
      super.initState();
      nameController.text = documentModel.name!;
      whoGiveController.text = documentModel.issuedBy!;
      documentNumberController.text = documentModel.number!;
      whenGiveController.text = documentModel.whereIssued!;
      categoriesController.text = documentModel.categories!;
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text('Изменить данные', style: Theme.of(context).textTheme.titleMedium,),
          ),
          body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: SizedBox(
              height: 90.h,
              child: Container(
                height: height(context),
                width: width(context),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
                padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    carTextDecoration('ФИО', nameController, context),
                    carTextDecoration('Кем выдан', whoGiveController, context),
                    carTextDecoration('Номер', documentNumberController, context),
                    carTextDecoration('Где выдан', whenGiveController, context),
                    carTextDecoration('Категория', categoriesController, context),
                  ],
                ),
              ),
            ),
          ),
      );
  }
}