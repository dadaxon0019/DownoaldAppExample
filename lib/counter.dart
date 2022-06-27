import 'package:flutter/material.dart';

class HomeCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: CounterState(),
      ),
    );
  }
}

class CounterState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterStateState();
  }
}

class _CounterStateState extends State<CounterState> {
  late int value;

  @override
  void initState() {
    value = 19;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        decoration: BoxDecoration(color: Colors.grey),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    value -= 1;
                  });
                },
                icon: Icon(Icons.star)),
            Text('${value}'),
            IconButton(
                onPressed: () {
                  setState(() {
                    value += 1;
                  });
                },
                icon: Icon(Icons.star))
          ],
        ),
      ),
    );
  }
}
