import 'package:flutter/material.dart';

import '3.Mobile.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var height;

  var width;

  PageController pageController = PageController(initialPage: 0);

  var pageSelected = 0;
  var pageChanged = false;

  List screen = [
    {
      'image': 'assets/onboardig1.png',
      'title': 'Online Order',
      'subtitle':
          'You can see the product with all angles,\ntrue and convenient'
    },
    {
      'image': 'assets/onboarding2.png',
      'title': 'Easy Payment',
      'subtitle':
          'You just need to take a photo or upload and\nwe will find similar products for you.'
    },
    {
      'image': 'assets/onboarding3.png',
      'title': 'Fast Delivery',
      'subtitle':
          'You just need to take a photo or upload and\nwe will find similar products for you.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.74,
              child: PageView(
                  controller: pageController,
                  physics: PageScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() {
                      pageSelected = value;
                      pageChanged = value == 2;
                    });
                  },
                  children: List.generate(
                    screen.length,
                    (index) => Container(
                      height: height,
                      width: width,
                      // color: Colors.grey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.10,
                          ),
                          Container(
                            height: height * 0.30,
                            width: width * 0.85,
                            // color: Colors.white,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("${screen[index]['image']}"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Text(
                            screen[index]['title'],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Text(
                            screen[index]['subtitle'],
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pageSelected = index;
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                height: pageSelected == index
                                    ? height * 0.04
                                    : height * 0.03,
                                width: pageSelected == index
                                    ? width * 0.03
                                    : width * 0.0225,
                                decoration: BoxDecoration(
                                    color: pageSelected == index
                                        ? Color(0xff2D6A4F)
                                        : Color(0xff95D5B2),
                                    shape: BoxShape.circle),
                              ),
                            ),
                          )
                        ],
                      )),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageChanged
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mobile(),
                          ))
                      : pageController.jumpToPage(2);
                });
              },
              child: Container(
                height: height * 0.085,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Color(0xff95D5B2),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: pageChanged
                      ? Text(
                          "Get Started!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        )
                      : Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
