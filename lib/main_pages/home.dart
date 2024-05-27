import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.yellow.shade700,
          title: const CupertinoSearchTextField(),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.pink,
            indicatorWeight: 8,
            tabs: [
              RepeatedTab(label: 'Men'),
              RepeatedTab(label: 'Women'),
              RepeatedTab(label: 'Shoes'),
              RepeatedTab(label: 'Bags'),
              RepeatedTab(label: 'Jewellery'),
              RepeatedTab(label: 'Electronics'),
              RepeatedTab(label: 'Accessories'),
              RepeatedTab(label: 'Kids'),
              RepeatedTab(label: 'Beauty'),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Center(child: Text('Men')),
          Center(child: Text('Women')),
          Center(child: Text('Shoes')),
          Center(child: Text('Bags')),
          Center(child: Text('Jewellery')),
          Center(child: Text('Electronics')),
          Center(child: Text('Accessories')),
          Center(child: Text('Kids')),
          Center(child: Text('Beauty')), 
        ]),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(
      label,
      style: TextStyle(color: Colors.indigo.shade600),
    ));
  }
}
