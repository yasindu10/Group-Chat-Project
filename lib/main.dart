import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_incognito/pages/home_page.dart';
import 'package:project_incognito/pages/profile_page.dart';
import 'package:project_incognito/pages/profile_update_page.dart';
import 'package:project_incognito/pages/search_page.dart';

import 'components/bottom_bavbar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme:
            GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white),
      ),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    ProfilePage(
      isMyProfile: true,
    ),
  ];

  void changePage(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  String changeName() {
    switch (_currentIndex) {
      case 0:
        return 'Cognito';
      case 1:
        return 'Search';
      case 2:
        return 'My Profile';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(changeName()),
        ),
        actions: [
          /// when profile page
          _currentIndex == 2
              ? Container(
                  margin: const EdgeInsets.symmetric(horizontal: 17),
                  child: IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileEditPage(),
                        )),
                    icon: const Icon(Icons.edit_rounded),
                  ),
                )
              : Container(
                  margin: const EdgeInsets.symmetric(horizontal: 17),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white10,
                  ),
                )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: CustomBottomNavbar(
        onChanged: changePage,
      ),
    );
  }
}