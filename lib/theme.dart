import 'package:flutter/material.dart';
import 'package:flutter_application_1/navi.dart';
import 'package:get/get.dart';

void main() {
  runApp(Chatui());
}

class Chatui extends StatefulWidget {
  const Chatui({super.key});

  @override
  State<Chatui> createState() => _ChatuiState();
}

class _ChatuiState extends State<Chatui> {
  List<String> students = [
    'Ammara',
    'kinza',
    'Raina',
    'Sammar Ali',
    'Meesam Ali',
    'Rukh e Fatima',
    'Ahmad',
    'Huzaifa',
    'Hariem',
    'sadia',
    'boy group',
    'fahad',
    'saad',
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Chat UI',
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                decoration: InputDecoration(
                  hint: Text(
                    'search here',
                    style: TextStyle(color: Colors.white),
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          print(index);

                          // Navigator.push(
                          //   // context,
                          //   // MaterialPageRoute(
                          //   //   builder: (context) =>
                          //   //       Chat(name: students[index], n: index),
                          //   // ),
                          // );
                          Get.to(Chat(name: students[index], n: index));
                        },
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Text(
                          students[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          'WHO ARE YOU',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "10:00 Am",
                              style: TextStyle(color: Colors.white),
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.teal,
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Divider(
                      // height: 10,
                      //thickness: 0.5,
                      //color: Colors.black87,
                      // ),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
        ),
      ),
    );
  }
}
