import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String pregunta;
  final String accion;

  const Labels({
    Key key,
    @required this.ruta,
    @required this.pregunta,
    @required this.accion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(this.pregunta,
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w300,
                  fontSize: 14)),
          GestureDetector(
            child: Text(this.accion,
                style: TextStyle(
                    color: Colors.blue[600],
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          ),
        ],
      ),
    );
  }
}
