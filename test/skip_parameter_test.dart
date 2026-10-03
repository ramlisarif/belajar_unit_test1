
import 'package:test/test.dart';

int sum(int a, int b) => a + b;
void main() {
  group("test sum()", () {
    test("test positive", () {
      expect(sum(1, 2), equals(3));
    },skip: "because it's not working / because doesn't work");//hanya test psitive aja di skip
  });
}
