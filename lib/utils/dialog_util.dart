import 'package:flutter/material.dart';
import 'package:project_incognito/pages/group_detail_page.dart';

void showGroupDetails(context) {
  showDialog(
    context: context,
    builder: (context) => const GroupDetailPage(),
  );
}
