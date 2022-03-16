import 'package:flutter/material.dart';
import 'package:multiple_choice/ReadingMaterials/TextWrapper.dart';

class ReadingMaterials extends StatefulWidget {
  @override
  State<ReadingMaterials> createState() => _ReadingMaterialsState();
}

class _ReadingMaterialsState extends State<ReadingMaterials> {
  final materials = [
    'Convolutional Neural Networks',
    'Computer Networking',
    'Cloud Computing',
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
    'Computer networking refers to interconnected computing devices that can exchange data and share resources with each other. These networked devices use a system of rules, called communications protocols, to transmit information over physical or wireless technologies. Computer network design falls under two broad categories: 1 - Client-server architecture => In this type of computer network, nodes may be servers or clients. Server nodes provide resources like memory, processing power, or data to client nodes. Server nodes may also manage client node behavior. Clients may communicate with each other, but they do not share resources. For example, some computer devices in enterprise networks store data and configuration settings. These devices are the servers in the network. Clients may access this data by making a request to the server machine. 2 - Peer-to-peer architecture => In Peer-to-Peer architecture, connected computers have equal powers and privileges. There is no central server for coordination. Each device in the computer network can act as either client or server. Each peer may share some of its resources, like memory and processing power, with the entire computer network. For example, some companies use P2P architecture to host memory-consuming applications, such as 3-D graphic rendering, across multiple digital devices',
    'Cloud Computing is the delivery of computing services—including servers, storage, databases, networking, software, analytics, and intelligence—over the Internet (“the cloud”) to offer faster innovation, flexible resources, and economies of scale. You typically pay only for cloud services you use, helping you lower your operating costs, run your infrastructure more efficiently, and scale as your business needs change. Not all clouds are the same and not one type of cloud computing is right for everyone. Several different models, types, and services have evolved to help offer the right solution for your needs. 1 - Public cloud. 2 - Private cloud. 3 - Hybrid cloud',
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
