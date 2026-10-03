@Skip("this is unit test still broken")
library;

import 'package:test/test.dart';

int sum(int a, int b) => a + b;
void main() {
  group("test sum()", () {
    test("test positive", () {
      expect(sum(1, 2), equals(3));
    });
  });
}
