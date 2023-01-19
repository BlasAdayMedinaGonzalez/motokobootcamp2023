1.Who controls the ledger canister?
-It is responsible for controlling the balance of ICPs for all users, processing transactions, minting & burning ICPs.

2.What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?
-The subnet is: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe and there are 16 nodes running.

3.I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
-The expected would be 50%.

4.What is wrong with the following code?
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
}

- There should be an import specific module "Nat": import Nat "mo:base/Nat";

5.What is wrong with the following code?
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
}

-The function is for showing data, so we have to use query function and the function doesn't have to return and be defined as "var text"

fixed:
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public query func show_languages() : async [Text] {
    return (languages);
  };
}

6.What is wrong with the following code?
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
}

-The only needed thing is to import the module Array: import Array "mo:base/Array";