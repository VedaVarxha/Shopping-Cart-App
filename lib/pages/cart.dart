import 'package:flutter/material.dart';
import 'const.dart';
class FinalScreen extends StatefulWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  final array = DataStore.getArray();

  int finalPrice = 0;

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < array.length; i++) {
      finalPrice += DataStore.getPrice(array[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Out'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text('Summary', style: TextStyle(color: Colors.black),),

          Expanded(
            child: ListView.builder(
              itemCount: array.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(array[index], style: const TextStyle(color: Colors.black),),

                    Text(DataStore.getPrice(array[index]).toString(), style: const TextStyle(color: Colors.black),)
                  ],
                );
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Pay now', style: TextStyle(color: Colors.black),),

              Text(finalPrice.toString(), style: const TextStyle(color: Colors.black),),
              
            ],
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}