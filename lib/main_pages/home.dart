import 'package:flutter/material.dart';
import 'package:flutter_mysql_udemy/minor_screens/search.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

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
          backgroundColor: Colors.grey.shade300,
          title: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()));
            },
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.indigo.shade500,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 0.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'What are you looking for?',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          'Search',
                          style:
                              TextStyle(color: Colors.indigo, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
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
  const RepeatedTab({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(
      label,
      style: TextStyle(color: Colors.indigo.shade600),
    ));
  }
}
