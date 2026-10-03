import 'package:belajar_dart_unit_test/src/book.dart';
import 'package:belajar_dart_unit_test/src/book_repository.dart';

class BookService {
  BookRepository bookRepository;
  BookService(this.bookRepository);

  void save(String id, String name, int price) {
    if (id == '' || name == " " || price <= 0) {
      throw Exception("invalid data");
    }
    bookRepository.save(Book(id, name, price));// ini harus di panggil 1
  }

  void update(String id, String name, int price) {
    if (id == " " || name == "" || price <= 0) {
      throw Exception("");
    }
    var book = bookRepository.fineById(id);
    if (book == null) {
      throw Exception("Book not found");
    } else {
      book.name = name;
      book.price = price;
      bookRepository.save(book);
    }
  }

  Book find(String id) {
    var book = bookRepository.fineById(id);
    if (book == null) {
      throw Exception("book not found");
    } else {
      return book;
    }
  }

  void delete(String id) {
    var book = bookRepository.fineById(id);
    if (book == null) {
      throw Exception("book not found");
    } else {
      bookRepository.delete(book);
    }
  }
}
