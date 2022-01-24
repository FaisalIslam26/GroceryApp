import 'dart:math';

import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int dcount = 0;
  int count = 0;
  increaseCount() {
    setState(() {
      count++;
    });
  }

  dcreaseCount() {
    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }

  List<Widget> image = [
    Image.asset("assets/images/Tommato.png"),
    Image.asset("assets/images/egg.png"),
    Image.asset("assets/images/banana.png"),
    Image.asset("assets/images/ginger.png"),
  ];

  List<String> title = [
    "Bell Pepper Red",
    "Egg Chicken Red",
    "Organic Bananas",
    "Ginger",
  ];

  List<String> subtitle = [
    "1kg, Price",
    "4pcs, Price",
    "12kg, Price",
    "250gm, Price",
  ];

  List<String> price = [
    "\$4.99",
    "\$1.99",
    "\$3.00",
    "\$2.99",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        title: Text("My Cart"),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, int) {
                return Divider(
                    thickness: 1, color: Colors.grey.withOpacity(0.30));
              },
              scrollDirection: Axis.vertical,
              itemCount: title.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext, int index) {
                return ListTile(
                  leading: Container(
                    height: double.infinity,
                    child: image[index],
                  ),
                  minLeadingWidth: 75,
                  isThreeLine: true,
                  title: Text(
                    "${title[index]}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 140),
                        child: Text(
                          "${subtitle[index]}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipOval(
                            child: Material(
                              child: IconButton(
                                  onPressed: () {
                                    dcreaseCount();
                                  },
                                  icon:
                                      Icon(Icons.remove, color: Colors.black)),
                            ),
                          ),
                          Text(
                            "$count",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          ClipOval(
                            child: IconButton(
                              onPressed: () {
                                increaseCount();
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: FittedBox(
                    fit: BoxFit.fill,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipOval(
                          child: Material(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.close),
                            ),
                          ),
                        ),
                        Text(
                          "${price[index]}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: double.infinity,
              height: 67,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => buildSheet(),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 80,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Go Checkout",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "\$12.96",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff53B175),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget buildSheet() => ClipRRect(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(70)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    "Delivery",
                    style: TextStyle(fontSize: 18, color: Color(0xfff7C7C7C)),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Selected Method"),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    "Payment",
                    style: TextStyle(fontSize: 18, color: Color(0xfff7C7C7C)),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/images/card.png"),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    "Promo Code",
                    style: TextStyle(fontSize: 18, color: Color(0xfff7C7C7C)),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Pick Discount"),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    "Total Cost",
                    style: TextStyle(fontSize: 18, color: Color(0xfff7C7C7C)),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("\$13.97"),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Place Order",
                    style: TextStyle(),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff53B175),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
