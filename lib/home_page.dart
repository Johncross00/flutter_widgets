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
              keyboardType: TextInputType.number,
              showCursor: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Enter your number',
                icon: Icon(Icons.phone_android),
                iconColor: Colors.blueGrey,
                suffixIcon: Icon(Icons.numbers),
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  buildListTile(context, 'This is the title', 'This is the subtitle'),
                  buildListTile(context, 'This is the title', 'This is the subtitle'),
                  buildListTile(context, 'This is the title', 'This is the subtitle'),
                  buildListTile(context, 'This is the title', 'This is the subtitle'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(BuildContext context, String title, String subtitle) {
    return Card(
      elevation: 15,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: CircleAvatar(child: Icon(Icons.person)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: PopupMenuButton<String>(
          onSelected: (String result){
            if(result == 'Edit'){
              print ('Edit');
            }
            else if(result == 'Delete'){
              print ('Delete');
            }
          }, itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'Edit',
                child: Text('Edit'),
              ),PopupMenuItem<String>(
                value: 'Delete',
                child: Text('Delete'),
              ),
            ]

        )
      ),
    );
  }
}
