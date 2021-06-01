import 'package:flutter/material.dart';

//routes
import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/':  (BuildContext context) => HomePage(),
        'alert':  (BuildContext context) => AlertPage(),
        'avatar':  (BuildContext context) => AvatarPage(),
      },
    );
  }
}