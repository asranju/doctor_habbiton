import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});



  @override
  SplashUI createState()=> SplashUI();
}

class SplashUI extends State<SplashScreen>{



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timeCount();
  }

  timeCount() {
    Future.delayed(const Duration(seconds: 3), () {
      //  BlocProvider.of<AuthCheckBloc>(context).add(CheckAuth());
      Navigator.of(context).pushNamedAndRemoveUntil('/dashboard', (Route<dynamic> route) => false, arguments: 0);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child:Image.asset('assets/images/doctor.jpg',))
    );
  }



}