import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skindiseasedetector/constants/size_config.dart';
import 'package:skindiseasedetector/views/splash_screen.dart';

void main() {
  Gemini.init(apiKey: 'AIzaSyBQ6pT1grNc1SUs5RmiPOF0d2u3TVezEJY', enableDebugging: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  MaterialApp(
      home: const SplashScreen(),
      title: 'Skin Disease Detector',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

