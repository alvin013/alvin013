import 'dart:async';
import 'package:alpha/Pages/Loginform.dart';
import 'package:alpha/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
     @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginForm()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(("assets/images/ALP-2.png"),
            width: double.infinity,
            height: MediaQuery.of(context).size.height/2,
            ),
                
              SizedBox(height: 20,),
            CircularProgressIndicator(),
             SizedBox(height: 60,),
            Text('هێزی ئەلفا',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily:'Rabar'),
              ),
          ],
        ),
      ),
        ],
      ),
    );
  }
}


