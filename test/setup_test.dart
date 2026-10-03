import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var data = "ami";
  setUp(() {
    data = "Ami";
  });
  group("test String", () {
    test("String first", () {
      data = "$data ramli"; //di ubah data sebelumnya menjadi ramli
      expect(data, equals("Ami ramli"));
    });
    test("String second", () {
      data = "$data Sarif"; //di ubah data sebelumnya menjadi sarif
      expect(data, equals("Ami Sarif"));
    });
  });
}
