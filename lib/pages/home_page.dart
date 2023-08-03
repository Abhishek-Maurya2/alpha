import 'package:alpha/components/num_pad.dart';
import 'package:flutter/material.dart';

import '../components/app_drawer.dart';
import '../components/profile_box.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 50),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Theme.of(context)
                  .colorScheme
                  .secondaryContainer
                  .withOpacity(0.5),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  icon: const Icon(Icons.menu),
                ),
                IconButton(icon: const Icon(Icons.search), onPressed: () {}),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.account_circle),
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => const Dialog(
                      child: ProfileBox(),
                    ),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Text('Button has been clicked $_counter times!'),
                TextButton(
                  onPressed: _incrementCounter,
                  child: const Text('Click me!'),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return const MyNumpad();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
