import 'package:doctor_app/columns/Find_Your_Doctor.dart';
import 'package:doctor_app/columns/NavBar.dart';
import 'package:doctor_app/columns/Top_Doctors.dart';
import 'package:doctor_app/columns/doctorList.dart';
import 'package:doctor_app/columns/gridView.dart';
import 'package:flutter/material.dart';
import '../columns/TextField.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              HomepageNavbar(),
              FindyourdoctorText(),
              SizedBox(
                height: 24,
              ),
              Search(),
              SizedBox(height: 24),
              Gridview(),
              SizedBox(height: 24),
              TopDoctors(),
              DoctorList(),
            ],
          ),
        ),
      ),
    );
  }
}
