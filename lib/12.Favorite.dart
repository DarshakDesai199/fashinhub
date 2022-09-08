import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  var height;
  var width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.13,
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
                        "Favorite",
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
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "5 Items",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "Sort By :",
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade500),
                      ),
                      Text(
                        "Price: lowest to high",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Expanded(
                child: GridView.builder(
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 10,
                  mainAxisExtent: 300,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 5),
              itemBuilder: (context, index) => Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: height * 0.4,
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
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/Home1.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Positioned(
                            bottom: -10,
                            right: 10,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.grey.shade300,
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 2),
                                  child: Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Color(0xffFFC107),
                                  ),
                                )),
                      ),
                      Text(
                        "Style Womens\nTurtleneck Oversized.. ",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
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
            ))
          ],
        ),
      ),
    );
  }
}
