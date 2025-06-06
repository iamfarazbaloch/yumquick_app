import 'package:flutter/material.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          SizedBox.expand(
            child: Image.asset('assets/images/chai.png', fit: BoxFit.cover),
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
                  Image.asset('assets/icons/3.png'),
                  const SizedBox(height: 20),
                  const Text(
                    'Order For Food',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Your payment details are securely processed, ensuring a smooth and safe transaction.Enjoy quick and reliable order processing from start to finish.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
