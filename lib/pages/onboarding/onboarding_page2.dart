import 'package:flutter/material.dart';
import 'package:yumquick_app/widgets/onboarding_button.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // Uncomment if using it with PageController

class OnboardingPage2 extends StatefulWidget {
  const OnboardingPage2({super.key});

  @override
  State<OnboardingPage2> createState() => _OnboardingPage2State();
}

class _OnboardingPage2State extends State<OnboardingPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          SizedBox.expand(
            child: Image.asset('assets/images/sweet.png', fit: BoxFit.cover),
          ),

          // White box at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 400,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/2.png'),
                  const SizedBox(height: 20),
                  const Text(
                    'Easy Payment',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Craving something delicious? Get hot, fresh meals delivered straight to your doorstep. With just a tap, satisfy your hunger anytime, anywhere.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 30),

                  SizedBox(height: 20),
                  OnboardingButton(text: 'Next'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
