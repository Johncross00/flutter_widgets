import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Catalog',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 5,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu, color: Colors.white, size: 30,),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.white, size: 30,),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            TextField(
              // obscureText: (true),
              // maxLines: 5,
              keyboardType: TextInputType.number,
              showCursor: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Enter your number',
                icon: Icon(Icons.phone_android),
                iconColor: Colors.red,
                suffixIcon: Icon(Icons.numbers),
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Text("This is the leading"),
                  title: Text('List'),
                  subtitle: Text('List'),
                ),
                ListTile(
                  title: Text('List'),
                  subtitle: Text('List'),
                ),
                ListTile(
                  title: Text('List'),
                  subtitle: Text('List'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

