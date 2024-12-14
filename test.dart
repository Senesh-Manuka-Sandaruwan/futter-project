import 'package:flutter/material.dart';
import 'package:layouts/screens/tutorial3.dart';


void main() {
  runApp(Test());
}
class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Setting Page",
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home:SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SectionHeader(title:"Account Setting"),
          SettingTile(title: "Edit Profile"),
          SettingTile(title: "Change Password"),
          SettingTile(title: "Change Username"),
          Divider(),

          const SectionHeader(title: "More"),
          SettingTile(title: "Push Notifications"),
          SettingTile(title: "About us"),
          SettingTile(title: "Privacy Policy"),

        ],
      ),
    );
  }
}