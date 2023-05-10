import 'package:flutter/material.dart';
import 'package:Orizon/ui/screens/auth.dart';
import 'package:Orizon/ui/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/Auth': (context) => AuthScreen(),
        '/Home': (context) => Home(),
      },
      initialRoute: '/Auth',
      // home: AuthScreen(),
    );
  }
}