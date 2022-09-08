import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  var height;

  var width;

  double sliderValue = 0;
  RangeValues _currentRangeValues = const RangeValues(0, 5000);

  List color = [
    0xff000000,
    0xffCE3E3E,
    0xff76B55A,
    0xff5D71E1,
    0xffB868B9,
    0xffE3D224,
    0xff21CECE,
  ];
  var colorSelected = 0;
  List sizes = ["XXS", "XS", "S", "M", "L", "XL"];
  var sizeSelected = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.135,
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
                  padding: const EdgeInsets.only(top: 30),
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
                          "Filter",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete_outlined,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 22),
                    ),
                    RangeSlider(
                      values: _currentRangeValues,
                      activeColor: Color(0xffE7B844),
                      inactiveColor: Colors.grey.shade300,
                      max: 10000,
                      divisions: 10,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      height: height * 0.065,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.black,
                              child: Center(
                                child: Text(
                                  "\$ ${_currentRangeValues.start.toStringAsFixed(0)}",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.grey.shade600),
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            thickness: 3,
                          ),
                          Expanded(
                              child: Container(
                            // color: Colors.yellow,
                            child: Center(
                              child: Text(
                                "\$ ${_currentRangeValues.end.toStringAsFixed(0)}",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.grey.shade600),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Text(
                      "Categories",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 22),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.065,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dresses",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 20),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: Colors.grey.shade600,
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Text(
                      "Brands",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 22),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.065,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lark & Ro, Astylish,ECOWISH, Angashhion",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 15),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: Colors.grey.shade600,
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Text(
                      "Colors",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 22),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: List.generate(
                          color.length,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      colorSelected = index;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundColor: colorSelected == index
                                        ? Color(0xffE7B844)
                                        : Colors.white,
                                    child: CircleAvatar(
                                      radius: 19,
                                      backgroundColor: Color(color[index]),
                                    ),
                                  ),
                                ),
                              )),
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Text(
                      "Sizes",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 22),
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
                                    ? Color(0xff52B788)
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
                      height: height * 0.06,
                    ),
                    Text(
                      "Sorted by",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 22),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: height * 0.065,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Featured",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 20),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: Colors.grey.shade600,
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.045,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Color(0xff95D5B2),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Center(
                        child: Text(
                          "Results (186)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
