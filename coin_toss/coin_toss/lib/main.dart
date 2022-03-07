import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coin Toss',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Check your luck'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _latest_results = "Flip Now";
  String _results = "";
  int _counter = 0;
  int _heads = 0;
  int _tails = 0;
  final _simulations = TextEditingController();

  @override
  void initState() {
    _simulations.text = "0";
    super.initState();
  }

  void _toss() {
    setState(() {
      Random random = Random();
      if (random.nextInt(100) > 50) {
        _latest_results = "Heads";
        _heads++;
      } else {
        _latest_results = "Tails";
        _tails++;
      }
      _counter++;
    });
  }

  void _simulateToses(int n) {
    setState(() {
      while (n != 0) {
        Random random = Random();
        if (random.nextInt(100) > 50) {
          _latest_results = "Heads";
          _heads++;
        } else {
          _latest_results = "Tails";
          _tails++;
        }
        _counter++;
        n--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'The result is:',
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              _latest_results,
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Toses so far: $_counter'),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Row contents horizontally,

              children: const [
                Text('Heads:'),
                SizedBox(
                  width: 50,
                ),
                Text('Tails:')
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Row contents horizontally,
              children: [
                Text('$_heads'),
                const SizedBox(
                  width: 70,
                ),
                Text('$_tails')
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 150.0,
              child: TextField(
                  autofocus: true,
                  controller: _simulations,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Auto Simulations',
                    hintText: "0",
                    isDense: true,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Row contents horizontally,
              children: [
                FloatingActionButton(
                    tooltip: "Auto Simulate",
                    child: const Icon(Icons.autorenew_rounded),
                    onPressed: () =>
                        {_simulateToses(int.parse(_simulations.text))}),
                const SizedBox(
                  width: 70,
                ),
                FloatingActionButton(
                  onPressed: _toss,
                  tooltip: 'Flip Coin Once',
                  child: const Icon(Icons
                      .rotate_left_rounded), // This trailing comma makes auto-formatting nicer for build methods.
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            _heads > _tails
                ? const Text("Winner is Heads!")
                : _tails > _heads
                    ? const Text("Winner is Tails!")
                    : const Text("Its a draw!")
          ],
        ),
      ),
    );
  }
}
