import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kelompokmbl/const.dart';

class HomeScreen extends StatelessWidget {
  final images = [
    'assets/img2.jpeg',
    'assets/img3.jpeg',
    'assets/img4.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Align(
                      alignment: FractionalOffset.topLeft,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF26C6DA),
                        maxRadius: 36,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome, ',
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Kenneth Aiden',
                            style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realIndex) {
                  final image = images[index];
                  return buildImage(image, index);
                },
                options: CarouselOptions(
                  height: 200,
                  // viewportFraction: 1,
                  autoPlay: true,
                  // reverse: true,
                  pageSnapping: false,
                  enableInfiniteScroll: false,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeCenterPage: true,
                  // enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                height: 44,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search your problem",
                      hintStyle: GoogleFonts.rubik(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      icon: Icon(Icons.search)),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 30.0),
                        child: Text(
                          'Booking and List',
                          style: GoogleFonts.kanit(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                      ),
                      Container(
                        // width: ,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       DrawerHeader(
      //         padding: EdgeInsets.all(16.0),
      //         decoration: BoxDecoration(color: Colors.white),
      //         child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             CircleAvatar(
      //               backgroundColor: Color(0xFFE1F5FE),
      //               maxRadius: 30,
      //             ),
      //             Padding(
      //               padding: EdgeInsets.only(left: 16),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Text(
      //                     'Kenneth Aiden',
      //                     style: GoogleFonts.rubik(
      //                         color: Colors.black, fontWeight: FontWeight.bold),
      //                   ),
      //                   SizedBox(
      //                     height: 6,
      //                   ),
      //                   Text(
      //                     'kenetha@gmail.com',
      //                     style: TextStyle(color: Colors.black, fontSize: 12),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         title: Text('Your Appointments'),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         title: Text('Notification Settings'),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         title: Text('Help'),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         title: Text('Your Profile'),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         title: Text('Settings'),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         title: Text('Language'),
      //       ),
      //     ],
      //   ),
      // ),
      // bottomNavigationBar: NavbarScreen(),
    );
  }

  Widget buildImage(image, index) => Container(
        // margin: EdgeInsets.symmetric(horizontal: 24),
        width: 500,
        color: Colors.grey,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      );
}
