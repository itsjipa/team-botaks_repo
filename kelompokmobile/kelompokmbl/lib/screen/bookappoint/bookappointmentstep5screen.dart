import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompokmbl/const.dart';

class BookAppointmentStep5Screen extends StatefulWidget {
  const BookAppointmentStep5Screen({super.key});

  @override
  State<BookAppointmentStep5Screen> createState() => _BookAppointmentStep5ScreenState();
}

class _BookAppointmentStep5ScreenState extends State<BookAppointmentStep5Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        title: Text("Step 5 out of 5",
            style: GoogleFonts.inriaSans(
                fontSize: 13, color: const Color(0x5E000000))),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/check.gif'),
          const SizedBox(height: 20.0),
          Text('Payment Success',
              style: GoogleFonts.josefinSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0069E4))),
          const SizedBox(height: 20.0),
          Center(
            child: Text('Thank you for booking an appointment at our practice',
                style: GoogleFonts.josefinSans(
                    fontSize: 16, fontWeight: FontWeight.w700), textAlign: TextAlign.center),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
                'As soon as our staff sees your request they will inform you about your time slot. You’ll get a notification in this application',
                style: GoogleFonts.josefinSans(
                    fontSize: 12, color: Color(0x87000000)), textAlign: TextAlign.center,),
          ),
          Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB3F7F9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        elevation: 0),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              const BookAppointmentStep5Screen()));
                    },
                    child: Text(
                      'List of appointments',
                      style: GoogleFonts.lexendDeca(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF454545)),
                    ))),
          )
        ]),
      ),
    );
  }
}
