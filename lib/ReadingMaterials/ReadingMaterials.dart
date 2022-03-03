import 'package:flutter/material.dart';

class ReadingMaterials extends StatelessWidget {
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
    'neural networks are a subset of machine learning, and they are at the heart of deep learning algorithms. They are comprised of node layers, containing an input layer, one or more hidden layers, and an output layer. Each node connects to another and has an associated weight and threshold. If the output of any individual node is above the specified threshold value, that node is activated, sending data to the next layer of the network. Otherwise, no data is passed along to the next layer of the network.',
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
        title: Text('Reading Materials',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 1),),
      ),
        backgroundColor: Color.fromRGBO(21, 76, 47, 1),
        body: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext Context,  index){
                  return Padding(padding: EdgeInsets.all(30),
                  child: Container(
                    height: 100,
                    color: Colors.black,
                    child: ListTile(
                      title: Text(materials[index], style: TextStyle(color: Colors.yellow),),
                      subtitle: Text(articles[index], style: TextStyle(color: Colors.yellow),),
                    )
                  ),);
                }),
        );
  }
}
