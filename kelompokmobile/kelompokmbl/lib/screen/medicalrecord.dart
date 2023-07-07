import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../const.dart';

class MedicalRecordScreen extends StatefulWidget {
  const MedicalRecordScreen({super.key});

  @override
  State<MedicalRecordScreen> createState() => _MedicalRecordScreenState();
}

class _MedicalRecordScreenState extends State<MedicalRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Medical Record"),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: Container(),
    );
  }
}