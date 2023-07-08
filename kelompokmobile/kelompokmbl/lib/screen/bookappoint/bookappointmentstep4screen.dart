import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompokmbl/const.dart';
import 'package:kelompokmbl/screen/bookappoint/bookappointmentstep5screen.dart';
import 'package:kelompokmbl/screen/promoscreen.dart';

class BookAppointmentStep4Screen extends StatefulWidget {
  const BookAppointmentStep4Screen({super.key});

  @override
  State<BookAppointmentStep4Screen> createState() => _BookAppointmentStep4ScreenState();
}

enum PaymentMethod { card, cod, ovo, dana, spay, gopay }

class _BookAppointmentStep4ScreenState extends State<BookAppointmentStep4Screen> {
  PaymentMethod? _paymentItem = PaymentMethod.card;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              ),
              Center(
                  child: Text('Choose Your Payment Method',
                      style: GoogleFonts.lexendDeca(
                          fontSize: 20, color: Color(0xFF676767)))),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 40.0),
                child: Column(
                  children: [
                    RadioListTile<PaymentMethod>(
                      value: PaymentMethod.card,
                      groupValue: _paymentItem,
                      onChanged: (PaymentMethod? value) {
                        setState(() {
                          _paymentItem = value;
                        });
                      },
                      title: Text('Credit Card/Debit Card',
                          style: GoogleFonts.lexendDeca(
                              fontSize: 12, color: Colors.black)),
                    ),
                    RadioListTile<PaymentMethod>(
                      value: PaymentMethod.cod,
                      groupValue: _paymentItem,
                      onChanged: (PaymentMethod? value) {
                        setState(() {
                          _paymentItem = value;
                        });
                      },
                      title: Text('Cash On Delivey',
                          style: GoogleFonts.lexendDeca(
                              fontSize: 12, color: Colors.black)),
                    ),
                    RadioListTile<PaymentMethod>(
                      value: PaymentMethod.ovo,
                      groupValue: _paymentItem,
                      onChanged: (PaymentMethod? value) {
                        setState(() {
                          _paymentItem = value;
                        });
                      },
                      title: Text('OVO',
                          style: GoogleFonts.lexendDeca(
                              fontSize: 12, color: Colors.black)),
                    ),
                    RadioListTile<PaymentMethod>(
                      value: PaymentMethod.dana,
                      groupValue: _paymentItem,
                      onChanged: (PaymentMethod? value) {
                        setState(() {
                          _paymentItem = value;
                        });
                      },
                      title: Text('DANA',
                          style: GoogleFonts.lexendDeca(
                              fontSize: 12, color: Colors.black)),
                    ),
                    RadioListTile<PaymentMethod>(
                      value: PaymentMethod.spay,
                      groupValue: _paymentItem,
                      onChanged: (PaymentMethod? value) {
                        setState(() {
                          _paymentItem = value;
                        });
                      },
                      title: Text('ShopeePay',
                          style: GoogleFonts.lexendDeca(
                              fontSize: 12, color: Colors.black)),
                    ),
                    RadioListTile<PaymentMethod>(
                      value: PaymentMethod.gopay,
                      groupValue: _paymentItem,
                      onChanged: (PaymentMethod? value) {
                        setState(() {
                          _paymentItem = value;
                        });
                      },
                      title: Text('GoPay',
                          style: GoogleFonts.lexendDeca(
                              fontSize: 12, color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Center(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFB3F7F9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              padding: const EdgeInsets.symmetric(horizontal: 150),
                              elevation: 0),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const BookAppointmentStep5Screen()));
                          },
                          child: Text(
                            'Pay',
                            style: GoogleFonts.lexendDeca(
                                fontSize: 14, fontWeight: FontWeight.w700,color: Color(0xFF454545)),
                          ))),
                )
            ],
          ),
        ),
      ),
    );
  }
}
