import 'dart:math';

void main() {
  print('Primeira');
  print('-----------------------------------------');
  primeira();
  print('\n\nSegunda');
  print('-----------------------------------------');
  segunda();
  print('\n\nTerceira');
  print('-----------------------------------------');
  terceira();
  print('\n\nQuarta');
  print('-----------------------------------------');
  quarta();
  print('\n\nQuinta');
  print('-----------------------------------------');
  quinta();
  print('\n\nSexta');
  print('-----------------------------------------');
  sexta();
  print('\n\nSetima');
  print('-----------------------------------------');
  setima();
}

void primeira() {
  Random rnd = new Random();
  List numeros = new List.generate(3, (_) => rnd.nextInt(100));
  numeros.sort();
  print('numeros: ${numeros[0]}, ${numeros[1]}, ${numeros[2]}');
  print('soma dos números: ${numeros.reduce((a, b) => a + b)}');
  print('O menor número é: ${numeros[0]}');
  print('O maior número é: ${numeros[numeros.length - 1]}');
  print('a média é: ${numeros.reduce((a, b) => a + b) / numeros.length}');
}

void segunda() {
  Random rnd = new Random();
  double nota = rnd.nextDouble() * 10;
  nota = double.parse(nota.toStringAsFixed(2));
  print('nota: $nota');
  if (nota < 4) {
    print("reprovado");
  } else if (nota < 6) {
    print("prova final");
  } else {
    print("aprovado");
  }
}

void terceira() {
  Random rnd = new Random();
  List numeros = new List.generate(3, (_) => rnd.nextInt(9) + 1);

  int soma = numeros.reduce((a, b) => a + b);
  bool triangulo = true;
  for (int i = 0; i <= 2; i++) {
    if ((soma - numeros[i]) <= numeros[i]) {
      triangulo = false;
    }
  }
  print('numeros: $numeros');
  if (triangulo) {
    print("é um triangulo válido");
  } else {
    print("não é um triangulo válido");
  }
}

void quarta() {
  Random rnd = new Random();
  int valor = rnd.nextInt(990) + 10;
  List notas = [100, 50, 10, 5, 1];
  int valorTemp = valor;
  int i = 0;
  List resultado = [0, 0, 0, 0, 0];
  while (i < notas.length - 1) {
    if (valorTemp < notas[i]) {
      i++;
    }
    valorTemp = valorTemp - notas[i];
    resultado[i]++;
  }
  print(valor);
  for (int i = 0; i <= 4; i++) {
    print('${resultado[i]} notas de ${notas[i]}');
  }
}

void quinta() {
  int a = 80000;
  int b = 200000;

  int anos = 0;
  while (a <= b) {
    a = (a * (1.03)).round();
    b = (b * (1.015)).round();
    anos++;
  }
  print('em $anos anos a cidade A terá $a habitantes, ultrapassando a cidade B de $b habitentes');
}

void sexta() {
  Random rnd = new Random();
  List<String> texto = new List();
  int num = rnd.nextInt(19) + 1;
  texto.add('$num! = ');

  int fatorial(int numero) {
    if (numero == 0) {
      return 1;
    } else {
      texto.add(numero.toString());
      if (numero != 1) {
        texto.add(' . ');
      }
      return numero * fatorial(numero - 1);
    }
  }
  int fat = fatorial(num);
  print(texto.join() + ' = ' + fat.toString());
}

void setima(){
  List<int> numeros = new List();
  numeros.addAll([1, 1]);

  int nextValue = 2;

  while(nextValue < 100){
    numeros.add(nextValue);
    nextValue = numeros[numeros.length -1] + numeros[numeros.length -2];
  }
  print('Início da Seqüência de Fibonacci :');
  for(int i = 0; i < numeros.length; i++){
    print('Termo ${i+1} : ${numeros[i]}');
  }
  print('Seqüência interrompida (próximo termo > 100).');
}