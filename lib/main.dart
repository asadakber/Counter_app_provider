import 'package:count_app/provider/counter.dart';
import 'package:count_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Counter>.value(value: Counter())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyApp',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: HomePage(),
      ),
    );
  }
}
