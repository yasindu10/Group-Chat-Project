import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_incognito/components/custom_text_fields.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LogIn',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          const Gap(10),
          const Text(
            'Login to chat more securely',
            style: TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          const Gap(30),
          DefaultTextField(
            title: 'User Name',
            controller: TextEditingController(),
            icon: Icons.person_rounded,
          ),
          const Gap(5),
          DefaultTextField(
            title: 'Password',
            controller: TextEditingController(),
            icon: Icons.person_rounded,
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            width: size.width,
            height: 48,
            child: ElevatedButton.icon(
              label: const Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account'),
            const Gap(8),
            Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
