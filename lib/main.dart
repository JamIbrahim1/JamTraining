import 'package:flutter/material.dart';

void main () {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green ,
        appBar: AppBar (
          backgroundColor: Colors.transparent,
          title: const Text('Checkin List'),
          centerTitle: true,
         ),
         body: const SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text('Check all you want.'),
                  SizedBox(
                    height: 25,
                  ),
                  LinearProgressIndicator(
                    value: 0.25,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListahanSaMgaChismosa()
              
                ],
                
                  ),
                  ),
              
              ),
            ),
          );
       
      
    
    
  }
}

class ListahanSaMgaChismosa extends StatelessWidget {
  const ListahanSaMgaChismosa({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Chismosa(),
      Chismosa(),
      Chismosa(),
      Chismosa(),
      Chismosa(),
      Chismosa(),
      Chismosa(),
      Chismosa(),
      Chismosa(),
      Chismosa(),
    ],

    );
  }
}

class Chismosa extends StatefulWidget {
  const Chismosa({super.key});

  @override
  State<Chismosa> createState() => _ChismosaState();
}

class _ChismosaState extends State<Chismosa> {

bool _value = false;


  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Checkbox( onChanged: (newValue) {
          setState(() {
            _value = !_value; _value = _value;
            
          });
          

        },
        value: _value,
        ),
        const Text('Bahog Ilok'),
      ],
    );
  }
}