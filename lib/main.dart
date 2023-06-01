import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5, // Number of tabs
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('Tab Controller'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                      Icons.home,
                      color: Colors.green,
                    ),
                    text: 'Home'),
                Tab(
                    icon: Icon(
                      Icons.search,
                      color: Colors.yellow,
                    ),
                    text: 'Search'),
                Tab(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    text: 'Favorites'),
                Tab(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    text: 'Cart'),
                Tab(
                    icon: Icon(
                      Icons.person,
                      color: Colors.cyan,
                    ),
                    text: 'Profile'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Cardtab(
                color: Colors.green,
                name: "Home",
              ),
              Cardtab(
                color: Colors.yellow,
                name: "Search",
              ),
              Cardtab(
                color: Colors.pink,
                name: "Favorite",
              ),
              Cardtab(
                color: Colors.white,
                name: "Cart",
              ),
              Cardtab(
                color: Colors.cyan,
                name: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Cardtab({required Color color, required String name}) {
    return Card(
      color: color,
      child: Center(
          child: Text(
        "$name",
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
