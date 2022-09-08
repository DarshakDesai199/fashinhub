import 'package:fashinhub/8.Westernwear.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var height;
  var width;
  var color = Color(0xffB7E4C7);
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height * 0.15,
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                              size: 35,
                              color: Colors.white,
                            )),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Categories",
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
                  Positioned(
                    top: 100,
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
              Container(
                height: height * 0.16,
                width: width,
                color: color.withOpacity(0.6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height,
                      width: width * .7,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.03),
                            Drop(),
                            Text(
                              "Top & Tees, Kutrtas & Suits...",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/women.png"),
                              fit: BoxFit.cover)),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.16,
                width: width,
                color: color.withOpacity(0.6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height,
                      width: width * .65,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.03),
                            Row(
                              children: [
                                Text(
                                  "MEN",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Icon(Icons.keyboard_arrow_down_sharp)
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "T-Shirts,Shirts,jeans,Shoes...",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/men.png"),
                              fit: BoxFit.cover)),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.16,
                width: width,
                color: color.withOpacity(0.6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height,
                      width: width * .65,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.03),
                            Row(
                              children: [
                                Text(
                                  "KIDS",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Icon(Icons.keyboard_arrow_down_sharp)
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Clothing, footwear,Brands...",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/kids.png"),
                              fit: BoxFit.cover)),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.16,
                width: width,
                color: color.withOpacity(0.6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height,
                      width: width * .65,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.03),
                            Row(
                              children: [
                                Text(
                                  "HOME & \nKITCHEN",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Icon(Icons.keyboard_arrow_down_sharp)
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Sofa, Bedsheet,Cushion...",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/home&kitchen.png"),
                              fit: BoxFit.cover)),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.16,
                width: width,
                color: color.withOpacity(0.6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height,
                      width: width * .65,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.03),
                            Row(
                              children: [
                                Text(
                                  "BEAUTY",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Icon(Icons.keyboard_arrow_down_sharp)
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Makeup, Fragrance,Groom...",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/beauty.png"),
                              fit: BoxFit.cover)),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.16,
                width: width,
                color: color.withOpacity(0.6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height,
                      width: width * .65,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.03),
                            Row(
                              children: [
                                Text(
                                  "GADGETS",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Icon(Icons.keyboard_arrow_down_sharp)
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Head phone, Mobile covers...",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/gadgets.png"),
                              fit: BoxFit.cover)),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Drop extends StatefulWidget {
  @override
  _DropState createState() => _DropState();
}

class _DropState extends State<Drop> {
  List<String> women = [
    'Women',
    'Westernwear',
    'Ethnic & Fusionwear',
    'Footwear',
    'Lingerie',
    'Bags, Wallets & Cluthes',
    'Jewellery',
    'Other Accessories',
    'Beauty & Personal Care',
    'Sports & Activewear',
    'Luggage & Trolleys',
    'Sleepwear & Longwear',
    'Watches',
    'Winterwear Store',
    'Gifts Card'
  ];

  String selectedValue = 'Women';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      icon: Icon(Icons.keyboard_arrow_down),
      value: selectedValue,
      underline: Container(),
      hint: Text(
        "WOMEN",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      items: women.map(
        (e) {
          return DropdownMenuItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(e),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WesternWear(),
                          ));
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                    ))
              ],
            ),
            value: e,
          );
        },
      ).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
    );
  }
}
