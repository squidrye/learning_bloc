import 'package:flutter/material.dart';

import 'ToDoApp/to_do_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ToDoMaterialApp();
  }
}
