@Retry(10)
library;

import 'package:test/test.dart';

void main() {
  test("test failed", () {
    expect(1, 1);
  });
}
