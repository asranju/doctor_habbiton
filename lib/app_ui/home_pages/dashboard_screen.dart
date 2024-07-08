import 'package:flutter/material.dart';
import 'package:habbiton_doctors_app/common_widget/common_appointment_create_bottom_sheet.dart';
import 'package:habbiton_doctors_app/common_widget/common_text.dart';
import 'package:habbiton_doctors_app/utils/app_color.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:pie_chart/pie_chart.dart';

class DashBoardScreen extends StatefulWidget{
  const DashBoardScreen({super.key});


  @override
  DashBoardUI createState()=> DashBoardUI();
}

class DashBoardUI extends State<DashBoardScreen>{

  Map<String, double> dataMap = {
    "": 5,
  };
  final colorList = <Color>[
    AppColors.greenPrimary,
  ];

  final colorList2 = <Color>[
AppColors.pieRingColor
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          const SizedBox(height: 40,),
          Row(children: [
            Icon(Icons.ac_unit_sharp,color: AppColors.greenPrimary,),
          const SizedBox(width: 5,),
          CommonText(text: DateFormat('EEE dd MMM').format(DateTime.now()),textColor: AppColors.greenPrimary,fontWeight: FontWeight.w400,fontSize: 13,)
            ]),

          const SizedBox(height: 5,),
          CommonText(text: DateFormat('Hi, User').format(DateTime.now()),textColor: AppColors.darkGreen,fontWeight: FontWeight.w600,fontSize: 30,),
            const SizedBox(height: 10,),

            Container(
              height: MediaQuery.of(context).size.height * .14,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 30),
              decoration:const BoxDecoration(

                borderRadius: BorderRadius.only(topRight: Radius.circular(65),topLeft:  Radius.circular(10),bottomLeft:  Radius.circular(10),bottomRight:  Radius.circular(10)),
                  gradient: LinearGradient(
                      colors: [
                        const Color(0xFF1E862A),
                        const Color(0xFF30A945),
                      ]),
                image:DecorationImage(
                  image: AssetImage(
                      'assets/images/RectangleBgHome.png'),
                  fit: BoxFit.cover,
                ),
                ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(text: "Continue Workout",textColor: AppColors.primaryColor,fontSize: 13,fontWeight: FontWeight.w400,),
                  const SizedBox(height: 5,),
                  CommonText(text: "Legs Toning and \nGlutes Workout at Home",textColor: AppColors.primaryColor,)
                ],) ,),

            const SizedBox(height: 10,),
            CommonText(text: "Metrics",textColor: AppColors.darkGreen,fontSize: 19,fontWeight: FontWeight.w500,),
            const SizedBox(height: 10,),
            Container(child: Row(children: [
              Expanded(child: Column(children: [
                Card(elevation: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.18,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(children: [

                    Container(
                        padding: EdgeInsets.all(15),
                        child:  Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        CommonText(text: "Calories",fontWeight: FontWeight.w500,fontSize: 15,),
                          Icon(Icons.line_axis_outlined,color: AppColors.greenPrimary,)
                      ],)),

                      const SizedBox(height: 10,),

                      PieChart(
                        dataMap: dataMap,
                        animationDuration:const Duration(milliseconds: 800),
                        chartRadius: MediaQuery.of(context).size.width / 5.2,
                        colorList: colorList,
                        initialAngleInDegree: 0,
                        chartLegendSpacing: 50,
                        chartType: ChartType.ring,
                        ringStrokeWidth: 30,
                        centerText: "500",
                        legendOptions: LegendOptions(
                          showLegends: false
                        ),
                        chartValuesOptions: const ChartValuesOptions(
                          showChartValueBackground: false,
                          showChartValues: false,
                          showChartValuesInPercentage: false,
                          showChartValuesOutside: false,
                          decimalPlaces: 1,
                        ),

                        // gradientList: ---To add gradient colors---
                        // emptyColorGradient: ---Empty Color gradient---
                      )

                    ],),

                  ),),
                Card(elevation: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(children: [

                      Container(
                          padding: EdgeInsets.all(15),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommonText(text: "Water",fontWeight: FontWeight.w500,fontSize: 15,),
                              Icon(Icons.water_drop_outlined,color: Colors.blueAccent,)
                            ],)),

                      const SizedBox(height: 5,),
                      CommonText(text: "03",fontWeight: FontWeight.w500,fontSize: 20),
                      const SizedBox(height: 2,),
                      CommonText(text: "liter",fontSize: 13,fontWeight: FontWeight.w400),
                      const SizedBox(height: 5,),

                      Image.asset('assets/images/water.png',fit: BoxFit.cover,)

                    ],),

                  ),)
              ],)),
              const SizedBox(width: 10,),
              Expanded(child: Column(children: [
                Card(elevation: 5,
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.24,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),

                  child: Column(children: [

                    Container(
                        padding: EdgeInsets.all(15),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(text: "Heart rate",fontWeight: FontWeight.w500,fontSize: 15,),
                            Icon(Icons.favorite,color: Colors.red,)
                          ],)),
                    

                    CommonText(text: "69",fontSize: 20,fontWeight: FontWeight.w500,),
                    CommonText(text: "bpm",fontSize: 13,fontWeight: FontWeight.w400,),


                    Image.asset('assets/images/heartrate.png',fit: BoxFit.cover,)
                    

                  ],),


                ),),
                Card(elevation: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    decoration:const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(children: [

                      Container(
                          padding:const EdgeInsets.all(15),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             const CommonText(text: "Steps",fontWeight: FontWeight.w500,fontSize: 15,),
                             Image.asset('assets/images/steps.png')
                            ],)),

                      const SizedBox(height: 10,),

                      PieChart(
                        dataMap: dataMap,
                        animationDuration:const Duration(milliseconds: 800),
                        chartRadius: MediaQuery.of(context).size.width / 5.2,
                        colorList: colorList2,
                        initialAngleInDegree: 0,
                        chartLegendSpacing: 50,
                        chartType: ChartType.ring,
                        ringStrokeWidth: 30,
                        centerText: "500",
                        legendOptions: LegendOptions(
                            showLegends: false
                        ),
                        chartValuesOptions: const ChartValuesOptions(
                          showChartValueBackground: false,
                          showChartValues: false,
                          showChartValuesInPercentage: false,
                          showChartValuesOutside: false,
                          decimalPlaces: 1,
                        ),

                        // gradientList: ---To add gradient colors---
                        // emptyColorGradient: ---Empty Color gradient---
                      )

                    ],),

                  ),)
                
              ],)),

            ],),),

            const SizedBox(height: 10,),
            CommonText(text: "Meals Today",textColor: AppColors.darkGreen,fontSize: 19,fontWeight: FontWeight.w500,),
            const SizedBox(height: 10,),

            Container(
              height: MediaQuery.of(context).size.height * .20,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemBuilder: (context,int index){
              return Container(
                width: MediaQuery.of(context).size.width/2.8,
                margin:const EdgeInsets.only(left: 2),
                child: Image.asset('assets/images/meals.png',fit: BoxFit.fill),);

            }),),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

              CommonText(text: "Appointments",textColor: AppColors.darkGreen,fontSize: 19,fontWeight: FontWeight.w500,),

              IconButton(onPressed: (){

    showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return CommonAppointmentCreateBottomSheet(

      );
    });
              }, icon:  Icon(Icons.add,color: AppColors.greenPrimary,))
            ],),
            const SizedBox(height: 10,),

            Container(
              padding: EdgeInsets.zero,
              height: MediaQuery.of(context).size.height * 0.40,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  itemBuilder: (BuildContext context,int index){

                  return Card(child: Container(
                    padding:const EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height * 0.12,
                    decoration:const BoxDecoration(
                      borderRadius:  BorderRadius.all(Radius.circular(10))
                    ),

                    child: Row(children: [
                      Expanded(child: Column(
                        crossAxisAlignment:CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(Icons.video_call,color: AppColors.greenPrimary,size: 30),
                          CommonText(text: "09:00",fontWeight: FontWeight.w400,textColor: AppColors.greyText,fontSize: 13),
                          CommonText(text: "1 hr",fontWeight: FontWeight.w400,textColor: AppColors.greyText,fontSize: 13),

                      ],)),
                      VerticalDivider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      Expanded(flex:3,child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                        CommonText(text: "Appointment with Dr. Samual",fontWeight: FontWeight.w600,textColor: Colors.black,fontSize: 15),
                        CommonText(text: "Ortho Specialist (MBBS, MD)",fontWeight: FontWeight.w400,textColor: AppColors.greyText,fontSize: 13,),
                        Row(children: [
                          Icon(Icons.location_on,color: AppColors.greenPrimary,),
                          const SizedBox(width: 3,),
                          CommonText(text: "Medicity, Kollam, Kerala",fontWeight: FontWeight.w400,textColor: AppColors.greenPrimary,fontSize: 13,),
                          ])

                      ],)),


                    ],),
                  ),);
            }))




          ],),),
    );
  }
}