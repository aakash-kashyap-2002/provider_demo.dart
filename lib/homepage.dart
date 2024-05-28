import 'package:flutter/material.dart';
import 'package:learning_provider_app/provider/list_provider.dart';
import 'package:learning_provider_app/secondpage.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() {
    return _Homepage();
  }
}

class _Homepage extends State<Homepage> {
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
                title: const Center(child: Text('Provider Demo')),
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
                        itemCount: numberListProviderModel.numberList.length,
                        itemBuilder: (context, index) {
                          return Text(
                            numberListProviderModel.numberList[index]
                                .toString(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          );
                        },
                      ),
                    ),
                    const Spacer(),
                    TextButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.deepPurple)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Secondpage()));
                        },
                        icon: const Icon(
                          Icons.skip_next_outlined,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Next',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ));
  }
}
