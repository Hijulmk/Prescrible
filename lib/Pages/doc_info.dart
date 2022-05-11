import 'package:flutter/material.dart';
class DocInformation extends StatefulWidget {
  const DocInformation({ Key? key }) : super(key: key);

  @override
  State<DocInformation> createState() => _DocInformationState();
}

class _DocInformationState extends State<DocInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Doc Info"),),
      
    );
  }
}