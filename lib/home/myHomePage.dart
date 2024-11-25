import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;
  void Increment() {
    setState(() {
      _count++;
    });
  }

  void Decrement() {
    setState(() {
      _count--;
    });
  }

  void Reset() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          'ຮ້ານຄາເຟ່ Neverland',
          style: TextStyle(
            fontFamily: 'NotoSans-Regular',
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Reset();
          },
          icon: Icon(
            Icons.refresh,
            color: Colors.white,
            size: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Increment();
            },
            icon: Icon(
              Icons.add,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: () {
              Decrement();
            },
            icon: Icon(
              Icons.remove,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              size: 24,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.white,
              Colors.blue,
            ],
            radius: 1,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'ສະແດງການນັບເລກ',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                ),
              ),
              Text(
                '$_count',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red[300],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Increment();
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.blue,
        ),
      ),
    );
  }
}
