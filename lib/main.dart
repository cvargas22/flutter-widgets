import 'package:flutter/material.dart';
import 'package:widgets/screens/alert_screen.dart';
import 'package:widgets/screens/avatar_screen.dart';
import 'package:widgets/screens/card_screen.dart';
import 'package:widgets/screens/home_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Flutter',
      initialRoute: '/',
      routes: <String,WidgetBuilder>{
        '/': (BuildContext context) => HomeScreen(),
        'alert': (BuildContext context) => AlertScreen(),
        'avatar': (BuildContext context) => AvatarScreen(),
        'card': (BuildContext context) => CardScreen()
      },
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => AlertScreen()
        );
      },
    );
  }
}