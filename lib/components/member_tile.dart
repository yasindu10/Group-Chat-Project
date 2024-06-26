import 'package:flutter/material.dart';
import 'package:project_incognito/pages/profile_page.dart';

class MemberTile extends StatefulWidget {
  const MemberTile({
    super.key,
    required this.name,
    required this.school,
    required this.isDetailPage,
  });

  final String name;
  final String school;
  final bool isDetailPage;

  @override
  State<MemberTile> createState() => _MemberTileState();
}

class _MemberTileState extends State<MemberTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white10,
      ),
      title: Text(
        widget.name,
        style: const TextStyle(
          fontSize: 14.5,
        ),
      ),
      subtitle: Text(widget.school),
      trailing: isSelected
          ? const Icon(
              Icons.check,
              size: 19,
            )
          : null,
      onTap: () {
        if (widget.isDetailPage) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(isMyProfile: false),
              ));
        } else {
          setState(() {
            isSelected = !isSelected;
          });
        }
      },
    );
  }
}
