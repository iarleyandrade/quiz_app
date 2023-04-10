class Questoes {
  getPerguntas() => _perguntas;
  getLength() => _perguntas.length;

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
          'texto': 'Desenvolver aplicativos híbridos para multiplataformas',
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
}
