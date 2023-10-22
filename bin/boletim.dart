import 'dart:io';

void main() {
  aluno();
}

String receberNomeDoAluno(String nome) {
  print(nome);
  return stdin.readLineSync() ?? '';
}

double inputDouble(String exibirValor) {
  print(exibirValor);
  String receberValor = stdin.readLineSync() ?? '';
  return double.tryParse(receberValor) ?? 0.0;
}

double notas() {
  double somarValores = 0;
  int qtdValores = 0;
  for (double i = 0; i < 4; i++) {
    double nota = inputDouble('Digite uma nota: ');
    somarValores += nota;
    qtdValores++;
  }
  return somarValores / qtdValores;
}

void aluno() {
  String nome = receberNomeDoAluno('Digite o nome do aluno: ');
  double media = notas();
  print('$nome a sua media é $media');
  if (media >= 6) {
    print('$nome Você foi aprovado');
  } else if (media > 5 && media < 6) {
    print('$nome você está de recuperação');
  } else {
    print('$nome você foi reprovado');
  }
}
