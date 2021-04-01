import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:urban_ui/models/category.dart';

class ProfileAfterLogin extends StatefulWidget {
  @override
  _ProfileAfterLoginState createState() => _ProfileAfterLoginState();
}

class _ProfileAfterLoginState extends State<ProfileAfterLogin> {
  List<category> _categories = [
    category("Register As Partner", FontAwesomeIcons.handshake),
    category("About Urban Company", Icons.handyman),
    category("Share Urban Company", Icons.share),
    category("Refer & Earn", Icons.edit_outlined),
    category("My Gift Cards", Icons.wallet_giftcard),
    category("My Wallet", FontAwesomeIcons.wallet),
    category("Scheduled Booking", FontAwesomeIcons.wallet),
    category("Rate Urban Company", Icons.star),
    category("Payment Options", Icons.payment),
    category("Settings", Icons.settings),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("My Profile"),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Verified Customer"),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 23.0),
                  child: Text("+99476234732"),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.edit_outlined),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.forum),
                ),
                title: Text("Help Center"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(_categories[index].icon),
                      title: Text(_categories[index].name),
                    ),
                  );
                }),
            SizedBox(
              height: 24,
            ),
            TextButton(
              child: Text(
                "Logout",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
