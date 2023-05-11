import 'package:flutter/material.dart';
import 'package:ibarra/paginas/iniciar.dart';

void main() {
  runApp(const AppDulceria());
}

class AppDulceria extends StatelessWidget {
  const AppDulceria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PaginaInicio(),
    );
  }
}
