import 'dart:io';

void main() {
  aprovacao();
}

String getNomeAluno() {
  String nome;
  do {
    print('Digite o nome do Aluno: ');
    nome = stdin.readLineSync() ?? '';
    if (nome.isEmpty) {
      print('Digite um nome valido:');
    }
  } while (nome.isEmpty);
  return nome;
}

double getInputNota() {
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

double calcularMedia() {
  String nome = getNomeAluno();
  int qtdNotas = 4;
  double nota = 0;

  for (int n = 0; n < qtdNotas; n++) {
    nota += getInputNota();
  }

  double resultado = nota / qtdNotas;
  print('A média do aluno $nome é $resultado ');
  return resultado;
}

aprovacao() {
  double mediaDoAluno = calcularMedia();

  if (mediaDoAluno > 6) {
    print('Aprovado');
  } else if (mediaDoAluno >= 5 && mediaDoAluno < 6) {
    print('Recuperação');
  } else {
    print('Reprovado');
  }
}
