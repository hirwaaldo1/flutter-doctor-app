import 'package:flutter/material.dart';
import 'package:one/Screens/activity.dart';
import 'package:one/Screens/changePassword.dart';
import 'package:one/Screens/EditProfile.dart';
import 'package:one/Screens/Findadoctor.dart';
import 'package:one/Screens/DoctorProfile.dart';
import 'package:one/Screens/NearbyHealthFacilities.dart';
import 'package:one/Screens/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ChangePassword(),
      debugShowCheckedModeBanner: false,
    );
  }
}
