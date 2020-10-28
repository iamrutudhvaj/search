import 'package:flutter/material.dart';
import 'package:search/server_communicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.arrow_back), onPressed: () {})];
  }

  @override
  Widget buildLeading(BuildContext context) {
    IconButton(icon: Icon(Icons.close), onPressed: () {});
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = loadFoodItem();
    return ListView.builder(
      itemCount: myList.length,
      itemBuilder: (context, index) {
        final FoodItem listItem = myList[index];
        return ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(listItem.title),
              Text(listItem.category),
            ],
          ),
        );
      },
    );
  }
}
