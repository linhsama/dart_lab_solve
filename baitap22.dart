/**
 * Tìm tất cả các phương án có thể để có tổng là 10,000đ từ các tờ tiền 1,000đ, 2,000đ, 5,000đ.
 * Dùng List và cách thông thường
 */

void main() {
  String result = timPhuongAnList();
  print(result);
}

/**
 * timPhuongAn()
 */
String timPhuongAn() {
  String result = '';

  // Lặp qua số lượng tờ 1,000đ
  for (int x = 0; x <= 20; x++) {
    // Lặp qua số lượng tờ 2,000đ
    for (int y = 0; y <= 10; y++) {
      int z = (10000 - 1000 * x - 2000 * y) ~/ 5000; // Số tờ tiền 5,000đ
      // Kiểm tra xem x, y, z là các số không âm và tổng số tiền đúng bằng 10,000 đ
      if (x * 1000 + y * 2000 + z * 5000 == 10000 && z >= 0) {
        result += "${x} tờ 1,000đ, ${y} tờ 2,000đ, ${z} tờ 5,000đ\n";
      }
    }
  }
  return result;
}

/**
 * timPhuongAnList
 */
String timPhuongAnList() {
  String result = '';
  List<String> phuongAn = [];

  // Lặp qua số lượng tờ 1,000đ
  for (int x = 0; x <= 20; x++) {
    // Lặp qua số lượng tờ 2,000đ
    for (int y = 0; y <= 10; y++) {
      int z = (10000 - 1000 * x - 2000 * y) ~/ 5000; // Số tờ tiền 5,000đ

      // Kiểm tra xem x, y, z là các số không âm và tổng số tiền đúng bằng 10,000 đ
      if (x * 1000 + y * 2000 + z * 5000 == 10000 && z >= 0) {
        // Thêm phương án vào danh sách
        phuongAn.add("${x} tờ 1,000đ, ${y} tờ 2,000đ, ${z} tờ 5,000đ \n");
      }
    }
  }
  phuongAn.forEach((item) => result += item);
  return result;
}
