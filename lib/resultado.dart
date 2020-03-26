import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens! Sua pontuaçao foi de $pontuacao pontos.';
    } else if (pontuacao < 12) {
      return 'Voce e bom! Sua pontuaçao foi de $pontuacao pontos.';
    } else if (pontuacao < 16) {
      return 'Impressionante! Sua pontuaçao foi de $pontuacao pontos.';
    } else {
      return 'Nivel Jedi!! Sua pontuaçao foi de $pontuacao pontos.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
          color: Colors.black,
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
