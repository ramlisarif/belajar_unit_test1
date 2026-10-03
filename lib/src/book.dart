class Book {
  String id;
  String name;
  int price;
  Book(this.id, this.name, this.price);

  bool operator ==(Object other) {
    if (other is Book) {
      if (id != other.id) return false;
      if (name != other.name) return false;
      if (price != other.price) return false;
      return true;
    } else {
      return false;
    }
  }

  int get hashCode => id.hashCode ^ name.hashCode ^ price.hashCode;
}
