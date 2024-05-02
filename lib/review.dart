import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String name;
  final String information;
  final String comment;
  final int stars; // Nuevo parámetro para la cantidad de estrellas

  const Review({
    required this.pathImage,
    required this.name,
    required this.information,
    required this.comment,
    required this.stars, // Agregamos el nuevo parámetro
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  information,
                  style: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 13.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                // Aquí generamos los iconos de estrellas según la cantidad especificada
                for (int i = 0; i < stars; i++)
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
              ],
            ),
            Text(
              comment,
              style: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 13.0,
                color: Colors.black54,
              ),
            ),
          ],
        )
      ],
    );
  }
}