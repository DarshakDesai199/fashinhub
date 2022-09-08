import 'package:fashinhub/13.Cart.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var height;

  var width;
  var pageSelected = 0;
  var colorSelected = 0;
  List sizes = ["XXS", "XS", "S", "M", "L", "XL"];
  var sizeSelected = -1;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.54,
                  child: PageView(
                    physics: PageScrollPhysics(),
                    onPageChanged: (value) {
                      setState(() {
                        pageSelected = value;
                      });
                    },
                    children: List.generate(
                        5,
                        (index) => Container(
                              height: height * 0.52,
                              width: width,
                              // color: Colors.grey,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/Product.png"),
                              )),
                            )),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      5,
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
                                        ? height * 0.03
                                        : height * 0.02,
                                    width: pageSelected == index
                                        ? width * 0.025
                                        : width * 0.02,
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
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Row(
                      children: List.generate(
                          5,
                          (index) => Icon(
                                Icons.star,
                                color: Color(0xffFFC107),
                                size: 18,
                              )),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "8 reviews",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "In Stock",
                      style: TextStyle(fontSize: 18, color: Color(0xff76B55A)),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "Astylish Women Open Front Long\nSleeve Chunky Knit Cardigan",
                  style: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "\$69.99",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Divider(
                  thickness: 15,
                  color: Colors.grey.shade200,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "Colors",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: List.generate(
                      6,
                      (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                colorSelected = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              height: height * 0.065,
                              width: width * 0.11,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade400,
                                        blurRadius: 2,
                                        spreadRadius: 2,
                                        offset: Offset(1, 1.5))
                                  ],
                                  border: Border.all(
                                      color: colorSelected == index
                                          ? Color(0xffE7B844)
                                          : Colors.transparent,
                                      width: 2),
                                  image: DecorationImage(
                                      image: AssetImage("assets/Product.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          )),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "Sizes",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 22),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: List.generate(
                    sizes.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          sizeSelected = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 8),
                        height: height * 0.055,
                        width: width * 0.13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: sizeSelected == index
                                    ? Colors.transparent
                                    : Colors.grey.shade400,
                                width: 2),
                            color: sizeSelected == index
                                ? Color(0xff76B55A)
                                : Colors.white),
                        child: Center(
                            child: Text(
                          sizes[index],
                          style: TextStyle(
                              fontSize: 17,
                              color: sizeSelected == index
                                  ? Colors.white
                                  : Colors.grey),
                        )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Divider(
                  thickness: 15,
                  color: Colors.grey.shade200,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  "Product Details",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  '''Women's Casual V-Neck Pullover Sweater long 
Sleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...''',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Center(
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 25,
                    color: Colors.grey.shade600,
                  ),
                ),
                Divider(
                  thickness: 15,
                  color: Colors.grey.shade200,
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Row(
                  children: [
                    Text(
                      "Reviews",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey.shade500,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  "Dipika Patel",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                SizedBox(
                  height: height * 0.004,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(
                          5,
                          (index) => Icon(
                                Icons.star,
                                color: Color(0xffFFC107),
                                size: 18,
                              )),
                    ),
                    Text(
                      "June 1,2020",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade500),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  '''Soft and comfortable material, fitting is very nice, length is between a crop and normal sweatshirt.
perfect sweatshirt also the colour is very classy and most imp it is same as shown in the picture.''',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Divider(
                  thickness: 15,
                  color: Colors.grey.shade200,
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
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
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/Home1.png"),
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
                              SizedBox(
                                height: height * 0.01,
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
                                "\$69",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
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
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/Home1.png"),
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
                              SizedBox(
                                height: height * 0.01,
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
                                "\$79",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.003,
                ),
                Divider(
                  thickness: 15,
                  color: Colors.grey.shade200,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 35,
                    ),
                  ),
                  title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cart(),
                          ));
                    },
                    child: Container(
                      height: height * 0.055,
                      decoration: BoxDecoration(
                          color: Color(0xff995D5B2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.favorite_border,
                    color: Color(0xff2D6A4F),
                    size: 35,
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
