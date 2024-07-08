import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habbiton_doctors_app/common_widget/common_button.dart';
import 'package:habbiton_doctors_app/common_widget/common_text.dart';
import 'package:habbiton_doctors_app/utils/app_color.dart';
import 'package:hexcolor/hexcolor.dart';

class CommonAppointmentCreateBottomSheet extends StatefulWidget{
  const CommonAppointmentCreateBottomSheet({super.key});



  @override
  CommonAppointmentCreateBottomSheetUI createState()=> CommonAppointmentCreateBottomSheetUI();
}

class CommonAppointmentCreateBottomSheetUI extends State<CommonAppointmentCreateBottomSheet>{


  
  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      padding:const EdgeInsets.all(15),
      child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const CommonText(text: "Fix appointments"),
        const SizedBox(height: 15,),
        Row(children: [
          CommonButton(text: "Visit", onPressed: (){}, isActiveButton: true,height: 45,width: MediaQuery.of(context).size.width / 4,widget:const Icon(Icons.airplanemode_active),fontSize: 11,fontWeight: FontWeight.w400,),
          const SizedBox(width: 5,),
          CommonButton(text: "Video Call", onPressed: (){}, isActiveButton: false,height: 45,width: MediaQuery.of(context).size.width / 3.2,widget: const Icon(Icons.video_call),fontSize: 11,fontWeight: FontWeight.w400,),
          const SizedBox(width: 5,),
          CommonButton(text: "Voice Call", onPressed: (){}, isActiveButton: false,height: 45,width: MediaQuery.of(context).size.width / 3.2,widget: const Icon(Icons.phone),fontSize: 11,fontWeight: FontWeight.w400,),


        ],),
        const SizedBox(height: 10,),
        const CommonText(text: "Select doctor"),
        const SizedBox(height: 15,),

        Container(

          height: MediaQuery.of(context).size.height * .10,
          decoration: BoxDecoration(
              color: HexColor("#F1F1F1"),
              borderRadius:const BorderRadius.all(Radius.circular(10))
          ),
          child: Row(children: [

            Expanded(
              flex: 2,
                child: Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
              child: Image.asset('assets/images/doctor.jpg',fit: BoxFit.fill,),
            )),

            const SizedBox(width: 5,),
            Expanded(
              flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 const CommonText(text: "Dr. Samual",fontWeight: FontWeight.w600,fontSize: 15,),
                  CommonText(text: "Ortho Specialist (MBBS, MD)",textColor: AppColors.greyText,fontSize: 13,fontWeight: FontWeight.w500,),
                  CommonText(text: "Medicity Hospital, Kollam",textColor: AppColors.greyText,fontSize: 13,fontWeight: FontWeight.w500,),

                ],)),

            Expanded(

                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(8.0),
                    child:Container(
                        color: AppColors.greenPrimary,child: Icon(Icons.search,color: Colors.white,)
                  )),
                )),

          ],),),

        const SizedBox(height: 10,),
        const CommonText(text: "Time"),
        const SizedBox(height: 10,),
        Row(children: [
          CommonButton(text: "10:00 AM - 11: AM", onPressed: (){}, isActiveButton: true,fontSize: 10,fontWeight: FontWeight.w400,height: 45,width: MediaQuery.of(context).size.width/2.6,),
          const SizedBox(width: 3,),
          CommonButton(text: "10:00 AM - 11: AM", onPressed: (){}, isActiveButton: false,fontSize: 10,fontWeight: FontWeight.w400,height: 45,width: MediaQuery.of(context).size.width/2.6,normalButtonTextColor: Colors.black,normalBackgroundColor: AppColors.buttonBg,borderColor: AppColors.buttonBg,)

        ],),
        const SizedBox(height: 5,),
        Row(children: [
          CommonButton(text: "10:00 AM - 11: AM", onPressed: (){}, isActiveButton: false,fontSize: 10,fontWeight: FontWeight.w400,height: 45,width: MediaQuery.of(context).size.width/2.6,normalButtonTextColor: Colors.black,normalBackgroundColor: AppColors.buttonBg,borderColor: AppColors.buttonBg,),
          const SizedBox(width: 3,),
          CommonButton(text: "10:00 AM - 11: AM", onPressed: (){}, isActiveButton: false,fontSize: 10,fontWeight: FontWeight.w400,height: 45,width: MediaQuery.of(context).size.width/2.6,normalButtonTextColor: Colors.black,normalBackgroundColor: AppColors.buttonBg,borderColor: AppColors.buttonBg,)

        ],),
        const SizedBox(height: 5,),
        Icon(Icons.more_horiz,color: AppColors.greenPrimary,),
        const SizedBox(height: 5,),
        CommonText(text: "You have a session tomorrow", fontSize: 13,fontWeight: FontWeight.w500,textColor: AppColors.greenPrimary,),
        const SizedBox(width: 3,),
        CommonText(text: "Your last session was on Sat May 21",fontSize: 10,fontWeight: FontWeight.w500,textColor:  AppColors.buttonBg,),
        const SizedBox(height: 10,),
        CommonButton(text: "Fix appointment", onPressed: (){}, isActiveButton: true,height: 50,width: MediaQuery.of(context).size.width ),

      ],),);

  }


}