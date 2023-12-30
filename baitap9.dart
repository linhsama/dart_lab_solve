import 'dart:io';
import 'dart:math';

/**
 * Bài 9. Viết chương trình kiểm tra một số nguyên dương n có phải là số nguyên tố hay không.
 */

void main() {
  int n = InputNumber();
  bool result = SoNguyenTo(n);
  if (result) {
    print("$n là số nguyên tố!");
  } else {
    print("$n không là số nguyên tố!");
  }
}

/**
 * Hàm nhập
 */
int InputNumber() {
  int result = 0;
  stdout.write("Nhập số dương cần kiểm tra: ");
  result = int.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm SoNguyenTo(n)
 */
bool SoNguyenTo(n) {
  bool result = true;
  if (n < 2) {
    result = false;
  }
  for (int i = 2; i <= sqrt(n).floor(); i++) {
    if (n % i == 0) {
      result = false;
      break;
    }
  }
  return result;
}
