import 'dart:io';

/**
 * Bài 15. Liệt kê tất cả ước số của số nguyên dương n.
 */

void main() {
  int n = InputNumber();
  String result = UocSo(n);
  print("Tất cả ước số của số nguyên dương ${n}. là: $result");
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
 * Hàm UocSo(n)
 */
String UocSo(n) {
  String result = "";
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      result += "," + i.toString();
    }
  }

  return result.substring(1);
}
