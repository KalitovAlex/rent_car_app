import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/main/bloc/change_document_bloc.dart';
import 'package:rent_car_app/widget/loading_circle.dart';
import 'package:rent_car_app/widget/snack_bar.dart';
import 'package:sizer/sizer.dart';

import '../../helper/adaptive_helper.dart';
import '../../theme/style/container_form_styles.dart';
import '../../theme/style/text_form_styles.dart';
import '../widget/car_text_decoration.dart';
part '../extensions/change_document_info_extensions.dart';

@RoutePage()
class ChangeDocumentInfo extends StatefulWidget {
  const ChangeDocumentInfo({super.key});

  @override
  State<ChangeDocumentInfo> createState() => _ChangeDocumentInfoState();
}

class _ChangeDocumentInfoState extends State<ChangeDocumentInfo> {
  var dateBirthController = TextEditingController();
  var dateGiveController = TextEditingController();
  var dateExpiredController = TextEditingController();
  var nameController = TextEditingController();
  var whoGiveController = TextEditingController();
  var documentNumberController = TextEditingController();
  var whenGiveController = TextEditingController();
  var categoriesController = TextEditingController();
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
  void dispose() {
    dateBirthController.dispose();
    dateBirthController.dispose();
    dateExpiredController.dispose();
    nameController.dispose();
    whoGiveController.dispose();
    documentNumberController.dispose();
    whenGiveController.dispose();
    categoriesController.dispose();
    super.dispose();
  }

  @override
  Widget build( BuildContext context,){
    final bloccommand = BlocProvider.of<ChangeDocumentBloc>(context);
    void selectDate(TextEditingController controller) {
      showDatePicker(
              context: context,
              firstDate: DateTime(1950),
              lastDate: DateTime(2050))
          .then((value) {
        setState(() {
          controller.text = "${value!.year}-${value.month}-${value.day}";
        });
      });
    }

    void selectBirthDate(TextEditingController controller) {
      showDatePicker(
              context: context,
              firstDate: DateTime(1950),
              lastDate: DateTime(2020))
          .then((value) {
        setState(() {
          controller.text = "${value!.year}-${value.month}-${value.day}";
        });
      });
    }

    return BlocConsumer<ChangeDocumentBloc, ChangeDocumentState>(
      listener: (context, state) {
        if(state is ChangeDocumentLoading){
          showLoadingCircle(context);
        }
        if(state is ChangeDocumentLoaded){
          showSnackBar(context, 'Данные успешно изменены');
        }
        if(state is ChangeDocumentFailure){
          showSnackBar(context, 'Ошибка изменения данных');
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Изменить данные',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: 90.h,
              child: Container(
                height: height(context),
                width: width(context),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    carTextDecoration('ФИО', nameController, context),
                    Text(
                      'Дата рождения',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                        decoration: info_lite_container_decoration,
                        child: TextFormField(
                            decoration: invisible_input_decoration(
                                'укажите дату рождения'),
                            controller: dateBirthController,
                            readOnly: true,
                            onTap: () => selectBirthDate(dateBirthController))),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Дата выдачи',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                        decoration: info_lite_container_decoration,
                        child: TextFormField(
                            decoration: invisible_input_decoration(
                                'укажите дату выдачи'),
                            controller: dateGiveController,
                            readOnly: true,
                            onTap: () => selectDate(dateGiveController))),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Укажите дату окончания',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                        decoration: info_lite_container_decoration,
                        child: TextFormField(
                            decoration: invisible_input_decoration(
                                'укажите дату окончания'),
                            controller: dateExpiredController,
                            readOnly: true,
                            onTap: () => selectDate(dateExpiredController))),
                    SizedBox(
                      height: 1.h,
                    ),
                    carTextDecoration('Кем выдан', whoGiveController, context),
                    carTextDecoration(
                        'Номер', documentNumberController, context),
                    carTextDecoration('Где выдан', whenGiveController, context),
                    carTextDecoration(
                        'Категория', categoriesController, context),
                    SizedBox(
                      height: 1.h,
                    ),
                    Center(
                      heightFactor: BorderSide.strokeAlignOutside,
                      child: Container(
                        width: 80.w,
                        height: 5.5.h,
                        decoration: button_black_decoration,
                        child: TextButton(
                            onPressed: () {
                              if (nameController.text.isNotEmpty &&
                                  dateBirthController.text.isNotEmpty &&
                                  dateExpiredController.text.isNotEmpty &&
                                  whenGiveController.text.isNotEmpty &&
                                  documentNumberController.text.isNotEmpty &&
                                  whenGiveController.text.isNotEmpty &&
                                  categoriesController.text.isNotEmpty) {
                                bloccommand.add(ChangeDocumentEvent());
                              } else {
                                showSnackBar(
                                    context, 'Вы неправильно заполнили поля');
                              }
                            },
                            child: Text(
                              'Изменить',
                              style: Theme.of(context).textTheme.labelMedium,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
