// Import thư viện 'dart:io' để sử dụng các chức năng nhập và xuất dữ liệu.
import 'dart:io';

/**
 * Bài 0: Viết chương trình tính tổng các số tự nhiên từ 1 tới n.
 */

void main() {
  // Gọi hàm InputNumber để nhập một số nguyên dương từ người dùng.
  int n = InputNumber();

  // Gọi hàm TongSoNguyen để tính tổng các số từ 1 đến n.
  int result = TongSoNguyen(n);

  // Hiển thị kết quả.
  print("Tổng các số tự nhiên từ 1 tới ${n} là: $result");
}

/**
 * Hàm nhập số
 */
int InputNumber() {
  int result = 0;
  
  // Xuất thông báo yêu cầu người dùng nhập số nguyên dương.
  stdout.write("Nhập số nguyên dương: ");

  // Đọc dữ liệu nhập từ người dùng và chuyển đổi thành số nguyên.
  result = int.parse(stdin.readLineSync()!);

  // Trả về giá trị đã nhập.
  return result;
}

/**
 * Hàm TongSoNguyen(n)
 */
int TongSoNguyen(n) {
  int result = 0;

  // Sử dụng vòng lặp để tính tổng các số từ 1 đến n.
  for (int i = 1; i <= n; i++) {
    result += i;
  }

  // Trả về kết quả tổng.
  return result;
}
