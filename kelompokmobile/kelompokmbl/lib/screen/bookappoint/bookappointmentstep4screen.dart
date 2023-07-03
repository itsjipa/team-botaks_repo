import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompokmbl/const.dart';
import 'package:kelompokmbl/screen/promoscreen.dart';

class BookAppointmentStep4Screen extends StatefulWidget {
  const BookAppointmentStep4Screen({super.key});

  @override
  State<BookAppointmentStep4Screen> createState() =>
      _BookAppointmentStep4ScreenState();
}

class _BookAppointmentStep4ScreenState
    extends State<BookAppointmentStep4Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        title: Text("Step 4 out of 5",
            style: GoogleFonts.inriaSans(
                fontSize: 13, color: const Color(0x5E000000))),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 800,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromARGB(225, 239, 254, 254), Colors.white])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 10),
                child: Center(
                    child: Text('Total Cost',
                        style: GoogleFonts.lexendDeca(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
              ),
              Center(
                  child: Text('IDR 0',
                      style: GoogleFonts.libreBaskerville(
                          fontSize: 50, color: const Color(0xFF00DEE4)))),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const PromoScreen()));
                        },
                        child: Text(
                          'Voucher in here!',
                          style: GoogleFonts.notoSerif(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFEB1F1F),
                              decoration: TextDecoration.underline),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
