import 'package:flutter/material.dart';
import 'package:project_incognito/components/group_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        color: Colors.white10,
      ),
      shrinkWrap: true,
      itemCount: 30,
      itemBuilder: (context, index) => const GroupTile(
        name: 'Group Name',
        subTitle: 'Group sub name',
      ),
    );
  }
}
