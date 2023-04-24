import "package:flutter/material.dart";

class Settings extends StatelessWidget {
  const Settings({super.key});

  static const String routeName = "/draw_list/settings";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: const Center(
        child: Text("App Settings"),
      ),
  );
 }
}