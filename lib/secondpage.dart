import 'package:flutter/material.dart';
import 'package:learning_provider_app/provider/list_provider.dart';
import 'package:provider/provider.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _Secondpage();
}

class _Secondpage extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberListProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          child: const Icon(Icons.add),
          onPressed: () {
            numberListProviderModel.add();
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Center(child: Text('Second Page')),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                numberListProviderModel.numberList.last.toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numberListProviderModel.numberList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        numberListProviderModel.numberList[index].toString(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
