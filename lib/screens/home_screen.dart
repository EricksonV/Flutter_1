import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle fontsize30 = TextStyle(fontSize: 30);

    int count = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 10,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Clicks:', style: fontsize30),
            Text( '$count' , style: fontsize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add_circle_outlined),
        onPressed: () {
          count++;
        },
      ),

    );
  }
}