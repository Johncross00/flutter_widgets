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
                icon: const Icon(Icons.menu, color: Colors.white, size: 30,),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.white, size: 30,),
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
              textAlign: TextAlign.start,
              enableSuggestions: true,
              cursorColor: Colors.black,
              readOnly: false,
              enabled: true,
              autofocus: true,
              decoration: InputDecoration(
                alignLabelWithHint: false,
                // errorText: 'Error',
                helperText: 'Just write',
                labelText: 'Number',
                isDense: false,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Enter your number',
                icon: const Icon(Icons.phone_android),
                iconColor: Colors.blueGrey,
                suffixIcon: const Icon(Icons.numbers),
                hintStyle: const TextStyle(color: Colors.black),
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
      color: Colors.deepPurpleAccent[800],
      elevation: 10,
      // margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            PopupMenuButton<String>(
              color: Colors.orange.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1
                ),
                borderRadius: BorderRadius.circular(15)
              ),
              onSelected: (String result){
                if(result == 'Edit'){
                  // print ('Edit');
                }
                else if(result == 'Delete'){
                  // print ('Delete');
                }
              }, itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Edit',
                    child: Text('Edit'),
                  ),const PopupMenuItem<String>(
                    value: 'Delete',
                    child: Text('Delete'),
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
