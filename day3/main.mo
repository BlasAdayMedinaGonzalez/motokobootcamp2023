import List "mo:base/List";
import Book "./book";
actor {
  type List<T> = ?(T, List<T>);
  var list = List.nil<Book.book>();

  public func add_book(book: Book.book) : async() {
    list := List.push<Book.book>(book, list);
  };
  public func get_books() : async List<Book.book> {
    return (list);
  };
};