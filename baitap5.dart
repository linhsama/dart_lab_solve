import 'dart:io';

/**
 * Bài 5. Viết chương trình in ra cách đọc của một số nguyên n cho trước có ba chữ số.
 * Ví dụ với n=102 thì kết quả in ra màn hình là Một trăm lẻ hai.
 */

void main() {
  int n = InputNumber();
  String result = ReadNumberByArray(n);

  print("Số ${n} đọc là: ${result}");
}

/**
 * Hàm nhập số
 */
int InputNumber() {
  int result = 0;
  do {
    stdout.write("Nhập số nguyên dương có 3 chữ số: ");
    result = int.parse(stdin.readLineSync()!);
  } while (result < 100 || result > 999 || result.toString().length != 3);

  return result;
}

/**
 * Hàm đọc số có 3 chữ số dùng mảng
 */
String ReadNumberByArray(number) {
  var ChuSo = [
    " không ",
    " một ",
    " hai ",
    " ba ",
    " bốn ",
    " năm ",
    " sáu ",
    " bảy ",
    " tám ",
    " chín "
  ];

  // 102 1 trăm lẻ hai
  // 112 1 trăm mười hai
  // 120 1 trăm hai mươi
  // 121 1 trăm hai mươi mốt
  // 125 1 trăm hai mươi lăm
  // 100 1 trăm

  var tram = (number / 100).toInt();
  var chuc = ((number % 100) / 10).toInt();
  var donvi = number % 10;
  var KetQua = "";

  KetQua += ChuSo[tram] + " trăm ";

  if ((chuc == 0) && (donvi != 0)) {
    KetQua = KetQua + " lẻ ";
  }

  if (chuc == 1) {
    KetQua += " mười ";
  }

  if ((chuc != 0) && (chuc != 1)) {
    KetQua += ChuSo[chuc] + " mươi";
  }

  switch (donvi) {
    case 1:
      if ((chuc != 0) && (chuc != 1)) {
        KetQua += " mốt ";
      } else {
        KetQua += ChuSo[donvi];
      }
      break;
    case 5:
      if (chuc == 0) {
        KetQua += ChuSo[donvi];
      } else {
        KetQua += " lăm ";
      }
      break;
    default:
      if (donvi != 0) {
        KetQua += ChuSo[donvi];
      }
      break;
  }

  return (KetQua.trim())[0].toUpperCase() +
      (KetQua.trim()).substring(1).toLowerCase();
}
