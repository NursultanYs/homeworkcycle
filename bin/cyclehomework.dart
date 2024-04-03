import 'dart:io';

void main() {
  // напишите программу, которая возвращает список, содержащий только общие для них элементы (без дубликатов). Убедитесь, что ваша программа работает с двумя списками разного размера.
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List result = [];

  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        result.add(b[j]);
      }
    }
  }

  for (int i = 0; i < result.length; i++) {
    for (int j = 0; j < result.length; j++) {
      if (result[i] == result[j] && i != j) {
        result.removeAt(j);
      }
    }
  }

  print(result);

  // Напишите код Dart, который берет этот список и создает новый список, в котором есть только четные элементы этого списка.

  List myArr = [12, 3, 4, 5, 78, 8];
  for (int i = 0; i < myArr.length; i++) {
    if (myArr[i] % 2 != 0) {
      myArr.removeAt(i);
    }
  }
  print(myArr);

  // 3) Создайте функцию, которая принимает две строки в качестве аргументов и возвращает, сколько раз первая строка (один символ) была найдена во второй строке.

  int myFunc(s1, s2) {
    int result = 0;
    s2 = s2.split('');
    for (int i = 0; i < s2.length; i++) {
      if (s1 == s2[i]) {
        result += 1;
      }
    }
    return result;
  }

  print(myFunc('f', 'asfkdsfsd'));

  // 1. Составьте программу, выводящую на экран квадраты чисел от 10 до 20.
  for (int i = 10; i <= 20; i++) {
    print(i * i);
  }

  // 2. Составьте программу, котораЯ вычисляет сумму чисел от 1 до n.значение n вводится с клавиатуры.

  String input = stdin.readLineSync() ?? '';
  int n = int.parse(input);
  int result1 = 0;
  for (int i = 0; i <= n; i++) {
    result1 += i;
  }

  print(result1);

// 3. В сберкассу на трёхпроцентный вклад положили S рублей.Какой станет сумма вклада через N лет.(Данные вводятся с клавиатуры)

  int year = int.parse(stdin.readLineSync() ?? '');
  num money = int.parse(stdin.readLineSync() ?? '');

  for (int i = 0; i < year; i++) {
    money = money + (money * 0.03);
  }

  print(money);

  // Даны натуральные числа от 20 до 50.Напечатать те из них, которые делятся на 3, но не делятся на 5.
  List arr = [];
  for (int i = 20; i <= 50; i++) {
    if (i % 3 == 0 && i % 5 != 0) {
      arr.add(i);
    }
  }

  print(arr.join(' '));

  // 7. Даны натуральные числа от 1 до 50. Найти сумму тех из них, которые делятся на 5 или на 7.

  int result7 = 0;
  for (int i = 1; i <= 50; i++) {
    if (i % 5 == 0 || i % 7 == 0) {
      result7 += i;
    }
  }
  print(result7);

  // 8. Напечатать те из двузначных чисел которые делятся на 4, но не делятся на 6.
  List arr7 = [];

  for (int i = 10; i <= 99; i++) {
    if (i % 4 == 0 && i % 6 != 0) {
      arr7.add(i);
    }
  }
  print(arr7.join(' '));

  // Найти сумму чисел от 100 до 200 кратных 17.

  int result8 = 0;
  for (int i = 100; i <= 200; i++) {
    if (i % 17 == 0) {
      result8 += i;
    }
  }
  print(result8);

  // 10. Составьте программу, которая вычисляет сумму квадратов чисел от 1 до введенного вами целого числа N

  int input10 = int.parse(stdin.readLineSync() ?? '');
  int result10 = 0;
  for (int i = 1; i < input10; i++) {
    result10 += i * i;
  }
  print(result10);
}
