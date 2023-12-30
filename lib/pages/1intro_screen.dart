import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/fruits.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: SafeArea(
          child: Column(
            children: [
              //Logo
              Padding(
                padding: const EdgeInsets.only(
                    left: 80.0, right: 80, bottom: 0, top: 60),
                child: Image.asset('lib/Images/logo.png'),
              ),

              //Vision statement
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "The PEARfect app for all your Groceries",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerif(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              //Text
              Text(
                "Fresh from the farms",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),

              const Spacer(),

              //start button
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SecondScreen();
                  }),
                ),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.green,
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              const Spacer(),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
