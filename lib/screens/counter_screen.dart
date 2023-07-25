import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  const CounterScreen({super.key});
  
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void functions(int opc){
    switch(opc){
      case 1:
        count++;
        break;
      case 2:
        count = 0;
        break;
      case 3:
        count--;
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle fontsize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
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
      floatingActionButton: CustomFloatingActions(
        increaseFn: functions
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn; 

  const CustomFloatingActions({
    super.key, required this.increaseFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon( Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(1),
        ),

        FloatingActionButton(
          child: const Icon( Icons.restore),
          onPressed: () => increaseFn(2),
        ),

        FloatingActionButton(
          child: const Icon( Icons.exposure_minus_1_outlined),
          onPressed: () => increaseFn(3),
        ),
      ],
    );
  }
}