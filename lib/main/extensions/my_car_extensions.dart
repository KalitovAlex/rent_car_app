part of '../screen/my_car_screen.dart';
extension on _MyCarScreenState {
  Future showmodalBottom(){
    return showModalBottomSheet(backgroundColor: Colors.transparent,context: context, builder: (BuildContext context){
      return Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              height: 90.h,
              child: Container(
                height: height(context),
                width: width(context),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(45, 45, 53, 1),
                  borderRadius: BorderRadius.circular(30)
                ),
                padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 5.h),
                child: Column(
                  children: [
                    Text('ФИО',style: Theme.of(context).textTheme.titleSmall,),
                  ],
                ),
              ),
            ),
          ),
      );
    });
  }
}
