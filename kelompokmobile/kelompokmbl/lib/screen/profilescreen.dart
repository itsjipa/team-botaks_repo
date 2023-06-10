import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kelompokmbl/const.dart';
import 'package:kelompokmbl/main.dart';
// import 'package:kelompokmbl/screen/homescreen.dart';
import 'package:kelompokmbl/screen/updateprofilescreen.dart';
// import 'package:kelompokmbl/provider/homescreen_provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Profile"),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         MyApp.themeNotifier.value =
      //             MyApp.themeNotifier.value == ThemeMode.light
      //                 ? ThemeMode.dark
      //                 : ThemeMode.light;
      //       },
      //       icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
      //           ? Icons.dark_mode
      //           : Icons.light_mode),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: GoogleFonts.roboto(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        MyApp.themeNotifier.value =
                            MyApp.themeNotifier.value == ThemeMode.light
                                ? ThemeMode.dark
                                : ThemeMode.light;
                      },
                      icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                          ? Icons.dark_mode
                          : Icons.light_mode),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: FractionalOffset.center,
                        child: CircleAvatar(
                          backgroundColor: kPrimaryColor,
                          maxRadius: 45,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 125,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: aPrimaryColor),
                          child: Icon(
                            Icons.create,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    textProfileName,
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    // color: Colors.black,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          side: BorderSide.none,
                          shape: StadiumBorder()),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const UpdateProfileScreen()));
                      },
                      child: Text(
                        textEditProfile,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),

                  // Menu
                  Profilesetting(
                      title: menu1, icon: Icons.settings, onTap: () {}),
                  Profilesetting(
                      title: menu2, icon: Icons.wallet, onTap: () {}),
                  Profilesetting(
                    title: menu8,
                    icon: Icons.question_mark,
                    onTap: () {},
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Profilesetting(
                    title: textLogoutDialog,
                    icon: Icons.logout_outlined,
                    onTap: () {},
                    textColor: Colors.red.shade800,
                    endIcon: false,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Profilesetting extends StatelessWidget {
  const Profilesetting({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    MyApp.themeNotifier.value == ThemeMode.light
        ? Icons.dark_mode
        : kPrimaryColor;
    return ListTile(
        onTap: onTap,
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: aPrimaryColor.withOpacity((0.1))),
          child: Icon(
            icon,
            color: bPrimaryColor,
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.rubik(fontWeight: FontWeight.w600)
              .apply(color: textColor),
        ),
        trailing: endIcon
            ? Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: aPrimaryColor.withOpacity(0.1)),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18.0,
                  color: bPrimaryColor,
                ),
              )
            : null);
  }
}
