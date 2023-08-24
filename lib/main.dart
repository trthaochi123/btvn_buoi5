import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void showMessage(String name) {
    print(name);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Code On Demand"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Press me"),
            onPressed: () => showMessage("Tran thao chi"),
          ),
        ),
      )
    );
  }


}