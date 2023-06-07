import 'dart:math';

import 'package:flutter/material.dart';
import 'package:inheritrd_counter_notifier/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ThemePage(),
    );
  }
}


class ThemePage extends StatefulWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  ThemeColor themeColor= ThemeColor(color: Colors.green);
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Widget demo'),
      ),
      body: ThemeColorWidget(
        themeColor: themeColor,
      child: Builder(
        builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: ThemeColorWidget.of(context)!.themeColor.color,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    themeColor = ThemeColor(color: Color.fromRGBO(
                      random.nextInt(255),
                      random.nextInt(255),
                      random.nextInt(255),
                      1,
                    ),);
                  });

                }, child: const Text('Toggle color'))
              ],
            ),
          );
        },

      ),
      ),
    );
  }
}



