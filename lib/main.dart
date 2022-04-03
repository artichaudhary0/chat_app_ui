import 'package:chat_app_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          primaryColor: Colors.red,
          cardColor: Color(0xFFFFEFEE),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFEF9EB))),
      home: HomeScreen(),
    );
  }
}
