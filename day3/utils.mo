import Array "mo:base/Array";
actor utils {
  public func second_maximum(array : [Int]) : async Int {
    var first : Int = 0;
    var second : Int = 0;
    for(item in array.vals()) {
      if (item > first) {
        second := first;
        first := item;
      } else if (item > second and item < first) {
        second := item;
      }
    };
    return second;
  };
  public func remove_even(array : [Nat]) : async [Nat] {
    return Array.filter<Nat>(array, func x = x % 2 != 0);
  };
}