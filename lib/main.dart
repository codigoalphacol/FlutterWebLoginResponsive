import 'package:dashboard/routes/routes.dart';
import 'package:dashboard/routes/routes_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Dashboard', 
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),        
      initialRoute: routeLogin,
      //navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
