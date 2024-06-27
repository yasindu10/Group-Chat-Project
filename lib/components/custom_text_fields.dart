import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    super.key,
    required this.title,
    required this.controller,
    required this.icon,
  });

  final String title;
  final TextEditingController controller;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
      child: SizedBox(
        height: 45,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: title,
            hintStyle: TextStyle(color: Colors.grey.shade600),
            prefixIcon: Icon(
              icon,
              color: Colors.grey.shade600,
              size: 20,
            ),
            filled: true,
            fillColor: Colors.white10,
            contentPadding: const EdgeInsets.all(8),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white10),
            ),
          ),
        ),
      ),
    );
  }
}

class MemberSearchField extends StatelessWidget {
  const MemberSearchField({
    super.key,
    required this.title,
    required this.controller,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: SizedBox(
        height: 45,
        child: TextField(
          controller: controller,
          style: const TextStyle(
            fontSize: 15,
          ),
          decoration: InputDecoration(
            hintText: title,
            hintStyle: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 15,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade600,
              size: 20,
            ),
            filled: true,
            fillColor: Colors.white10,
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white10),
            ),
          ),
        ),
      ),
    );
  }
}
