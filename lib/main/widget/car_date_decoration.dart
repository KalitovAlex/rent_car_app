import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../theme/style/container_form_styles.dart';
import '../../theme/style/text_form_styles.dart';

Widget carDateDecoration(String name,BuildContext context,String hint, TextEditingController controler,Future<void> Function(TextEditingController dateController) selectdate){
  return Column(
    children: [
    Text(name,style: Theme.of(context).textTheme.titleSmall,),
    SizedBox(height: 1.h,),
    Container(decoration: info_container_decoration,child: TextFormField(decoration: invisible_input_decoration(hint), controller: controler,readOnly: true, onTap: () => selectdate)),
    SizedBox(height: 1.h,)
    ],
  );

}