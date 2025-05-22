import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'title': 'Home', 'route': '/home'},
    {'title': 'Productos', 'route': '/products'},
    {'title': 'Registrar Producto', 'route': '/form'},
    {'title': 'Logout', 'route': '/'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MENU')),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menuItems[index]['title']),
            onTap: () {
              Navigator.pushNamed(context, menuItems[index]['route']);
            },
          );
        },
      ),
    );
  }
}
