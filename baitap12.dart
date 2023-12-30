import 'dart:io';

/**
 * Bài 12. Viết chương trình tính tổng các giá trị lẻ nguyên dương nhỏ hơn số nguyên dương n cho trước.
 */

void main() {
  int n = InputNumber();
  int result = TinhTong(n);
  print(
      "Tổng các giá trị lẻ nguyên dương nhỏ hơn số nguyên dương ${n} là: ${result}");
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
 * Hàm TinhTong(n)
 */
int TinhTong(n) {
  int result = 0;
  int i = 1;
  while (i < n) {
    result += i;
    i += 2;
  }
  return result;
}
