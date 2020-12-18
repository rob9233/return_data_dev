import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  final String urlA = 'https://picsum.photos/250?image=29';
  final String urlB = 'https://picsum.photos/250?image=1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(urlA),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, urlA);
                },
                child: Text('A'),
              ),
            ),
            Image.network(urlB),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, urlB);
                },
                child: Text('B'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
