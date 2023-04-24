import "package:bottomnav_bar/draw_list/battery.dart";
import "package:bottomnav_bar/draw_list/settings.dart";
import "package:bottomnav_bar/pages/contact.dart";
import "package:bottomnav_bar/pages/home.dart";
import "package:bottomnav_bar/pages/video.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

final scaKey = GlobalKey<_MyNavBarState>();

class MyApp extends StatelessWidget {
  static const String _title = "Bottom NavBar";

  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: _title,
      home: MyNavBar(key: scaKey),
      routes: <String,WidgetBuilder>{
        Settings.routeName: (BuildContext context) => const Settings(),
        Battery.routeName: (BuildContext context) => const Battery(),
      },
    );
 }
}

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});
  @override
    // ignore: library_private_types_in_public_api
    _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar>{
  int _selectedIndex = 0;
  final myKey = GlobalKey<_MyNavBarState>();

  // ignore: prefer_final_fields
  List<Widget> _widgetList = <Widget>[
    const Home(),
    const Video(),
    const Contact(),
  ];

  late ListView drawList;

  Drawer _getDrawer(BuildContext context){
    const info = AboutListTile(
      applicationIcon: Icon(Icons.info_outline),
      applicationVersion: "v1.0.0",
      applicationName: "Demo Firts",
      icon: Icon(Icons.info),
      child: Text("App Info"),
    );
      ListTile getItem(Icon icon, String description, String route){
        return ListTile(
          leading: icon,
          title: Text(description),
          onTap: (){
            setState(() {
              Navigator.of(context).pushNamed(route);
          });
        },
      );
    }
    drawList = ListView(children: <Widget>[
      getItem(const Icon(Icons.battery_charging_full), "Current Battery", "/draw_list/battery"),
      getItem(const Icon(Icons.settings), "Settings", "/draw_list/settings"),
      info,
    ]);

    return Drawer(
      child: drawList,
    );
  }

  void onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: myKey,
      appBar: AppBar(
        title: const Text("Bottom Nav Bar"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: _widgetList.elementAt(_selectedIndex),
      ),
      drawer: _getDrawer(context),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_sharp),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_rounded),
            label: "Video",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_sharp),
            label: "Contact",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: onTapped,
      ),
    );
 }

  
}