import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_incognito/components/custom_text_fields.dart';
import 'package:project_incognito/components/user_tile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        DefaultTextField(
          title: 'Search users..',
          controller: TextEditingController(),
        ),
        const Gap(20),
        ListView.builder(
          itemCount: 100,
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              const UserTile(name: 'Yasindu', school: 'KCC', isLeader: true),
        )
      ],
    );
  }
}
