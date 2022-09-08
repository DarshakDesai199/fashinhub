import 'dart:async';

import 'package:fashinhub/0.BottamNavBar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '2.Onboarding.dart';

class SplashScr extends StatefulWidget {
  @override
  _SplashScrState createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  var height;

  var width;
  String? userMobile;

  @override
  void initState() {
    getUserMobile().whenComplete(() => Timer(Duration(seconds: 4), () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    userMobile == null ? OnBoarding() : BottamNavBar(),
              ));
        }));
    super.initState();
  }

  Future getUserMobile() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var obtainedMobile = pref.getString("Mobile");
    setState(() {
      userMobile = obtainedMobile;
    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/splash.png"), fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: height * 0.2,
                    width: width * 0.4,
                    child: Image(
                      image: AssetImage("assets/Logo.png"),
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Fashion",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text(
                      "Hub",
                      style: TextStyle(
                          color: Color(0xffE7B844),
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
