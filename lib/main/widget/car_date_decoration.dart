import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../theme/style/container_form_styles.dart';
import '../../theme/style/text_form_styles.dart';

Widget carDateDecoration(String name,BuildContext context, TextEditingController controller,Future<void> selectdate){
  return Column(
    children: [
    Text(name,style: Theme.of(context).textTheme.titleSmall,),
    SizedBox(height: 0.5.h,),
    Container(decoration: info_lite_container_decoration,child: TextFormField(decoration: invisible_input_decoration(name), controller: controller,readOnly: true, onTap: () => selectdate)),
    SizedBox(height: 0.5.h,)
    ],
  );

}