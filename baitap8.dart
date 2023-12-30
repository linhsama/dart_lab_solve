import 'dart:io';

/**
 * Bài 8. Viết một chương trình tính giai thừa của một số nguyên dương n nhập từ bàn phím và n<=20.
 * Dùng đệ quy và cách thông thường
 */

void main() {
  int number = InputNumber();
  String result = GiaiThua(number);
  print(result);
}

/**
 * Hàm nhập số nguyên dương
 */
int InputNumber() {
  int result = 0;
  do {
    stdout.write("Nhập số nguyên dương <=20: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 1 || result > 20);

  return result;
}

/**
 * Hàm GiaiThuaDeQuy(number)
 */
int GiaiThuaDeQuy(number) {
  return number < 2 ? number : (number * GiaiThuaDeQuy(number - 1));
}

/**
 * Hàm GiaiThua(number)
 */
String GiaiThua(n) {
  int result = n;
  if (n <= 2) {
    result = n;
  } else {
    for (int i = 1; i < n; i++) {
      result *= i;
    }
  }
  return "${n} = ${result}";
}
