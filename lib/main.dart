import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
// import 'package:dashboard/prca/chart.dart';
import 'package:dashboard/prca/prac1.dart';
// import 'package:kare/dependencies/admin.dart';


void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const kare());
}

class kare extends StatelessWidget {
  const kare({super.key});

    // For self signed certificates, only use for development
  @override
  Widget build(BuildContext context) {
    Client client = Client();
    client
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject('64aae54cb26642bf1fa5')
        .setSelfSigned(status: true); 
    return     MaterialApp(
      title: "Kare leave Application",
      debugShowCheckedModeBanner: false,
      home: StudentActivityDashboard1(),
    );
  }
}