import 'package:flutter/material.dart';

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
        children: const [
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            leading: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white10,
            ),
            title: Text('Yasindu Samarasinge'),
            subtitle: Text('yasindusamarasinghe10@gmail.com'),
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
