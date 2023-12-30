import 'dart:io';

/**
 * Bài 17. Tính tích tất cả ước số của số nguyên dương n.
 */

void main() {
  int n = InputNumber();
  int result = TichUocSo(n);
  print("Tích tất cả ước số của số nguyên dương ${n} là: $result");
}

/**
 * Hàm nhập số
 */
int InputNumber() {
  int result = 0;
  stdout.write("Nhập số nguyên dương: ");
  result = int.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm TichUocSo(n)
 */
int TichUocSo(n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      result *= i;
    }
  }
  return result;
}
