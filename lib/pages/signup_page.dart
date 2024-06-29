import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_incognito/components/custom_text_fields.dart';
import 'package:project_incognito/pages/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SignUp',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          const Gap(10),
          const Text(
            'Create Account to chat more securely',
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
            title: 'Email',
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
            height: 45,
            child: ElevatedButton.icon(
              label: const Text(
                'Sign Up',
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
            const Text('Already have an account'),
            const Gap(8),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  '/login', (Route<dynamic> route) => false),
              child: const Text(
                'Log In',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
