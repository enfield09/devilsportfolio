import 'package:devil/base/app_colors.dart';
import 'package:devil/base/app_font.dart';
import 'package:devil/home/home_view.dart';
import 'package:flutter/cupertino.dart';

class AppWidgets{

  Widget commonTemplate({required GlobalKey key, required BuildContext context, required childWidget}){
    return SizedBox(
        key: key,
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        child:  childWidget
    );
  }

  Widget clickbleWidget({required Widget childWidget, required Function btnAction}){
    return
    GestureDetector(
      child: childWidget,
      onTap: (){
        btnAction();
      },
    );
  }

  Widget AppBarWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(right:10, left: 10),
          child: AppWidgets().clickbleWidget(
            childWidget: Text("About",
              style: TextStyle(
                color: AppColors.appWhite,
                fontFamily: AppFont.titilliumWebSemiBold,
                fontSize: 20,
              ),),
            btnAction: (){
              Scrollable.ensureVisible(key1.currentContext!,duration: Duration(seconds: 3));
            } ,),
        ),

        Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: AppWidgets().clickbleWidget(
            childWidget: const Text("Projects",
              style: TextStyle(
                color: AppColors.appWhite,
                fontFamily: AppFont.titilliumWebSemiBold,
                fontSize: 20,

              ),),
            btnAction: (){
              Scrollable.ensureVisible(key2.currentContext!,duration: Duration(seconds: 3));
            } ,),
        ),

        Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: AppWidgets().clickbleWidget(
            childWidget: const Text("Experince",
              style: TextStyle(
                color: AppColors.appWhite,
                fontFamily: AppFont.titilliumWebSemiBold,
                fontSize: 20,
              ),),
            btnAction: (){
              Scrollable.ensureVisible(key3.currentContext!,duration: Duration(seconds: 3));
            } ,),
        ),

        Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: AppWidgets().clickbleWidget(
            childWidget: Text("Skills",
              style: TextStyle(
                color: AppColors.appWhite,
                fontFamily: AppFont.titilliumWebSemiBold,
                fontSize: 20,
              ),),
            btnAction: (){
              Scrollable.ensureVisible(key4.currentContext!,duration: Duration(seconds: 3));
            } ,),
        ),

        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: AppWidgets().clickbleWidget(
            childWidget: Text("Contact",
              style: TextStyle(
                color: AppColors.appWhite,
                fontFamily: AppFont.titilliumWebSemiBold,
                fontSize: 20,
              ),),
            btnAction: (){
              Scrollable.ensureVisible(key5.currentContext!,duration: Duration(seconds: 3));
            } ,),
        ),

      ],
    );
  }
}