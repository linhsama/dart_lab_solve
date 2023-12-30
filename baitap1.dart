import 'dart:io';

/**
 * Bài 1. Viết chương trình hỏi người dùng nhập vào một số nguyên khác 0. In ra màn hình số nguyên đó là số chẵn hay lẻ.
 */

void main() {
  int number = InputNumber();
  bool result = CheckNumber(number);
  if (result) {
    print("Số ${number} là số chẵn");
  } else {
    print("Số ${number} là số lẻ");
  }
}

/**
 * Hàm nhập số nguyên
 */
int InputNumber() {
  int result = 0;
  do {
    stdout.write("Nhập số nguyên khác 0: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result == 0);

  return result;
}

/**
 * Hàm kiểm tra chẵn, lẻ
 */
bool CheckNumber(int number) {
  return number % 2 == 0 ? true : false;
}
