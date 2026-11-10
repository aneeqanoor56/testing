import 'package:flutter/material.dart';

void main() {
  runApp(imagecode());
}

class imagecode extends StatelessWidget {
  const imagecode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Shoe Store',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(14),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  height: 185,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Image.asset('assets/images/image1.png'),
                ),
                SizedBox(height: 15),

                Text(
                  'Sport Shoes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),

                Text(
                  'Premium Quality Shoes',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                SizedBox(height: 12),

                Text(
                  'Rs. 2500',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  'Select Shoe Type',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 10),

                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Sport'),
                    ),

                    SizedBox(width: 8),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Casual'),
                    ),

                    SizedBox(width: 8),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Running'),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Text(
                  'Select Color',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 12),
                Row(
                  children: [
                    CircleAvatar(radius: 16, backgroundColor: Colors.black),

                    SizedBox(width: 12),

                    CircleAvatar(radius: 16, backgroundColor: Colors.red),

                    SizedBox(width: 12),

                    CircleAvatar(radius: 16, backgroundColor: Colors.blue),

                    SizedBox(width: 12),

                    CircleAvatar(radius: 16, backgroundColor: Colors.green),
                  ],
                ),

                SizedBox(height: 22),
                Text(
                  'Select Size',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 10),

                Row(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('39')),

                    SizedBox(width: 5),

                    ElevatedButton(onPressed: () {}, child: Text('40')),

                    SizedBox(width: 5),

                    ElevatedButton(onPressed: () {}, child: Text('41')),

                    SizedBox(width: 5),

                    ElevatedButton(onPressed: () {}, child: Text('42')),

                    SizedBox(width: 5),

                    ElevatedButton(onPressed: () {}, child: Text('43')),
                  ],
                ),

                SizedBox(height: 20),
                Text(
                  'Quantity',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 8),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.remove_circle_outline,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(width: 12),

                    Text('1', style: TextStyle(fontSize: 16)),

                    SizedBox(width: 12),

                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.add_circle_outline,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 18),
                Text(
                  'Total: Rs. 2500',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 18),

                SizedBox(
                  width: double.infinity,
                  height: 48,

                  child: ElevatedButton(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    child: Text(
                      'ADD TO CART',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
