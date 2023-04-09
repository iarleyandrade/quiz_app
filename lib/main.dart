import 'package:flutter/material.dart';
import 'package:quiz_app/resultado.dart';
import 'questionario.dart';

void main(List<String> args) {
  runApp(const QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é o principal objetivo do Flutter?',
      'respostas': [
        {
          'texto':
              'Desenvolver aplicativos nativos apenas para dispositivos Android',
          'pontuacao': 0
        },
        {
          'texto':
              'Desenvolver aplicativos nativos apenas para dispositivos iOS',
          'pontuacao': 0
        },
        {
          'texto':
              'Desenvolver aplicativos nativos para dispositivos Android e iOS',
          'pontuacao': 0
        },
        {
          'texto':
              'Desenvolver aplicativos híbridos para dispositivos Android e iOS',
          'pontuacao': 1
        },
      ]
    },
    {
      'texto': 'O que é o "hot reload" em Flutter?',
      'respostas': [
        {
          'texto':
              'É uma técnica para carregar imagens e vídeos em cache para uma melhor performance em Flutter.',
          'pontuacao': 0
        },
        {
          'texto':
              'É uma função que permite reiniciar o aplicativo Flutter rapidamente durante o desenvolvimento para ver as mudanças feitas no código em tempo real.',
          'pontuacao': 1
        },
        {
          'texto':
              'É uma função para atualizar a versão do Flutter SDK instalada no ambiente de desenvolvimento.',
          'pontuacao': 0
        },
        {
          'texto':
              'É uma técnica para depurar e corrigir erros em tempo real durante o desenvolvimento em Flutter.',
          'pontuacao': 0
        },
      ]
    },
    {
      'texto':
          'Qual dos seguintes widgets do Flutter é usado para criar uma lista com rolagem vertical?',
      'respostas': [
        {'texto': 'ListView', 'pontuacao': 1},
        {'texto': 'GridView', 'pontuacao': 0},
        {'texto': 'SingleChildScrollView', 'pontuacao': 0},
        {'texto': 'Wrap', 'pontuacao': 0},
      ]
    },
    {
      'texto':
          'Qual é a finalidade do widget "setState()" em um aplicativo Flutter?',
      'respostas': [
        {
          'texto':
              'Atualizar a interface de usuário com base em mudanças de estado.',
          'pontuacao': 1
        },
        {'texto': 'Definir o estado inicial de um widget.', 'pontuacao': 0},
        {
          'texto':
              'Gerenciar a navegação entre diferentes telas de um aplicativo.',
          'pontuacao': 0
        },
        {'texto': 'Controlar a animação de um widget.', 'pontuacao': 0},
      ]
    },
    {
      'texto': 'O que é o "BuildContext" em Flutter e para que ele é usado?',
      'respostas': [
        {
          'texto': 'É um widget de interface de usuário para criar botões.',
          'pontuacao': 0
        },
        {
          'texto':
              'É um objeto que representa a árvore de widgets e é usado para construir a interface de usuário.',
          'pontuacao': 1
        },
        {
          'texto':
              'É uma biblioteca para manipulação de bancos de dados em Flutter.',
          'pontuacao': 0
        },
        {
          'texto': 'É um pacote de gerenciamento de estado global em Flutter.',
          'pontuacao': 0
        },
      ]
    }
  ];

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
    return _perguntaSelecionada < _perguntas.length;
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
                perguntas: _perguntas,
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
