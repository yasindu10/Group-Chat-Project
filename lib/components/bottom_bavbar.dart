import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key, required this.onChanged});

  final Function(int value) onChanged;

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: onChanged,
      hoverColor: Colors.white10,
      color: Colors.white,
      tabBackgroundColor: Colors.white10,
      tabBorderRadius: 15,
      gap: 10, // the tab button gap between icon and text
      iconSize: 24,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ), // navigation bar padding
      tabMargin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      tabs: const [
        GButton(
          icon: Icons.groups_rounded,
          text: 'Groups',
        ),
        GButton(
          icon: Icons.search,
          text: 'Search',
        ),
        GButton(
          icon: Icons.person_rounded,
          text: 'Profile',
        ),
      ],
    );
  }
}
