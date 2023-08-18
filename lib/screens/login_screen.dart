import 'package:flutter/material.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or join a meeting',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset('assets/images/onboarding.jpg'),
          ),
          const CustomButton(
            text: "Login",
          ),
        ],
      ),
    );
  }
}
