import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String seyHello(String name) {
  return "Hello $name";
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test("Test seyHello() with Matcher", () {
    expect(seyHello("Ami"), endsWith("Ami"));
    expect(seyHello("Ami"), startsWith("Hello"));
    expect(seyHello("Ami"), equalsIgnoringCase("hello ami"));
    expect(seyHello("Ami"), isA<String>());
  });
  //test ke2👇
  test("test sum() with matcher", () {
    expect(sum(1, 1), equals(2));
    expect(sum(1, 1), greaterThan(1));
    expect(sum(1, 1), lessThan(10));
  });
}
