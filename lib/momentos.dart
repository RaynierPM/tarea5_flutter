import 'package:flutter/material.dart';
import 'package:tarea5_flutter/momento.dart';
import 'globals.dart';

class Momentos extends StatelessWidget {
  const Momentos ({super.key}); 


  @override
  Widget build(BuildContext context) {

    List<momento> momentos = [
      momento(
        "Sung Jin-Woo Vs Igris", 
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT64djaeGjMJUQDpnh2TtDPDpJ3C0AP25WRjQ&usqp=CAU", 
        "Sung Jin-woo se encuentra atravesando una quest(mision) dada por el sistema para elegir su clase y desbloquear habilidades de clase y lucha contra el enemigo más fuerte que habia encotnrado hasta el momento.", 
        ""),
      momento(
        "Raid Isla JeJu", 
        "https://cdn.idntimes.com/content-images/duniaku/post/20191227/jejuisland01-b49cb41f8d39d9b0917c9c62c27672df.jpg", 
        "Sung Jin-woo, se une al Raid de una mazmorra de Rango S, que se quebró lo hace años. En esta se ha formado un grupo para cerrar la mazmorra, la cual se salió de control, y hay buena pelea y a todo esto se le suma la traición del equipo japones que habia patrocinado la Raid.", 
        ""),
      momento(
        "Sung jin-woo vs Anteres (Monarca Dragon)", 
        "https://a-static.besthdwallpaper.com/solo-leveling-shadow-monarch-sung-jin-woo-vs-dragon-monarch-antares-wallpaper-2880x1620-88323_52.jpg", 
        "Sung jin-woo lucha contra el monarca mas fuerte (El monarca de la destruccion), desatando el poder heredado por Ashborn el antiguo monarca de las sombras.", 
        "")
    ];

    return Scaffold(
      appBar: getAppBar("Momentos fascinantes!!"),
      body: ListView(
        children: momentos.map((moment) => TextButton(
          style: TextButton.styleFrom(
            elevation: 20,
            shadowColor: Colors.grey[600],
            shape: const BeveledRectangleBorder()
          ),
          onPressed: () {showDescription(context, moment.descripcion, moment.video);}, 
          child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: (MediaQuery.of(context).size.width)*.9,
              height: (MediaQuery.of(context).size.height)*.25,
              child: Image.network(moment.imagen, fit: BoxFit.cover,
                errorBuilder:(context, error, stackTrace) => const Center(child: Text("Problemas para cargar la imagen")),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: (MediaQuery.of(context).size.width)*.0004,
              child: Container(
                width: (MediaQuery.of(context).size.width)*.9,
                height: 40,
                color: Colors.black54,
                child: Text(
                  moment.nombre,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Diphy",
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            )
          ],
        ))).toList(),
      ),
    );
  }

  showDescription(BuildContext context, String descripcion, String videoURL) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent, 
      builder: (builder) => Container(
        decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0, // has the effect of softening the shadow
                  spreadRadius: 0.0, // has the effect of extending the shadow
                )
              ],
        ),alignment: Alignment.topLeft,
        child: Column(
          children: [
            Text("na na na$videoURL"),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(descripcion, 
                style: TextStyle(
                  color: mainColor, 
                  fontWeight: FontWeight.bold, 
                  ),
                  textAlign: TextAlign.justify,
                ),
            )
            
          ],
        ),
        
      )
    );

  }



}