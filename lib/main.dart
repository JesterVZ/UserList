import 'package:flutter/material.dart';
import 'package:test_task/DI/dependency_provider.dart';
import 'package:test_task/pages/user_list.dart';

void main() {
  runApp(DependencyProvider(
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: UserList());
  }
}
