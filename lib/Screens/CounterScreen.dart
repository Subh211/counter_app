import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counterscreen extends StatefulWidget {
  const Counterscreen({
    super.key,
  });


  @override
  State<Counterscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Counterscreen> {
  int _counter = 0;
  static const snackBar = SnackBar(
    content: Text('Counter reset!'),
  );

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetButton () {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Counter App')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: _incrementCounter,
                    child: Text('Increment')),
                ElevatedButton(
                    onPressed: _decrementCounter,
                    child: Text('Decrement'))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _resetButton();
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.reset_tv),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
