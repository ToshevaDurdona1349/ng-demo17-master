import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ngdemo17/pages/home_page.dart';
import 'package:ngdemo17/pages/signin_page.dart';
import 'package:ngdemo17/pages/signup_page.dart';
import 'package:ngdemo17/pages/splash_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPage(),
      routes: {
        SplashPage.id: (context) => SplashPage(),
        HomePage.id: (context) => HomePage(),
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context) => SignUpPage(),
      },
    );
  }
}