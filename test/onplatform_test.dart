@OnPlatform({'mac-os': Skip("this test not workiing in windows")})//di windows jalan mac-os skip
library;
import 'package:test/test.dart';
int sum(int a, int b) => a + b;
void main() {
  group("test sum()", () {
    test("test positive", () {
      expect(sum(1, 2), equals(3));
    },onPlatform: {"windows": Skip("this is not working in windows")}); //ini di windows dskip
    test("negative", () {
      expect(sum(10, -5), equals(5));
    });
  });
}
