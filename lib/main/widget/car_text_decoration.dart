import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../theme/style/container_form_styles.dart';
import '../../theme/style/text_form_styles.dart';

Widget carTextDecoration(String hint, TextEditingController controller, BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(hint,style: Theme.of(context).textTheme.titleSmall,),
    SizedBox(height: 1.h,),
    Container(decoration: info_container_decoration,child: TextFormField(decoration: invisible_input_decoration(hint), controller: controller,),),
    SizedBox(height: 1.h,)
    ],
  );
}