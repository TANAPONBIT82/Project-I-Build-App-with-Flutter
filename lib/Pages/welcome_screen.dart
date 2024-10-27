import 'package:flutter/material.dart';
import 'package:web_app/Pages/HomeScreen.dart';
import '../colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Plant a\ntree for your life",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            wordSpacing: 1,
           ),
          ),
          Image.asset(
            "images/welcome.png",
            fit: BoxFit.cover,
            scale: 1.3,
          ),
          const Text(
            "Worldwide delivery\nwithin 5-10 days",
            textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
           ),
          ),
          const SizedBox(height: 60),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: 
            (context) => HomeScreen(),));
          },
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: colors.grnClr,
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  spreadRadius: 4,
                ),
              ],
            ),
            child: const Text(
              "Enter",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
        ],
      ),
    );
  }
}