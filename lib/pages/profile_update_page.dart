import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_incognito/components/custom_text_fields.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: ListView(
        children: [
          const Gap(20),
          Row(
            children: [
              const Gap(15),
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white10,
              ),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Profile Picture',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const Gap(12),
                  SizedBox(
                    width: size.width / 1.5,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Choose Profile'),
                    ),
                  )
                ],
              )
            ],
          ),
          const Gap(4),
          const Divider(),
          DefaultTextField(
            title: 'Enter User name',
            controller: TextEditingController(),
            icon: Icons.person_rounded,
          ),
          const Gap(10),
          DefaultTextField(
            title: 'Enter Description',
            controller: TextEditingController(),
            icon: Icons.description_rounded,
          ),
          const Gap(10),
          DefaultTextField(
            title: 'Enter school name',
            controller: TextEditingController(),
            icon: Icons.school_rounded,
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15)),
              onPressed: () {},
              child: const Text('Upgrade'),
            ),
          )
        ],
      ),
    );
  }
}
