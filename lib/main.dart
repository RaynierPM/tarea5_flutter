import 'package:flutter/material.dart';
import 'package:tarea5_flutter/about.dart';
import 'package:tarea5_flutter/contratame.dart';
import 'package:tarea5_flutter/momentos.dart';
import 'package:tarea5_flutter/my_life.dart';
import 'package:tarea5_flutter/portada.dart';
import 'globals.dart';
import 'personajes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea#5 - Solo leveling',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      initialRoute:'/',
      routes: {
        '/':(context) => MyHomePage(title: "Solo Leveling"),
        '/Portada' : (context) => const Portada(),
        '/Personajes':(context) => const Personajes(),
        '/Momentos':(context) => const Momentos(),
        '/Acerca de':(context) => const Acerca(),
        '/En mi vida':(context) => const MyLife(),
        '/Contratame':(context) => const Contratame()

      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final List<String> menu = [
    'Portada',
    'Personajes',
    'Momentos',
    'Acerca de',
    'En mi vida',
    'Contratame'
  ];


  final String title;
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: getAppBar(title),
        body: Center(
          child: Column(

            children: [
              Image.network(mainPhotoURL),
              Expanded(
                  child:ListView.separated(
                    padding: const EdgeInsets.all(20.0),
                    itemCount: menu.length,
                    itemBuilder: (context, i) =>
                    SizedBox(
                      height: 50,
                      child:ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/${menu[i]}'),
                        style: config['buttonStyle'],
                        child: Text(menu[i], style:const TextStyle(color: Colors.white, fontFamily: 'KauShan', fontSize: 19),)
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(height: 15.0,),
                  )
              )
            ],
          ),
        ),
      );
    }
// Funciones



}