module Book {
  public type book = {
    title: Text;
    pages: Nat;
  };
  public func create_book(title : Text, pages : Nat) : async book {
    return {title; pages};
  };
}