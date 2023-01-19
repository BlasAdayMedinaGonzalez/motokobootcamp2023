import Iter "mo:base/Iter";
import Array "mo:base/Array";

actor {
  //1.Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
  public func average_array(array : [Int]) : async Int {
    var total : Int = 0;
    for(item in array.vals()) {
      total += item;
    };
    return total / array.size();
  };
  //2.Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
  public func count_character(t : Text, c : Char) : async Nat {
    var count: Nat = 0;
    for(item in t.chars()) {
      if (item == c){
        count := count + 1;
      }
    };
    return count;
  };
  //3.Write a function factorial that takes a natural number n and returns the factorial of n.
  public func factorial(n : Nat) : async Nat {
    var total : Nat = 1;
    for(i in Iter.range(1, n)) {
      total := total * i;
    };
    return total;
  };
  //4.Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
  public func number_of_words(t : Text) : async Nat {
    return t.size();
  };
  //5.Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
  public func find_duplicates(a : [Nat]) : async [Nat] {
    var duplicatedNumbers : [Nat] = [];
    for(item in a.vals()) {
      var duplicated = Array.filter<Nat>(a, func x = x == item);
      duplicatedNumbers := Array.append<Nat>(duplicatedNumbers, duplicated);
    };
    return duplicatedNumbers;
  };
  //6.Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.
  public func convert_to_binary(n : Nat) : async Text {
    return "binary";
  };
}