import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_incognito/components/custom_text_fields.dart';
import 'package:project_incognito/components/member_tile.dart';

class GroupDetailPage extends StatefulWidget {
  const GroupDetailPage({super.key});

  @override
  State<GroupDetailPage> createState() => _GroupDetailPageState();
}

class _GroupDetailPageState extends State<GroupDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Group Details',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Divider(),
            const ListTile(
              title: Text('Group name'),
              subtitle: Text('Group description'),
              trailing: CircleAvatar(
                backgroundColor: Colors.white10,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Members',
                    style: TextStyle(
                      fontSize: 15.5,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const SelectMembersPage(),
                      );
                    },
                    icon: const Icon(Icons.add_rounded),
                  ),
                ],
              ),
            ),
            MemberSearchField(
              title: 'Search Members',
              controller: TextEditingController(),
            ),
            const Gap(10),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return MemberTile(
                  name: 'Yasindu Samarasinge',
                  school: 'KCC',
                  isDetailPage: true,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class SelectMembersPage extends StatefulWidget {
  const SelectMembersPage({super.key});

  @override
  State<SelectMembersPage> createState() => _SelectMembersPageState();
}

class _SelectMembersPageState extends State<SelectMembersPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Select Members',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          Text(
            '100',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ],
      ),
      content: SizedBox(
        height: size.height / 1.4,
        width: size.width / 1.1,
        child: ListView(
          children: [
            const Gap(10),
            Divider(),
            MemberTile(
              name: 'Yasindu Samarasinge',
              school: 'KCC',
              isDetailPage: false,
            ),
            MemberTile(
              name: 'Yasindu Samarasinge',
              school: 'KCC',
              isDetailPage: false,
            ),
            MemberTile(
              name: 'Yasindu Samarasinge',
              school: 'KCC',
              isDetailPage: false,
            ),
            MemberTile(
              name: 'Yasindu Samarasinge',
              school: 'KCC',
              isDetailPage: false,
            )
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        SizedBox(
          width: size.width / 3.2,
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          width: size.width / 3.2,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
            ),
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
