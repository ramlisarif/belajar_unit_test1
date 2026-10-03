import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String seyHello(String name) {
  return "Hello $name";
}

void main() {
  test("Test seyHello()", () {
    var response = seyHello("Dart");
    expect(response, equals("Hello Dart"));
  });
}
