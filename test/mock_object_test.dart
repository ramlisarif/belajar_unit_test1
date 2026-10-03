import 'package:belajar_dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main() {
  group("BookService", () {
    var bookRepository = MockBookRepository();
    var bookservice = BookService(bookRepository);

    test("save new book must succses", () {
      bookservice.save('1', 'tutorial Dart', 1000);
      verify(bookRepository.save(Book("1", "tutorial Dart", 1000))).called(1);
    });
    test("fined book by id not found", () {
      expect(() {
        bookservice.find('1');
      }, throwsException);
      verify(bookRepository.fineById('1')).called(1);
    });
    test("find book by id success", () {
      when(
        bookRepository.fineById('1'),
      ).thenReturn(Book('1', 'tutorial Dart', 1000));
      var book = bookservice.find('1');
      expect(book, equals(Book('1', 'tutorial Dart', 1000)));

      verify(bookRepository.fineById('1')).called(1);
    });

    test("find book by id ami123", () {
      when(
        bookRepository.fineById(argThat(startsWith('ami'))),
      ).thenReturn(Book("ami123", "tutorial Dart", 1000));
      var book = bookservice.find('ami123');
      expect(book, equals(Book('ami123', "tutorial Dart", 1000)));
      verify(bookRepository.fineById(any)).called(1);
    });
  });
}
