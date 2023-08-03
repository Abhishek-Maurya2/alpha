import 'package:flutter/material.dart';

class MyStatsPage extends StatefulWidget {
  const MyStatsPage({super.key});

  @override
  State<MyStatsPage> createState() => _MyStatsPageState();
}

class _MyStatsPageState extends State<MyStatsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Stats Page"),
    );
  }
}
