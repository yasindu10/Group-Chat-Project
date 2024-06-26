import 'package:flutter/material.dart';
import 'package:project_incognito/pages/chat_page.dart';

class GroupTile extends StatelessWidget {
  const GroupTile({
    super.key,
    required this.name,
    required this.subTitle,
  });

  final String name;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 10,
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChatPage()),
      ),
      leading: const CircleAvatar(
        backgroundColor: Colors.white10,
      ),
      title: Text(name),
      subtitle: Text(subTitle),
      trailing: const Icon(
        Icons.lock_rounded,
        size: 19,
      ),
    );
  }
}
