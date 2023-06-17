import 'package:flutter/material.dart';

Map<String, dynamic> config = {
  'mainColor': Colors.purple[600],
  'appBarTextStyle': const TextStyle(
    color: Colors.white,
    fontFamily: 'KauShan'
  ),
  'buttonStyle': ElevatedButton.styleFrom(
    backgroundColor: Colors.purple[600],
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
    ),
    elevation: 7,
    shadowColor: Colors.black
  ),
  'titles': TextStyle(
    fontFamily: "KauShan",
    color: Colors.purple[900],
    fontWeight: FontWeight.bold, 
    fontSize: 22,
  )
};

Color? mainColor = Colors.purple[900];

AppBar getAppBar(String title) =>
 AppBar(
    backgroundColor: config['mainColor'],
    title: Text(
      title,
      style: config['appBarTextStyle']
    ),
  );


class Titulo extends StatelessWidget {
  const Titulo({super.key, required this.text});


  final String text;

  @override
  Widget build(BuildContext context) => Text(text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontFamily: "KauShan",
      fontSize: 24,
      fontWeight: FontWeight.bold
    ),
  );

}


TextStyle parrafoStyle = TextStyle(
  fontFamily: "Diphy",
  fontStyle: FontStyle.italic,
  color: mainColor,
  fontWeight: FontWeight.bold,
  fontSize: 16
); 


String mainPhotoURL = "https://images7.alphacoders.com/125/thumbbig-1253512.webp";