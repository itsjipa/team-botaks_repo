import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookAppointmentStep4Screen extends StatefulWidget {
  const BookAppointmentStep4Screen({super.key});

  @override
  State<BookAppointmentStep4Screen> createState() => _BookAppointmentStep4ScreenState();
}

class _BookAppointmentStep4ScreenState extends State<BookAppointmentStep4Screen> {
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
        backgroundColor: Colors.white,
      ),
    );
  }
}