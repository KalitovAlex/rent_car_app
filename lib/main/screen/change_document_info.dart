import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helper/adaptive_helper.dart';
import '../widget/car_text_decoration.dart';

class ChangeDocumentInfo extends StatelessWidget {
  const ChangeDocumentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController whoGiveController = TextEditingController();
    TextEditingController documentNumberController = TextEditingController();
    TextEditingController whenGiveController = TextEditingController();
    TextEditingController categoriesController = TextEditingController();
    return Scaffold(
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
                    Align(child: Text('Изменить данные', style: Theme.of(context).textTheme.titleMedium,),),
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