1.How much is the current memory capacity of a canister?

- The capacity is 4 GB.


2.What is the issue with the following code sample?
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

- let is immutable, so the correct option would be to change to var, fix: var counter : Nat = 0;

3.What is the issue with the following code sample?
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}

- A number (Nat, Int) is being assigned to a Text type variable, so to fix it, you will have to add a text type value in quotes: "example" and the change_message function would not work because it is not a Query call, It should be eliminated since the user does not want to read data with this function, he wants to change it, so the correct thing would be: public func change_message(new_message : Text) : async (){}

fixed:
actor{
  var message : Text = "0";

  public func change_message(new_message : Text) : async () {
    message := new_message;
    return; // creo que es innecesario pero no es un error.
  };
    
  public query func see_message() : async Text {
    return(message);
  };
}

4.False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

- False, it won't work.