import 'package:cheddar/Assets/color_chart.dart';
import 'package:flutter/material.dart';

class SuperMarketListPage extends StatefulWidget {
  const SuperMarketListPage({super.key});

  @override
  State<SuperMarketListPage> createState() => _SuperMarketListPageState();
}

class _SuperMarketListPageState extends State<SuperMarketListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: Center(
        child: Text('Select'),
      ),
    );
  }
}
