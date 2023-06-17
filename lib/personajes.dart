import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Personaje.dart';
import 'globals.dart';


final List<Personaje> datos = [
  Personaje("Sung Jin-Woo", "Sung Jin-Woo era un Cazador de Clase E, que es gente dotada de un poder especial que les permitía cazar monstruos. Sin embargo, debido a su bajo rango, era extremadamente débil, y arriesgó su vida sólo para conseguir el dinero suficiente para pagar las facturas del hospital para mantener a su madre con vida.", "https://i.pinimg.com/236x/75/5d/28/755d2885ec9aa305b9400ca16dcad52a.jpg"),
  Personaje("Cha Hae-in", "Cha Hae-In es una cazadora de rango S de Corea del Sur y la única mujer en el top 10. Ella es la vicepresidenta del Gremio de Cazadores.", "https://i.pinimg.com/236x/dd/f3/5a/ddf35ab22a5ff30070e51208c6b1eecf.jpg"),
  Personaje("Beru", "El Rey Hormiga (왕) era una bestia mágica inmensamente poderosa y el jefe oculto de la puerta de rango S de la isla de Jeju. Fue el responsable de masacrar por sí solo a ocho de los dieciséis rangos S que intentaron abrir la puerta, incluido Goto Ryuji, y habría masacrado a todo el equipo de asalto coreano de no haber sido por Sung Jinwoo, que fue capaz de matar a la criatura tras una feroz lucha.", "https://i.pinimg.com/236x/08/a1/46/08a14677ad0ee23809a5098e6c54031c.jpg"),
  Personaje("Iron - Kim Chul", "Kim Chul (김철) fue un cazador coreano de rango A del gremio del Tigre Blanco que tras ciertos eventos, termina siendo del ejercito de las sombras de Sung.", "https://i.pinimg.com/236x/bf/dd/d2/bfddd21d9ad58c82eff3d2f19b7fcf56.jpg"),
  Personaje("Bellion", "Bellion (벨리온) es un siervo de Ashborn y la Sombra más fuerte que existe." ,"https://i.pinimg.com/236x/a6/a6/44/a6a6441aca27ac3e90d3b377b8dbcc3c.jpg"),
  Personaje("Ashborn", "Ashborn (아스본) era el Rey de los Muertos y el Monarca de las Sombras. También fue el Gobernante más fuerte y el Mayor Fragmento de Luz Brillante.", "https://i.pinimg.com/236x/9b/31/b1/9b31b1c51595baf4e9f1237d7c13e93a.jpg"),
  Personaje("Go gun-Hee", "Go Gun-Hee es un cazador de rango S de Corea del Sur y el presidente de la Asociación de Cazadores de Corea. A pesar de su inmenso poder, su cuerpo se ha debilitado debido a la vejez, por lo que es incapaz de luchar. El dice que ganó sus poderes muy tarde. Tan tarde que le impide usarlo al máximo. Es por eso que tuvo que tomar medicamentos con frecuencia y su médico siempre estaba preocupado de que su corazón pudiera fallar debido a ciertos rangos de emociones, como la emoción", "https://i.pinimg.com/736x/c2/3f/e6/c23fe6adbc5c962bcf6cda409039c626.jpg"),
  Personaje("Sung Il-Hwan", "Sung Il-Hwan (성일환成日煥) es el padre de Sung Jin-Woo y Sung Jin-Ah que desapareció dentro de un portal en un parque de atracciones en Seúl mientras salvaba a sus compañeros de quedar dentro, esto sucedió antes de los eventos de la historia principal. Su primera aparición fue dentro de un portal Rango A al Este de los Estados Unidos.", "https://i.pinimg.com/564x/a6/72/cb/a672cbebce90b409fd3b373f8df30c4e.jpg")
];


class Personajes extends StatelessWidget {
  const Personajes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: getAppBar("Personajes"),
      body: const InfoPersonajes()
    );
  }
}

class InfoPersonajes extends StatefulWidget {
  const InfoPersonajes({super.key});

  @override
  State<InfoPersonajes> createState() => _InfoPersonajeState();
}

class _InfoPersonajeState extends State<InfoPersonajes> {

  String _titulo = "";
  String _descripcion = "";

  @override 
  void initState() {
    super.initState();
    _titulo = datos[0].nombre;
    _descripcion = datos[0].descripcion;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(_titulo,textAlign: TextAlign.center, style: config['titles'],),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height* .6,
            viewportFraction: 0.7,
            onPageChanged: updater,
          ),
          items:
            datos.map((dato) => ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(dato.imagen, //dato.imagen = Url de la imagen 
                fit: BoxFit.cover, 
                width: MediaQuery.of(context).size.width* .68, 
                alignment: Alignment.center,
              ),
            )
            ).toList()
          ,
        ),
        Expanded(
          child: ListView (
            children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(5.0),
              child: Text(
                _descripcion,
                textAlign: TextAlign.justify,
                  style: TextStyle(
                  fontFamily: 'Diphy',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: mainColor
                ),
              )
            ),
          ],
          ) 
          
        ),
      ],
    );
  }


  dynamic updater(int index, CarouselPageChangedReason reason) {
    setState(() {
      _titulo = datos[index].nombre;
      _descripcion = datos[index].descripcion;
    });
  }
}