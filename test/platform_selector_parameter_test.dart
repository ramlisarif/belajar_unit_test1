@TestOn("windows || mac-os|| linux")
library;
import 'package:test/test.dart';
int sum(int a, int b) => a + b;
void main() {
  group("test sum()", () {
    test("test positive", () {
      expect(sum(1, 2), equals(3));
    });
    test("negative", () {
      expect(sum(10, -5), equals(5));
    }, testOn: "windows");// lebis spesifik artinya test "negative"hanya bole di jalankan di windows
  }, testOn: "windows");//ingat ini lebih spesifik bagian group kalau teman" mau hanya bisa di jlnkn di windows
}
