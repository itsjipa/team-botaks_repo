import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26C6DA),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFE1F5FE),
                    maxRadius: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kenneth Aiden',
                          style: GoogleFonts.rubik(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'kenetha@gmail.com',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text('Your Appointments'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Notification Settings'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Help'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Your Profile'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Settings'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Language'),
            ),
          ],
        ),
      ),
    );
  }
}
