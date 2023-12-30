import 'dart:io';

/**
 * Bài 16. Tính tổng tất cả ước số của số nguyên dương n.
 */

void main() {
  int n = InputNumber();
  int result = TongUocSo(n);
  print("Tổng tất cả ước số của số nguyên dương ${n}. là: $result");
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
 * Hàm TongUocSo(n)
 */
int TongUocSo(n) {
  int result = 0;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      result += i;
    }
  }

  return result;
}
