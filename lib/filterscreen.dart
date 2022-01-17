import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class filterScreen extends StatefulWidget {
  static const String path = "filterScreen";
  filterScreen({
    Key? key,
  }) : super(key: key);

  @override
  _filterScreenState createState() => _filterScreenState();
}

class _filterScreenState extends State<filterScreen> {
  bool isTap = false;
  bool isclick = true;

  Map<String, bool> categories = {
    'Eggs': false,
    'Noodles & Pasta': false,
    'Chips & Crisps': false,
    'FastFood': false,
  };

  Map<String, bool> brand = {
    'Individual Collection': false,
    'Cocola': false,
    'Ifad': false,
    'Kazi Farmas': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.times,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Filters",
          style: TextStyle(
            color: Color(0xff181725),
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 680,
                decoration: BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(35)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Categories",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff181725),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: categories.keys
                            .map((ItemName) => CheckboxListTile(
                                  autofocus: true,
                                  selected: false,
                                  tristate: true,

                                  // dense: true,
                                  tileColor: Colors.red,
                                  activeColor: Colors.green,
                                  checkColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0))),
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  title: Text(ItemName),
                                  value: categories[ItemName],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      categories[ItemName] = value!;
                                    });
                                  },
                                ))
                            .toList(),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Brand",
                          style:
                              TextStyle(fontSize: 24, color: Color(0xff181725)),
                        ),
                        Column(
                          children: brand.keys
                              .map((ItemName) => CheckboxListTile(
                                    activeColor: Colors.green,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Text(
                                      ItemName,
                                      style: TextStyle(
                                          color: isTap
                                              ? Colors.green
                                              : Colors.black),
                                    ),
                                    value: brand[ItemName],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        brand[ItemName] = value!;
                                      });
                                    },
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    MaterialButton(
                      height: 58,
                      minWidth: 340,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12)),
                      onPressed: () {},
                      child: Text(
                        "Apply Filter",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffFFF9FF),
                        ),
                      ),
                      color: Color(0xff53B175),
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
