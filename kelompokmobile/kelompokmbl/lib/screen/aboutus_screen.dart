import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompokmbl/const.dart';
import 'package:kelompokmbl/provider/aboutus_provider.dart';
import 'package:provider/provider.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<AboutUsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('About Us'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.black38,
                alignment: Alignment.center,
                child: Text(
                  'GUMSMILE DENTAL CARE',
                  style: GoogleFonts.inriaSans(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: kPrimaryColor,
                    letterSpacing: 2,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  vertical: 14,
                ),
                child: Text(
                  'ABOUT TEAM 7',
                  style: GoogleFonts.kanit(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: Image.asset(
                  'assets/foto1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              // Container(
              //   margin: EdgeInsets.only(top: 20),
              //   child: Text("We're "),
              // )
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: prov.data['data']!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = prov.data['data']![index];
                      return Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 180,
                                  width: 180,

                                  
                                  child: Image.asset(
                                    item['img'].toString(),
                                    fit: BoxFit.cover,
                                  )),
                              Container(
                                height: 100,
                                width: 180,
                                // color: Colors.black,
                                child: Column(
                                  children: [
                                    Text(item['name'].toString()),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                        child: Text(item['nim'].toString()))
                                  ],
                                ),
                              )
                            ],
                          ));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
