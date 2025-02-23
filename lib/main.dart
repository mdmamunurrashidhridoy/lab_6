import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
              backgroundColor: Colors.amber,
            ),
          ],
        ),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl:
                    "https://images.unsplash.com/photo-1728774283246-b0e6eea31e34?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              CachedNetworkImage(
                imageUrl:
                    "https://images.unsplash.com/photo-1727233431563-15019f08ef1e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              CachedNetworkImage(
                imageUrl:
                    "https://images.unsplash.com/photo-1727233429981-f069ff6fad6b?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
