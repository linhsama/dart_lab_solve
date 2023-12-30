import 'dart:io';

/**
 * Bài 3. Viết chương trình tìm số lớn nhất trong ba số thực a, b, c.
 */

void main() {
  double a = InputNumberA();
  double b = InputNumberB();
  double c = InputNumberB();
  double result = CheckMaxValue(CheckMaxValue(a, b), c);
  print("Số lớn nhất trong ba số thực ${a}, ${b}, ${c} là: ${result}");
}

/**
 * Hàm nhập số A
 */
double InputNumberA() {
  double result = 0;
  stdout.write("Nhập số A: ");
  result = double.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm nhập số B
 */
double InputNumberB() {
  double result = 0;
  stdout.write("Nhập số B: ");
  result = double.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm nhập số C
 */
double InputNumberC() {
  double result = 0;
  stdout.write("Nhập số C: ");
  result = double.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm kiểm tra Max(a,b)
 */
double CheckMaxValue(double a, double b) {
  return a >= b ? a : b;
}
