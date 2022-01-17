import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountScreen extends StatefulWidget {
  static const String path = "AccountScreen";

  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final List icon = [
    Icon(Icons.shopping_bag_outlined),
    FaIcon(FontAwesomeIcons.addressCard),
    Icon(Icons.location_on),
    Icon(Icons.payments),
    FaIcon(FontAwesomeIcons.ticketAlt),
    Icon(Icons.notifications_none_outlined),
    Icon(Icons.help_outline),
    Icon(Icons.info_outline)
  ];

  final List title = [
    "Orders",
    "My Details",
    "Delivery Address",
    "Payment Methods",
    "Promo Card",
    "Notifications",
    "Help",
    "About"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/img_avatar.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Khandokar Faisal Islam",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.edit_outlined,
                          size: 15,
                          color: Color(0xff53B175),
                        ),
                      ],
                    ),
                    Text(
                      "faisal2619@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7C7C7C),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 1,
                  );
                },
                itemCount: title.length,
                // scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    title: Text(title[index]),
                    leading: icon[index],
                    trailing: Icon(Icons.arrow_forward_ios),
                  );
                },
              ),
            ),
            MaterialButton(
              height: 58,
              minWidth: 300,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.exit_to_app,
                    color: Color(0xff53B175),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Logout",
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  )
                ],
              ),
              color: Color(0xffF2F3F2),
            ),
          ],
        ),
      ),
    );
  }
}
