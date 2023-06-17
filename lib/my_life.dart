import 'package:flutter/material.dart';
import 'globals.dart';

class MyLife extends StatelessWidget {
  const MyLife({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar("Solo leveling - En mi vida"),
      body: Column(
        children: [
          Image.network(mainPhotoURL),
          const Titulo(text: "¿Qué me ha parecido esta serie?"),
          Container(
            padding: const EdgeInsets.all(7.0),
            child: Text("No se como conocí solo leveling, pero es una de mis historias favoritas, a la cual le he dedicado mucho tiempo al leerme dicho comic. La historia me parece muy dura realmente, Ver como el cazador mas debil de todos escala desde lo mas debil a ser lo más fuerte. Al estar leyendola me generó la pregunta de: ¿Por qué no han animado esto? pero con el tiempo vi que la indutria ya tenía esos planes para dicho comic (Manwha). \nNada a esperar al 2024...",
              style: parrafoStyle,
              textAlign: TextAlign.justify,
            )
          )
        ],
      ),
    );
  }
}