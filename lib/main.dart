import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         SizedBox(
        width: double.infinity,
        height: double.infinity,
      child: Image.asset(
        'Assets/bg.jpg',
        fit: BoxFit.cover,
      ),
      ),
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(height: 40),
           Center(
              child: Image.asset(
                'Assets/logo.png',
                width: 80,
                height: 80,
              ),
            ),
            SizedBox(height: 30),
            Padding(
                    padding: const EdgeInsets.all(20),
            child:Card(
              color: Colors.white.withValues(alpha: 0.25),
               shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              ),
                child:Column(
                  children: [
                    Text(
                      'Welcome to Silq',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'PlayfairDisplay',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Answer the few questions so we can build the perfect language learning plan for you.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontFamily: 'calibri',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20),
              
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                

                child: Text('Get Started'),
              )
            )
          ],
            ),
          ),
        ],
      ),
    );
  }
}