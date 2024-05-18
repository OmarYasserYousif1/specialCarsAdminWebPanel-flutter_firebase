import 'package:admin_uber_web_panel/dashboard/side_navigation_drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyALFzrRXqSnDrqKYLSb6eoNYta1pvFKU3Y",
        authDomain: "flutter-uber-clone-with-16ccf.firebaseapp.com",
        databaseURL: "https://flutter-uber-clone-with-16ccf-default-rtdb.firebaseio.com",
        projectId: "flutter-uber-clone-with-16ccf",
        storageBucket: "flutter-uber-clone-with-16ccf.appspot.com",
        messagingSenderId: "389684649868",
        appId: "1:389684649868:web:6af3e5062bb91ad83040a9",
        measurementId: "G-4GQ9JC4DVT"
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SideNavigationDrawer(),
    );
  }
}


