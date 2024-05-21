import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget myCarScreenRow(context, first, second){
  return  Container(
    margin: EdgeInsets.only(top: 1.5.h),
    child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(first, style: Theme.of(context).textTheme.titleSmall),
                  Text(second , style: Theme.of(context).textTheme.titleSmall,textAlign: TextAlign.end,)
                  ],
              ),
  );
}