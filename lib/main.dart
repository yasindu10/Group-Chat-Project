import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_incognito/constants/example.dart';
import 'package:project_incognito/pages/home_page.dart';
import 'package:project_incognito/pages/login_page.dart';
import 'package:project_incognito/pages/profile_page.dart';
import 'package:project_incognito/pages/profile_edit_page.dart';
import 'package:project_incognito/pages/search_page.dart';
import 'package:project_incognito/pages/signup_page.dart';
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
      routes: {
        '/': (context) => const MyApp(),
        '/login': (context) => const LogInPage(),
        '/signup': (context) => const SignUpPage(),
      },
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
              ? IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileEditPage(),
                      )),
                  icon: const Icon(
                    Icons.edit_rounded,
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 17),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(myImage),
                    ),
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
        selectedIndex: _currentIndex,
      ),
    );
  }
}
