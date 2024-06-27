import 'package:flutter/material.dart';
import 'package:project_incognito/constants/example.dart';
import 'package:project_incognito/pages/profile_page.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    super.key,
    required this.name,
    required this.school,
    required this.isLeader,
  });

  final String name;
  final String school;
  final bool isLeader;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ProfilePage(
            isMyProfile: false,
          ),
        ),
      ),
      leading: const CircleAvatar(
        backgroundColor: Colors.white10,
        backgroundImage: NetworkImage(myImage),
      ),
      title: Text(name),
      subtitle: Text(school),
      trailing: isLeader
          ? const Icon(
              Icons.verified,
              size: 20,
            )
          : null,
    );
  }
}
