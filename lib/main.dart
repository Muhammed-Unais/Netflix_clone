import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/main_page/scree_main_page.dart';

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
        // fontFamily: GoogleFonts.aboreto().fontFamily,
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
        textTheme:  const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home:  ScreenMainPage(),
    );
  }
}
