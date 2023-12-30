import 'dart:io';

/**
 * Bài 4. Viết chương trình kiểm tra xem hai số thực a b cho trước có cùng dấu hay không.
 */

void main() {
  double a = InputNumberA();
  double b = InputNumberB();
  bool result = CheckSameSign(a, b);
  if (result) {
    print("Số ${a}, ${b} cùng dấu");
  } else {
    print("Số ${a}, ${b} khác dấu");
  }
}

/**
 * Hàm nhập số A
 */
double InputNumberA() {
  double result = 0;
  do {
    stdout.write("Nhập số A khác 0: ");
    result = double.parse(stdin.readLineSync()!);
  } while (result == 0);

  return result;
}

/**
 * Hàm nhập số B
 */
double InputNumberB() {
  double result = 0;
  do {
    stdout.write("Nhập số B khác 0: ");
    result = double.parse(stdin.readLineSync()!);
  } while (result == 0);

  return result;
}

/**
 * Hàm kiểm tra cùng dấu
 */
bool CheckSameSign(double a, double b) {
  return a * b > 0 ? true : false;
}
