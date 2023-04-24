import "package:flutter/material.dart";

class Battery extends StatelessWidget {
  const Battery({super.key});

  static const String routeName = "/draw_list/battery";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Battery"),
      ),
      body: const Center(
        child: Text("Current Battery"),
      ),
  );
 }
}