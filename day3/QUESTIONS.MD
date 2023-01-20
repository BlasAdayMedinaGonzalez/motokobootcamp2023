1.True or False: the Internet Computer has a unique public key that can be used to verify responses coming from any subnets.

-True, the service worker knows the public key and is responsible for verifying the received content matches the signature.

2.True or False: when I realize an update call, the boundary node will participate in the consensus but not during query calls.

False. Query calls do not go through consensus and cannot create signatures.

3.True or False: I can create a certified variable that will certify the response of the following actor:
actor {
    public func hello(name : Text) : async Text {
        return ("hello # name");
    };
}

-True. It is possible to create a certified variables
