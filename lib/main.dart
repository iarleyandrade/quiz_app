import 'package:flutter/material.dart';
import 'package:quiz_app/resultado.dart';
import 'questionario.dart';
import 'questoes.dart';

void main(List<String> args) {
  runApp(const QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  Questoes perguntas = Questoes();

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void reiniciarQuiz() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.getLength();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Quiz do Flutter',
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                onResponse: _responder,
                perguntaSelecionada: _perguntaSelecionada,
                perguntas: perguntas.getPerguntas(),
              )
            : Resultado(_pontuacaoTotal, reiniciarQuiz),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
