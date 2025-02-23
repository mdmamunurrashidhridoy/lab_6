import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lab_4/app_body.dart';
import 'package:lab_4/app_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        drawer: Drawer(
          backgroundColor: Colors.amber[100],
          child: ListView(
            children: [
              SizedBox(
                height: 150,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.tiktok),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {},
                focusColor: Colors.amber[200]!,
              ),
              ListTile(
                title: Text('Inbox'),
                leading: Icon(Icons.inbox),
                onTap: () {},
                trailing: Text("40"),
              ),
              ListTile(
                title: Text('email'),
                leading: Icon(Icons.email),
                onTap: () {},
                trailing: Text("120"),
              ),
              ListTile(
                title: Text('Read Mail'),
                leading: Icon(Icons.mark_email_read),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Advance UI Design',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Appbody(),
      ),
    );
  }
}
