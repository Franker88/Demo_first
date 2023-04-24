import "package:bottomnav_bar/main.dart";
import "package:flutter/material.dart";

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.contact_page_sharp),
          const Text("Contact Page"),
          ElevatedButton(
            onPressed: () {
              scaKey.currentState?.onTapped(0);
            },
            child: const Text("Go Home"), 
          ),
        ],
      )
    );
 }
}