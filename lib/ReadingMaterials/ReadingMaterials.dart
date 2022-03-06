import 'package:flutter/material.dart';
import 'package:multiple_choice/ReadingMaterials/TextWrapper.dart';

class ReadingMaterials extends StatefulWidget {
  @override
  State<ReadingMaterials> createState() => _ReadingMaterialsState();
}

class _ReadingMaterialsState extends State<ReadingMaterials> {
  final materials = [
    'Convolutional Neural Networks',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
  ];

  final articles = [
    'Neural Networks are a subset of machine learning, and they are at the heart of deep learning algorithms. They are comprised of node layers, containing an input layer, one or more hidden layers, and an output layer. Each node connects to another and has an associated weight and threshold. If the output of any individual node is above the specified threshold value, that node is activated, sending data to the next layer of the network. Otherwise, no data is passed along to the next layer of the network. Convolutional neural networks are distinguished from other neural networks by their superior performance with image, speech, or audio signal inputs. They have three main types of layers, which are 1. Convolutional layer 2. Pooling Layer and 3. Fully Connected Layer',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
    'aaa',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(247, 211, 36, 1),
        title: Text(
          'Reading Materials',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ),
      backgroundColor: Color.fromRGBO(21, 76, 47, 1),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext Context, index) {
            return Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  color: Color.fromRGBO(247, 211, 36, 1),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          materials[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 16),
                        ),
                      ),
                      TextWrapper(text: articles[index])
                    ],
                  ),
                ));
          }),
    );
  }
}
