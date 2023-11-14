import 'dart:io';

void main() {
  aprovacao();
}

String aluno() {
  String nome;
  do {
    print('Digite o nome do Aluno: ');
    nome = stdin.readLineSync() ?? '';
    if (nome.isEmpty) {
      print('Digite um nome valido:');
    }
  } while (nome.isEmpty);
  print('O nome do aluno é $nome');
  return nome;
}

double inputNotas() {
  double nota;
  do {
    print('Digite uma nota: ');
    String input = stdin.readLineSync() ?? '';
    nota = double.tryParse(input) ?? 0.0;
    if (nota < 0 || nota > 10) {
      print('Digite uma nota valida');
    }
  } while (nota < 0 || nota > 10);
  return nota;
}

double media() {
  String nome = aluno();
  int qtdNotas = 4;
  double nota = 0;

  for (int n = 0; n < qtdNotas; n++) {
    nota += inputNotas();
  }
  double resultado = nota / qtdNotas;
  print('A média do aluno $nome é $resultado ');
  return resultado;
}

aprovacao() {
  switch (media()) {
    case > 6:
      print('Aprovado');
      break;
    case < 6 && >= 5:
      print('Recuperação');
      break;
    case < 5:
      print('Reprovado');
      break;
  }
}
