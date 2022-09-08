import 'package:flutter/material.dart';

import '9.Filter.dart';

class WesternWear extends StatefulWidget {
  @override
  _WesternWearState createState() => _WesternWearState();
}

class _WesternWearState extends State<WesternWear>
    with SingleTickerProviderStateMixin {
  var height;

  var width;
  TabController? _tabController;
  var tabSelected = 0;

  List tabItems = ["All", "Dresses", "Tops", "Sweater", "Jeans"];

  @override
  void initState() {
    _tabController = TabController(length: tabItems.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
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
                            "Westernwear",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Filter(),
                              ));
                        },
                        icon: Icon(
                          Icons.add_road,
                          size: 30,
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
              height: height * 0.06,
            ),
            TabBar(
                onTap: (value) {
                  setState(() {
                    tabSelected = value;
                  });
                },
                controller: _tabController,
                indicatorColor: Colors.transparent,
                isScrollable: true,
                tabs: List.generate(
                  tabItems.length,
                  (index) => Container(
                    height: 37,
                    width: 80,
                    decoration: BoxDecoration(
                        color: tabSelected == index
                            ? Color(0xff95D5B2)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(1, 2),
                              color: Colors.grey.shade300)
                        ]),
                    child: Center(
                      child: Text(
                        tabItems[index],
                        style: TextStyle(
                            color: tabSelected == index
                                ? Colors.white
                                : Colors.grey.shade600,
                            fontSize: 16),
                      ),
                    ),
                  ),
                )),
            Expanded(
                child: TabBarView(controller: _tabController, children: [
              Items(),
              Items(),
              Items(),
              Items(),
              Items(),
            ]))
          ],
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  var height;
  var width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "108 Items",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "Sort By :",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 17),
                      ),
                      Row(
                        children: [
                          Text(
                            "Featured",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 25,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Column(
              children: List.generate(
                  3,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                              child: Container(
                                height: height * 0.37,
                                color: Colors.grey.shade50,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                            )
                          ],
                        ),
                      )),
            ),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
