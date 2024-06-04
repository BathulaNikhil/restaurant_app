import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/auth/login_or_register.dart';
import 'package:restaurant_app/pages/login_%20page.dart';
import '../themes/theme_provider.dart';
import 'pages/signup_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
