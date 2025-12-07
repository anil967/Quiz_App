import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz/Screen/QuizScreen.dart';
import 'package:quiz_app/Quiz/const/colors.dart';
import 'package:quiz_app/Quiz/const/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlue, blue, darkBlue],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Image.asset(ideas),
              SizedBox(height: 20),
              Text(
                "welcome to our",
                style: TextStyle(fontSize: 20, color: lightgrey),
              ),
              Text(
                "Quiz App",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const QuizScreen()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(bottom: 55),
                    width: MediaQuery.of(context).size.width - 100,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
