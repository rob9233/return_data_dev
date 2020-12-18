import 'package:flutter/material.dart';
import 'package:return_data_dev/screens/selection_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectionUrl =
      'https://i.pinimg.com/originals/22/a4/97/22a49702a72e91f26ec8d5c6e52f5d05.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Returning Data Demo'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(selectionUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                _navigateAndDisplaySelection(context);
              },
              child: Text('Which image do you like more?'),
            ),
          ),
        ],
      )),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );

    if (result != null) {
      setState(() {
        selectionUrl = result;
      });
    }
  }
}
