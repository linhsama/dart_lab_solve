import 'dart:io';

/**
 * Bài 6. Viết chương trình tìm tất cả các số chia hết cho 7 nhưng không phải bội số của 5, nằm trong đoạn 10 và 200.
 * Các số thu được sẽ được in thành chuỗi trên một dòng, cách nhau bằng dấu phẩy.
 */

void main() {
  int a = InputNumberA();
  int b = InputNumberB();

  String result = Divisible(a, b);
  print(
      "Các số chia hết cho 7 nhưng không phải bội số của 5, nằm trong đoạn $a và $b là: $result");
}

/**
 * Hàm nhập số A
 */
int InputNumberA() {
  int result = 0;
  stdout.write("Nhập số bắt đầu: ");
  result = int.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm nhập số B
 */
int InputNumberB() {
  int result = 0;
  stdout.write("Nhập số kết thúc: ");
  result = int.parse(stdin.readLineSync()!);
  return result;
}

/**
 * Hàm Divisible(a,b)
 */
String Divisible(int min, int max) {
  String result = "";

  for (int i = min; i < max; i++) {
    if (i % 7 == 0 && i % 5 != 0) {
      result += "," + i.toString();
    }
  }
  return result.substring(1);
}
