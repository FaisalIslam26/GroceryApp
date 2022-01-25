import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'custom/customimgsli.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int count = 0;
  int decount = 0;

  final List<String> imageList = [
    "assets/images/Apple.png",
    "assets/images/Apple.png",
    "assets/images/Apple.png",
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.download_outlined,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset("assets/images/Apple.png"),
            CarouselSlider(
              items: imageList
                  .map((imgUrl) => Container(
                        child: Center(
                          child: Image.asset(
                            imgUrl,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                          ),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                // aspectRatio: 2.0,
                enlargeCenterPage: false,
              ),
            ),
            CarouselwithDotsPage(imageList: imageList),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Natural Red Apple",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: Color(0xfff7C7C7C),
                      ),
                    ],
                  ),
                  Text(
                    "1kg, Price",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfff7C7C7C),
                    ),
                  ),
                  Row(
                    children: [
                      ClipOval(
                        child: IconButton(
                          onPressed: () {
                            dcreaseCount();
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
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
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Detail",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Transform.rotate(
                        angle: 3.1416 / 2,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xfff7C7C7C),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: TextStyle(fontSize: 13, color: Color(0xfff7C7C7C)),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Nutritions",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      ClipOval(
                        child: Text("100gm"),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Natural Red Apple",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: SizedBox(
                      height: 67,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Add To Basket"),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xfff53B175),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
