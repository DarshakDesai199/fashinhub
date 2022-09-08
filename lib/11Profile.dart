import 'package:fashinhub/12.Favorite.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '3.Mobile.dart';

class Profile extends StatelessWidget {
  var height;
  var width;
  var color = Color(0xff2D6A4F);
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/Path 52.png",
                  ),
                  Positioned(
                    top: 29,
                    left: 25,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 39,
                        backgroundImage: AssetImage("assets/profile.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 120,
                    top: 35,
                    child: Container(
                      height: height * 0.10,
                      width: width * 0.55,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Oleh Chabanov",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "+91 123 456 7890",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 65,
                    right: 16,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.edit_outlined,
                        size: 30,
                        color: Color(0xff2D6A4F),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.065,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 2,
                          offset: Offset(0, 1.5),
                          blurRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 30,
                        color: color,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        "Shipping Addresses",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.065,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 2,
                          offset: Offset(0, 1.5),
                          blurRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.payment_outlined,
                        size: 30,
                        color: color,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        "Payment Methods",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.065,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 2,
                          offset: Offset(0, 1.5),
                          blurRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.library_add_check_outlined,
                        size: 30,
                        color: color,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        "Orders",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Favorite(),
                      ));
                },
                child: Container(
                  height: height * 0.065,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 2,
                            offset: Offset(0, 1.5),
                            blurRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: color,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          "Favorite",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.065,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 2,
                          offset: Offset(0, 1.5),
                          blurRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 30,
                        color: color,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              GestureDetector(
                onTap: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref
                      .remove("Mobile")
                      .then((value) => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mobile(),
                          )));
                },
                child: Container(
                  child: Container(
                    height: height * 0.065,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 2,
                              offset: Offset(0, 1.5),
                              blurRadius: 2)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            size: 30,
                            color: color,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "Log out",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey.shade500,
                        decoration: TextDecoration.underline),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
