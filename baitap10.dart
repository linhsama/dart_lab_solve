import 'dart:io';
import 'dart:math';

/**
 * Bài 18. Viết chương trình liệt kê n số nguyên tố đầu tiên. Số nguyên dương n được nhập từ bàn phím.
 */

void main() {
  int n = InputNumber();
  String result = ListSoNguyenTo(n);
  print("$n số nguyên tố đầu tiên: $result");
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
 * Hàm ListSoNguyenTo
 */
String ListSoNguyenTo(n) {
  String result = "";
  int count = 0;
  int i = 2;
  while (count < n) {
    if (SoNguyenTo(i)) {
      result += "," + i.toString();
      count++;
    }
    i++;
  }
  return result.substring(1);
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
