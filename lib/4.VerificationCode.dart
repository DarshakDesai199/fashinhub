import 'package:fashinhub/0.BottamNavBar.dart';
import 'package:fashinhub/3.Mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';

class VerificationCode extends StatefulWidget {
  final String mobileNo;

  const VerificationCode({Key? key, required this.mobileNo}) : super(key: key);

  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  var height;

  var width;

  String? otp;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
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
                  top: 70,
                  left: 25,
                  child: Text(
                    "Verification\nCode",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 270,
                  left: 20,
                  child: Text(
                    "Please enter Code sent to",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "+91 ${widget.mobileNo}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mobile(),
                          ));
                    },
                    child: Text(
                      "Change phone Number",
                      style: TextStyle(
                          color: Color(0xff2D6A4F),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            OtpTextField(
              numberOfFields: 4,
              borderColor: Color(0xFF512DA8),
              margin: EdgeInsets.only(left: 35),

              //set to true to show as box or false to show as dash
              showFieldAsBox: false,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                setState(() {
                  otp = verificationCode;
                });
              }, // end onSubmit
            ),
            SizedBox(
              height: height * 0.22,
            ),
            GestureDetector(
              onTap: () {
                if (otp == null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      "Please enter the OTP..",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    duration: Duration(seconds: 3),
                    backgroundColor: Color(0xff95D5B2),
                  ));
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottamNavBar(),
                      ));
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
                    "Continue",
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
              child: Text(
                "Resend Code",
                style: TextStyle(
                    color: Color(0xff2D6A4F),
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
