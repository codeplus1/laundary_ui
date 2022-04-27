import 'package:flutter/material.dart';

Widget myDrawer() {
  return Drawer(
    child: ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.dashboard),
          title: Text("Dashboard"),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("Test"),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("Test"),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("Test"),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("Test"),
        ),
      ],
    ),
  );
}
