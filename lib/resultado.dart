import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() onResetQuiz;

  const Resultado(this.pontuacao, this.onResetQuiz, {super.key});

  String get fraseResultado {
    if (pontuacao >= 5) {
      return 'Parabéns, você Fluttástico!';
    } else if (pontuacao >= 3) {
      return 'Você foi bem!';
    } else {
      return 'Não fique triste, tente outra vez...';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  fraseResultado,
                  style: const TextStyle(fontSize: 28),
                ),
              ),
              Text('Você acertou $pontuacao/5'),
            ],
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: onResetQuiz,
          child: const Text('Reiniciar Quiz', style: TextStyle(fontSize: 15)),
        )
      ],
    );
  }
}
