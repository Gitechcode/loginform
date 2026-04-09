import 'package:flutter/material.dart';

// ============================================================
// MEMBER 1 — YOUR JOB: Design Profile Form Screen
// ============================================================
// Instructions:
// 1. Clone the project: git clone git@github.com:Gitechcode/loginform.git
// 2. Switch to your branch: git checkout feature/profile-form
// 3. Open this file: lib/screens/profile_form_screen.dart
// 4. Replace the placeholder below with your design
// 5. Save, then run: flutter run
// 6. When done: git add . → git commit → git push
// ============================================================

class ProfileFormScreen extends StatefulWidget {
const ProfileFormScreen({super.key});

@override
State<ProfileFormScreen> createState() => _ProfileFormScreenState();
}

class _ProfileFormScreenState extends State<ProfileFormScreen> {
// TODO: Add your controllers here
// final _nameController = TextEditingController();
// final _phoneController = TextEditingController();
// final _addressController = TextEditingController();

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Profile Form'),
backgroundColor: Colors.blue,
foregroundColor: Colors.white,
),
body: const Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(Icons.person_outline, size: 80, color: Colors.grey),
SizedBox(height: 16),
Text(
'[ Member 1: Design Profile Form Here ]',
style: TextStyle(fontSize: 16, color: Colors.grey),
textAlign: TextAlign.center,
),
SizedBox(height: 8),
Text(
'Replace this placeholder with your design',
style: TextStyle(fontSize: 13, color: Colors.grey),
),
],
),
),
);
}
}