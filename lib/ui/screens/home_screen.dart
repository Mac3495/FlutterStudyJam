import 'package:flutter/material.dart';

// Si es una clase empieza con mayuscula 

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.accessibility_outlined),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Business'),
                Text('Comunication'),
                Text('Finance'),
              ],
            ),
            Image.network(
              'https://cdn2.dineroenimagen.com/media/dinero/styles/gallerie/public/images/2019/01/2084092.jpg',
              width: 100,
              height: 50,
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_circle_sharp),
        onPressed: (){}
      ),
    );
  }
}