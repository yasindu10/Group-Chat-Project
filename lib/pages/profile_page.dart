import 'package:flutter/material.dart';
import 'package:project_incognito/constants/example.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
    required this.isMyProfile,
  });

  final bool isMyProfile;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.isMyProfile
          ? null
          : AppBar(
              title: const Text('Profile'),
            ),
      body: ListView(
        children: [
          const Divider(),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  myImage,
                  width: 45,
                ),
              ),
            ),
            title: const Text('Yasindu Samarasinge'),
            subtitle: Text('yasindusamarasinghe10@gmail.com'),
            trailing: Container(
                child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/login', (Route<dynamic> route) => false);
              },
              icon: const Icon(
                Icons.logout_rounded,
                color: Colors.white,
                size: 20,
              ),
            )),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.description_rounded),
            title: Text('Description'),
            subtitle: Text('Professional full stack mobile developer'),
          ),
          ListTile(
            leading: Icon(Icons.groups_3_rounded),
            title: Text('Own Groups'),
            subtitle: Text('My own Groups'),
            trailing: Text(
              '100',
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListTile(
            leading: Icon(Icons.groups_rounded),
            title: Text('Groups'),
            subtitle: Text('Logged in Groups'),
            trailing: Text(
              '100',
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListTile(
            leading: Icon(Icons.school_rounded),
            title: Text('School'),
            subtitle: Text('KCC'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Gender'),
            subtitle: Text('Male'),
          ),
        ],
      ),
    );
  }
}
