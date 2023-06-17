import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'globals.dart';

class Portada extends StatelessWidget {
  const Portada({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> images = [
      "https://i.pinimg.com/236x/1f/0a/25/1f0a259b365f037a855d1b20fd656e4d.jpg",
      "https://i.pinimg.com/236x/90/3c/8a/903c8a2e311937e885e1316150fccb82.jpg",
      "https://i.pinimg.com/236x/fd/a3/51/fda3511f6ca724e7595c98fd5839175c.jpg",
      "https://i.pinimg.com/236x/2b/62/18/2b62181575166824031522255c29c3c2.jpg",
      "https://i.pinimg.com/236x/3d/a0/d4/3da0d4090328c2099bff5914837ac1f8.jpg",
      "https://i.pinimg.com/236x/2c/04/6a/2c046ad82ee35552a3e2d01de0290890.jpg",
      "https://i.pinimg.com/236x/4b/fb/b9/4bfbb99782feedcd8e287d88db3cd5e6.jpg",
      "https://i.pinimg.com/564x/03/14/65/0314652010bc0238ab40cb909467c51d.jpg",
      "https://i.pinimg.com/236x/da/27/b9/da27b9eead7a7932c37f07b3e16fc40e.jpg",
      "https://i.pinimg.com/236x/4c/13/23/4c1323f5680eedd2fe2c47de273c1eda.jpg",
      "https://i.pinimg.com/236x/af/f4/f5/aff4f5e90afa928e06390596b7af4948.jpg",
      "https://i.pinimg.com/236x/af/e4/53/afe453904cd7353cce108593e61ac903.jpg",
      "https://i.pinimg.com/236x/6a/24/b0/6a24b07b1034c1efc79f4e97d027f570.jpg",
      "https://i.pinimg.com/236x/62/76/68/627668bf5cbcfa93d31d9834b5351d76.jpg",
      "https://i.pinimg.com/236x/6e/a5/35/6ea535b262716107aced77fa9ca14b91.jpg",
      "https://i.pinimg.com/236x/95/1e/73/951e73402524bdaf79e4acc4326a134c.jpg",
      "https://i.pinimg.com/236x/33/05/b0/3305b014333d4019455e272b07589e9e.jpg",
      "https://i.pinimg.com/236x/07/3f/e3/073fe3164d07d956016d29e250bf215d.jpg",
      "https://i.pinimg.com/236x/50/6d/25/506d2511b529f91e470a665867870a20.jpg"
    ];

    return Scaffold(
      appBar: getAppBar("Galeria de imagenes (Portada)"),
      body: SizedBox (
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:
          CarouselSlider(
              options: CarouselOptions(
                scrollDirection: Axis.vertical,
                autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                autoPlayAnimationDuration:const Duration(seconds: 2),
                autoPlayInterval:const Duration(seconds: 4),
                autoPlay: true,
                viewportFraction: 1,
                aspectRatio: 1.6,

              ),
              items: images.map((element) => 
                Image.network(
                  element, 
                  width: MediaQuery.of(context).size.width, 
                  height: MediaQuery.of(context).size.height, 
                  fit: BoxFit.fitWidth, 
                  alignment: Alignment.center,),
              ).toList(),
            ),
      )
    );
  }

}

