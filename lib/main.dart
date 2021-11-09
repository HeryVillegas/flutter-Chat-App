import 'package:flutter/material.dart';

import 'package:chatapp/routes/routes.dart';

// https://socket-backend-brujoapps-free.herokuapp.com/
// https://dashboard.heroku.com/apps/socket-backend-brujoapps-free/deploy/heroku-git

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      initialRoute: 'chat',
      routes: appRoutes,
    );
  }
}
