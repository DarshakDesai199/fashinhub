// import 'packages/country_code_picker/flags/in.png';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:fashinhub/4.VerificationCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '5.Home.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  var height;

  var width;
  var selectedValue = "India";
  var _mobile = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height * 0.352,
                    width: width,
                    child: SvgPicture.asset("assets/Group 144.svg"),
                  ),
                  Positioned(
                    top: 100,
                    left: 25,
                    child: Text(
                      "What is Your Phone\nNumber?",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 25,
                    child: Text(
                      "Please enter your phone number to\nverify your account",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 21,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Container(
                  height: height * 0.073,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.grey.shade500, width: 2)),
                  child: Row(
                    children: [
                      CountryCodePicker(
                        onChanged: print,
                        initialSelection: 'IN',
                        backgroundColor: Colors.grey.shade400,
                        favorite: ['+91', 'IN'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                      VerticalDivider(
                        thickness: 3,
                        color: Colors.grey.shade500,
                      ),
                      Container(
                        width: width * 0.55,
                        // color: Colors.grey,
                        child: TextFormField(
                          controller: _mobile,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter the valid Mobile No.";
                            } else if (value.length == 9) {
                              return "Mobile No. Must be at least 10 Digits";
                            }
                          },
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: " 123 456 7890",
                              hintStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade300)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.32,
              ),
              GestureDetector(
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs
                        .setString("Mobile", _mobile.text)
                        .then((value) => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  VerificationCode(mobileNo: _mobile.text),
                            )));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: height * 0.08,
                    width: width,
                    decoration: BoxDecoration(
                        color: Color(0xff95D5B2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Send Verification Code",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Color(0xff2D6A4F),
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
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
