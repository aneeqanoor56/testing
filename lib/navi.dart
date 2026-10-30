import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  Chat({super.key, required this.name, required this.n});
  final String name;
  final int n;

  List<String> messages = [
    'helo',
    'hi',
    'how are you',
    'im fine',
    'good',
    'okay by',
    'okay',
  ];

  bool isme = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(name)),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, Index) {
                    bool isme = Index % 2 != 0;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: isme
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.green.shade100,
                          child: Text(messages[Index]),
                          //Text(messages[indes]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
