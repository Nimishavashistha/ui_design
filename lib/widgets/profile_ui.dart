import 'package:flutter/material.dart';
import 'package:urban_ui/widgets/profile_after_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileUi extends StatefulWidget {
  @override
  _ProfileUiState createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("My Profile"),
        actions: [
          SizedBox(
            width: 110.0,
            height: 2.0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.black,
                    elevation: 5,
                    side: BorderSide(color: Colors.white)),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ProfileAfterLogin()));
                },
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(FontAwesomeIcons.handshake),
              title: Text("Register As Partner"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.handyman),
              title: Text("About Urban Company"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.share),
              title: Text("Share Urban Company"),
            ),
          ),
        ],
      ),
    );
  }
}
