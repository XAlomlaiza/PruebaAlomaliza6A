import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String name;
  final String information;
  final String comment;
  final int stars;

  const Review({
    required this.pathImage,
    required this.name,
    required this.information,
    required this.comment,
    required this.stars,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> starWidgets = [];

    for (int i = 0; i < 5; i++) {
      if (i < stars) {
        if (i < 3) {
          // Primeras 3 estrellas llenas
          starWidgets.add(const Icon(
            Icons.star,
            color: Colors.yellow,
            size: 15,
          ));
        } else if (i == 3) {
          // Cuarta estrella semi-llena
          starWidgets.add(const Icon(
            Icons.star_half,
            color: Colors.yellow,
            size: 15,
          ));
        } else {
          // Última estrella vacía
          starWidgets.add(const Icon(
            Icons.star_border,
            color: Colors.yellow,
            size: 15,
          ));
        }
      } else {
        // Estrellas vacías
        starWidgets.add(const Icon(
          Icons.star_border,
          color: Colors.grey,
          size: 15,
        ));
      }
    }

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
                ...starWidgets,
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
