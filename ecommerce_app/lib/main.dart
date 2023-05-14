import 'package:ecommerce_app/constants/theme.dart';
import 'package:ecommerce_app/screens/auth_ui/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SavvyChic E-commerce',
      theme: themeData,
      home: const Welcome(),
    );
  }
}
