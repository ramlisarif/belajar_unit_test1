import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var data = "ami";
  setUpAll(() {
    print("start unit test");
  });
  setUp(() {
    data = "Ami";
    print(data); 
  });
  tearDownAll(() {
    print("end unit test");
  });
  group("test String", () {
    tearDown(() {
      print(data); 
    });
    test("String first", () {
      data = "$data ramli";
      expect(data, equals("Ami ramli"));
    });
    test("String second", () {
      data = "$data Sarif";
      expect(data, equals("Ami Sarif"));
    });
  });
}
