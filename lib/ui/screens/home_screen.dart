import 'package:flutter/material.dart';
import 'package:mi_app/ui/widgets/container_green_widget.dart';

// Si es una clase empieza con mayuscula 

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;

  TextEditingController numberOneController = TextEditingController();
  TextEditingController numberTwoController = TextEditingController();

  //NO USAR GETX
  //Provider
  //Flutter bloc
  //Cubit
  //Riverpod
  //BloC
  //Redux
  //Hoks

  void suma(){
    counter = 0;
    String numberOne = numberOneController.text;
    String numberTwo = numberTwoController.text;

    setState(() {
      counter = int.parse(numberOne) + int.parse(numberTwo);
      numberOneController.clear();
      numberTwoController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCECFD1),
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
                ContainerGreenWidget(title: 'TOP CHARTS',),
                ContainerGreenWidget(title: 'GAMES',),
                ContainerGreenWidget(title: 'CATEGORIES',),
              ], 
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://cdn2.dineroenimagen.com/media/dinero/styles/gallerie/public/images/2019/01/2084092.jpg',
                  ),
                  const Positioned(
                    right: 0,
                    bottom: 0,
                    child: Text('David')
                  ),
                  Positioned(
                    right: 0,
                    bottom: 20,
                    child: Text('Karo')
                  ),
                  Positioned(
                    left: 50,
                    bottom: 0,
                    child: Text('Juan')
                  ),
                  Positioned(child: Text(
                    'Pepe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),
                  )),
                  Positioned(
                    top: 20,
                    child: Text('Maria')
                  )
                ],
              ),
            ),
            Text(
              'Estrellas: $counter',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            TextFormField(
              controller: numberOneController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20,),
            TextFormField(
              controller: numberTwoController,
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.star),
        onPressed: suma
      ),
    );
  }
}