import 'dart:io';

/**
 * Bài 2. Viết chương trình in ra tất cả các số nguyên dương lẻ <= 20 trừ số nhập vào.
 */

void main() {
  int except_number = InputNumber();
  String result = CheckNumber(except_number);
  print(
      "Các số nguyên dương lẻ khác ${except_number} và nhỏ hơn 20 là: ${result}");
}

/**
 * Hàm nhập số nguyên
 */
int InputNumber() {
  int result = 0;
  do {
    stdout.write("Nhập số nguyên khác 0 và <= 20: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result == 0 || result > 20);

  return result;
}

/**
 * Hàm kiểm tra số nguyên dương lẻ <= 20
 */
String CheckNumber(except_number) {
  String result = "";
  for (int i = 1; i < 20; i += 2) {
    if (i != except_number) {
      result += "\n ${i}";
    }
  }
  return result;
}
