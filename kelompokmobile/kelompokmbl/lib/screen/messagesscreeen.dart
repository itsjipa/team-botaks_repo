import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompokmbl/const.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Messages",
              style: GoogleFonts.roboto(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search", border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Active Now',
              style:
                  GoogleFonts.rubik(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: image.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 10,
                        ),
                      ]),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: Container(
                          height: 65,
                          width: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/${image[index]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(3),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Recent Chat',
              style: GoogleFonts.rubik(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MessagesMenu(
            images0: images,
            title: "Drg. Jessie Ramsley",
            subttle: "Will you come to clinic at 7 pm ?",
            clock: "10.00",
          ),
          MessagesMenu(
              images0: images1,
              title: "Drg. Thalia Smith",
              subttle: "You can't eat spicy food right now",
              clock: "12.30"),
          MessagesMenu(
              images0: images2,
              title: "Drg. Zoe Adam",
              subttle: "Hello, If you have complaint you can ask me",
              clock: "01/01/2023"),
          MessagesMenu(
              images0: images3,
              title: "Drg. Josh Alexander",
              subttle: "Hello, If you have complaint you can ask me",
              clock: "01/01/2023"),
          MessagesMenu(
              images0: images4,
              title: "Drg. Xavierra Ailen",
              subttle: "Hello, If you have complaint you can ask me",
              clock: "01/01/2023"),
          MessagesMenu(
              images0: images5,
              title: "Drg. Zein Aldebaran",
              subttle: "Hahaha, whatever",
              clock: "09.00"),
        ],
      ),
    );
  }
}

class MessagesMenu extends StatelessWidget {
  const MessagesMenu(
      {super.key,
      required this.images0,
      required this.title,
      required this.subttle,
      required this.clock});

  final String images0;
  final String title;
  final String subttle;
  final String clock;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: ListTile(
        minVerticalPadding: 20,
        onTap: () {},
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: ExactAssetImage(
            "assets/$images0",
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        subtitle: Text(
          subttle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.montserrat(
            fontSize: 15,
            color: Colors.black45,
          ),
        ),
        trailing: Text(
          clock,
          style: GoogleFonts.montserrat(
            fontSize: 15,
            color: Colors.black45,
          ),
        ),

      ),
    );
  }
}
