import 'package:flutter/material.dart';
import 'globals.dart';

class Acerca extends StatelessWidget {
  const Acerca({super.key});

  
  @override
  Widget build(BuildContext context) {

    const String descripcion = "En un mundo en el que ciertos humanos poseen habilidades mágicas, llamados cazadores, deben luchar contra monstruos para proteger a la raza humana de una aniquilación segura, un cazador muy débil llamado Sung Jinwoo se encuentra en una lucha en la que solo puede tratar de sobrevivir. Un día, después de sobrevivir por poco a una mazmorra doble abrumadoramente poderosa que casi acaba con todo su grupo, un programa misterioso llamado Sistema lo elige como su único jugador y, a su vez, le da la sorprendente habilidad de subir de nivel sin límites. Sigue el viaje de Jinwoo mientras lucha contra todo tipo de enemigos, tanto humanos como monstruos, para descubrir los secretos que entrañan las mazmorras y la verdadera fuente de sus poderes.";

    const List<List<String>> informaciones = [
      ["Capitulos: ", "179"],
      ["Temporadas: ", "2"],
      ["Creador: ", "Chu-Gong"],
      ["Plataformas disponibles: ", "Webtoon, KakaoPage (Sur-Corea)"]
    ];

    return Scaffold(
      appBar: getAppBar("Sobre Solo Leveling"),

      body: SizedBox(
        height: MediaQuery.of(context).size.height * .9,
        child: ListView(
          children: [
            Image.network(mainPhotoURL),
            const Titulo(text: "Sipnosis"),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Text(descripcion, textAlign: TextAlign.justify, style: parrafoStyle,),
            ),
            const Titulo(text: "Información"),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: informaciones.map((info) => 
                RichText(
                  text: TextSpan(
                    text: info[0],
                    style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: "Diphy"
                    ),
                    children: [
                      TextSpan(
                        text: info[1], 
                        style: parrafoStyle
                      )
                    ]
                  )
                )
              ).toList(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5, style: BorderStyle.solid)
              ),
              child: Text("Animacion confirmada, proximanente... (Enero del 2024)", style: parrafoStyle,),
            )
          ],
        ),
      )
    );
  }
}




