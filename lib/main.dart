import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web_admin/views/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: kIsWeb || Platform.isAndroid
          ? FirebaseOptions(
              apiKey: "AIzaSyBpt0CNORK6FyFpst-bIryhjF9M7-6lJQE",
              appId: "1:245683165794:web:7f53968ba44ea3db3a8f3b",
              messagingSenderId: "245683165794",
              projectId: "fashionwear-9e6ab",
              storageBucket: "fashionwear-9e6ab.appspot.com", 
            )
          : null);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web Admin',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}
