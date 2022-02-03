import 'package:flutter/material.dart';

class Style extends StatefulWidget {
  const Style({Key? key}) : super(key: key);

  @override
  StyleState createState() => StyleState();
}

class StyleState extends State<Style> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('new app'),
      ),
      body: Column(
        children: [
         const Center(
              child: Text(
            'hlloo how are you',
            style: TextStyle(fontFamily: 'myfont'),
          ),),
          Container(
            child: Image(image: AssetImage('assets/image/avatar2.png')),
          )
        ],
      ),
    );
  }
}
