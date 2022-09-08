import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  var height;

  var width;

  List delivery = [
    {'image': 'assets/dhl.png', 'price': '\$15', 'time': '1-2 days'},
    {'image': 'assets/FedEx.png', 'price': '\$20', 'time': '1-2 days'},
    {'image': 'assets/Blue_Dart.png', 'price': '\$18', 'time': '1-2 days'},
  ];

  var deliverySelected = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.12,
              width: width,
              decoration: BoxDecoration(
                  color: Color(0xff2D6A4F),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  gradient: LinearGradient(
                      colors: [Color(0xff2D6A4F), Color(0xff95D5B2)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight)),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Colors.white,
                      )),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Check Out",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff2D6A4F),
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "Shipping Address",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Container(
                      height: height * 0.12,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 2,
                                spreadRadius: 4,
                                offset: Offset(1, 1.5))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Oleh Chabanav",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Change",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                      size: 20,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "225, Highland Area,\nSprigfield,ll 62704,USA",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.local_shipping_outlined,
                          color: Color(0xff2D6A4F),
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "Shipping Address",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: List.generate(
                          delivery.length,
                          (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    deliverySelected = index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: height * 0.13,
                                  width: width * 0.27,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: deliverySelected == index
                                              ? Colors.orange
                                              : Colors.transparent,
                                          width: 2),
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade300,
                                            blurRadius: 2,
                                            spreadRadius: 4,
                                            offset: Offset(1, 1.5))
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 15),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height * 0.035,
                                          width: width,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "${delivery[index]['image']}"),
                                                  fit: BoxFit.fill)),
                                        ),
                                        SizedBox(
                                          height: height * 0.0051,
                                        ),
                                        Text(
                                          delivery[index]['price'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          height: height * 0.0051,
                                        ),
                                        Text(
                                          "1-2 days",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.grey.shade700),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.payment_rounded,
                          color: Color(0xff2D6A4F),
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "Payment Methods",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.065,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 2,
                                spreadRadius: 4,
                                offset: Offset(1, 1.5))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.06,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/mastercard.png'))),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "**** **** **** **45",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  "Change",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade600),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.grey.shade600,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              height: height * 0.25,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "items",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 18),
                        ),
                        Text(
                          "\$199.89",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 18),
                        ),
                        Text(
                          "\$20",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "\$219.98",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      height: height * 0.065,
                      width: width,
                      decoration: BoxDecoration(
                          color: Color(0xff95D5B2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Pay",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
