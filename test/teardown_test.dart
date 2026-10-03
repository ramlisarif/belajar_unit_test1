import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var data = "ami";
  
  setUp(() {
    data = "Ami";
    print(data); //diawal akan keluar ami dan ami ramli
  });

  group("test String", () {
    tearDown(() {
      print(data); //diakhir akan keluar ami dan ami sarif
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
