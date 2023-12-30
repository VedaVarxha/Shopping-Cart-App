import 'package:flutter/material.dart';
import 'check.dart';
import 'const.dart';
import 'vegetables.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> currentState = Constants.fruitsMap.keys.toList();

  String appBarTitle = 'Fruits';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: currentState.length,
              itemBuilder: (context, index) {
                return CustomCheckBox(objectName: currentState[index]);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ThirdScreen()));
            },
            child: const Text('Next', style: TextStyle(color: Colors.black)),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}