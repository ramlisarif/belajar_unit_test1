import 'package:belajar_dart_unit_test/src/book.dart';

class BookRepository {
  void save(Book book){
    print("save $book");
    throw UnsupportedError("fined not suported");
  }
  void update(Book book){
    print("update $book");
    throw UnsupportedError("fined not suported");
  }
  void delete(Book book){
    print("delete $book");
    throw UnsupportedError("fined not suported");
  }
  Book? fineById(String id){
    print("fine book By id $id");
    throw UnsupportedError("fined not suported");
  }
}