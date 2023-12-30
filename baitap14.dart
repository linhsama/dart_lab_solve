import 'dart:io';

/**
 * Bài 14. Viết chương trình phân tích số nguyên n thành các thừa số nguyên tố. Ví dụ: 30 = 2*3*5.
 */

void main() {
  int n = InputNumber();
  // String result = PhanTichThuaSoNguyenTo(n);
  String result = ListThuaSoNguyenTo(n);

  print("${n} = ${result}");
}

/**
 * Hàm nhập
 */
int InputNumber() {
  int result = 0;
  do {
    stdout.write("Nhập số nguyên dương > 1: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 2);
  return result;
}

/**
 * Hàm PhanTichThuaSoNguyenTo
 */
String PhanTichThuaSoNguyenTo(n) {
  String result = "";
  int i = 2;
  while (n > 1) {
    if (n % i == 0) {
      result += "*" + i.toString();
      n ~/= i;
    } else {
      i++;
    }
  }

  return result.length > 1 ? result.substring(1) : result;
}

/**
 * Hàm ListThuaSoNguyenTo
 */

String ListThuaSoNguyenTo(n) {
  List<int> result = [];
  int i = 2;
  while (n > 1) {
    if (n % i == 0) {
      result.add(i);
      n ~/= i;
    } else {
      i++;
    }
  }
  return result.join('*');
}
