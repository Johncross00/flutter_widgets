import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  onPressed: () => {},
                  icon: Icon(Icons.menu, color: Colors.white, size: 30,),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.search, color: Colors.white, size: 30,),
                ),
              ],
            ),
          ],
          backgroundColor: Colors.blue[900]
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: TextField(
          keyboardType: TextInputType.number,
          showCursor: true,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            prefix: TextButton.icon(onPressed: (){}, icon: Icon(Icons.search), label: Text("fe")),
            suffix: Icon(Icons.mode_fan_off),
            hintText: 'Enter your number',
            icon: Icon(Icons.phone_android),
            iconColor: Colors.red,
            suffixIcon: Icon(Icons.tab),
            hintStyle: TextStyle(color: Colors.black),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10)
            ),
          )
        ),
      ),
    );
  }
}
