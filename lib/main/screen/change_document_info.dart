import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/main/widget/car_date_decoration.dart';
import 'package:sizer/sizer.dart';

import '../../helper/adaptive_helper.dart';
import '../../theme/style/container_form_styles.dart';
import '../../theme/style/text_form_styles.dart';
import '../widget/car_text_decoration.dart';
@RoutePage()
class ChangeDocumentInfo extends StatefulWidget {
  const ChangeDocumentInfo({super.key});

  @override
  State<ChangeDocumentInfo> createState() => _ChangeDocumentInfoState();
}

class _ChangeDocumentInfoState extends State<ChangeDocumentInfo> {
    TextEditingController dateController = TextEditingController();
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
   void selectDate() {
    showDatePicker(context: context, firstDate: DateTime(1950), lastDate: DateTime(2024));
  }
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
                        Text('Дата рождения',style: Theme.of(context).textTheme.titleSmall,),
                        SizedBox(height: 1.h,),
                        Container(decoration: info_container_decoration,child: TextFormField(decoration: invisible_input_decoration('укажите дату рождения'), controller: dateController,readOnly: true, onTap: () => selectDate())),
                        SizedBox(height: 1.h,),
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