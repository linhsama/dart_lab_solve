import 'dart:io';

/**
 * Bài 11. Viết chương trình liệt kê n số hạng đầu tiên của dãy Fibonacci.
 * Dùng đệ quy và dùng hàm
 */

void main() {
  int n = InputNumber();
  String result = ListFibonacci(n);
  print("${n} số hạng đầu tiên của dãy Fibonacci là: ${result}");
}

/**
 * Hàm nhập
 */
int InputNumber() {
  int result = 0;
  stdout.write("Nhập số nguyên dương: ");
  result = int.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm ListFibonacci(n)
 */
String ListFibonacci(n) {
  String result = "";
  for (int i = 0; i < n; i++) {
    result += "," + Fibonacci(i).toString();
    // result += "," + FibonacciDeQuy(i).toString();
  }
  return result.substring(1);
}

/**
 * Hàm Fibonacci(n)
 */
int Fibonacci(n) {
  int f0 = 0;
  int f1 = 1;
  int fn = 1;
  int i;

  if (n < 2) {
    return n;
  } else {
    for (i = 2; i < n; i++) {
      f0 = f1;
      f1 = fn;
      fn = f0 + f1;
    }
  }
  return fn;
}

/**
 * Hàm FibonacciDeQuy(n)
 */
int FibonacciDeQuy(n) {
  return n < 2 ? n : FibonacciDeQuy(n - 2) + FibonacciDeQuy(n - 1);
}
