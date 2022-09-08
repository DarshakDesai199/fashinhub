import 'package:fashinhub/10.Product.dart';
import 'package:fashinhub/3.Mobile.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var height;
  var width;
  var pageChanged = 0;
  var color = Color(0xff2D6A4F);
  List catalogue = [
    {'image': 'assets/womens fashion.png'},
    {'image': 'assets/male fasion.png'},
    {'image': 'assets/computer.png'},
    {'image': 'assets/mobile.png'},
  ];

  final _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(

      key: _globalKey,

      drawer: Drawer(

        child: SafeArea(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height * 0.18,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Path 52.png"),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    top: 8,
                    left: 15,
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
                    top: 90,
                    left: 10,
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
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "+91 123 456 7890",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: 15,
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(0, 1.5))
                          ]),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: height * 0.065,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset: Offset(1, 1.5),
                                spreadRadius: 3,
                                blurRadius: 3)
                          ]),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Icon(
                            Icons.home,
                            color: color,
                            size: 30,
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: height * 0.065,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset: Offset(1, 1.5),
                                spreadRadius: 3,
                                blurRadius: 3)
                          ]),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Icon(
                            Icons.menu,
                            color: color,
                            size: 30,
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          Text(
                            "Shop by Category",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: height * 0.065,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset: Offset(1, 1.5),
                                spreadRadius: 3,
                                blurRadius: 3)
                          ]),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: color,
                            size: 30,
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          Text(
                            "Your Orders",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: height * 0.065,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset: Offset(1, 1.5),
                                spreadRadius: 3,
                                blurRadius: 3)
                          ]),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: color,
                            size: 30,
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          Text(
                            "Your Wish List",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: height * 0.065,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset: Offset(1, 1.5),
                                spreadRadius: 3,
                                blurRadius: 3)
                          ]),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Icon(
                            Icons.share_outlined,
                            color: color,
                            size: 30,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: height * 0.065,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset: Offset(1, 1.5),
                                spreadRadius: 3,
                                blurRadius: 3)
                          ]),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Icon(
                            Icons.map,
                            color: color,
                            size: 30,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.003,
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
                        margin: EdgeInsets.only(bottom: 15),
                        height: height * 0.065,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: Offset(1, 1.5),
                                  spreadRadius: 3,
                                  blurRadius: 3)
                            ]),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(
                              Icons.logout,
                              color: color,
                              size: 30,
                            ),
                            SizedBox(
                              width: width * 0.035,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffF6F6F6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height * 0.19,
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
                              _globalKey.currentState!.openDrawer();
                            },
                            icon: Icon(
                              Icons.menu,
                              size: 35,
                              color: Colors.white,
                            )),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Fashion",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32),
                            ),
                            Text(
                              "Hub",
                              style: TextStyle(
                                  color: Color(0xffE7B844),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32),
                            ),
                          ],
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_active_outlined,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 30,
                    child: SizedBox(
                      width: width * 0.87,
                      child: TextField(
                          decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 35,
                        ),
                        hintText: "What are you looking for?",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.grey.shade400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: height * 0.225,
                    width: width * 0.97,
                    child: PageView(
                      physics: PageScrollPhysics(),
                      onPageChanged: (value) {
                        setState(() {
                          pageChanged = value;
                        });
                      },
                      children: List.generate(
                        4,
                        (index) => Container(
                          // height: height * 0.225,
                          // width: width * 0.92,
                          margin: EdgeInsets.only(left: 22),
                          decoration: BoxDecoration(
                            // color: Colors.grey,
                            borderRadius: BorderRadius.circular(13),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/Fashion Sale.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fashion Sale",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "See More",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: width * 0.035,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 0,
                    left: 0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            4,
                            (index) => GestureDetector(
                                  onTap: () {
                                    pageChanged = index;
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 3),
                                    height: height * 0.025,
                                    width: width * 0.025,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: pageChanged == index
                                            ? Color(0xff2D6A4F)
                                            : Color(0xff95D5B2)),
                                  ),
                                ))),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Catalogue",
                      style: TextStyle(
                          color: Color(0xff2D6A4F),
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "See All",
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 17),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 17,
                          color: Colors.grey.shade500,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: List.generate(
                        catalogue.length,
                        (index) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Product(),
                                    ));
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: height * 0.14,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "${catalogue[index]['image']}"),
                                        fit: BoxFit.fill)),
                              ),
                            )),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Featured",
                  style: TextStyle(
                      color: Color(0xff2D6A4F),
                      fontSize: 21,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Column(
                children: List.generate(
                    2,
                    (index) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15, left: 15, right: 15),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: height * 0.37,
                                  color: Colors.grey.shade50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Container(
                                            height: height * 0.25,
                                            width: width,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/Home1.png"),
                                                    fit: BoxFit.fill)),
                                          ),
                                          Positioned(
                                            bottom: -10,
                                            right: 10,
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor:
                                                  Colors.grey.shade300,
                                              child: Center(
                                                child: Icon(
                                                  Icons.favorite_border,
                                                  size: 20,
                                                  color: Color(0xff2D6A4F),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: List.generate(
                                            5,
                                            (index) => Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 1,
                                                      vertical: 2),
                                                  child: Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xffFFC107),
                                                  ),
                                                )),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        "Style Womens\nTurtleneck Oversized.. ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        "\$49",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.06,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Product(),
                                        ));
                                  },
                                  child: Container(
                                    height: height * 0.37,
                                    color: Colors.grey.shade50,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              height: height * 0.25,
                                              width: width,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/Home2.png"),
                                                      fit: BoxFit.fill)),
                                            ),
                                            Positioned(
                                              bottom: -10,
                                              right: 10,
                                              child: CircleAvatar(
                                                radius: 15,
                                                backgroundColor:
                                                    Colors.grey.shade300,
                                                child: Center(
                                                  child: Icon(
                                                    Icons.favorite,
                                                    size: 20,
                                                    color: Color(0xffFFC107),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: List.generate(
                                              5,
                                              (index) => Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 1,
                                                        vertical: 2),
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 15,
                                                      color: Color(0xffFFC107),
                                                    ),
                                                  )),
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Text(
                                          "Style Women Open\nFront Long Sleeve Ch..",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Text(
                                          "\$69.99",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
              SizedBox(
                height: height * 0.07,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
