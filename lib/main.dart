import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'product_list.dart';
import 'product_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratorio Flutter',
      theme: theme,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/products': (context) => ProductList(),
        '/form': (context) => ProductForm(),
      },
    );
  }
}
