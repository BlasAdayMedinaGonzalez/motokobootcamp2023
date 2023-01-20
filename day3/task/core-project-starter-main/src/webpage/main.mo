import Text "mo:base/Text";
import Http "./http";

actor {
    public type HttpRequest = Http.HttpRequest;
    public type HttpResponse = Http.HttpResponse;

    public query func http_request(req : HttpRequest) : async HttpResponse {
        return ({
            body = Text.encodeUtf8("Hello, world!");
            headers = [("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.367.36")];
            status_code=200;
            streaming_strategy = null;
        })
        
    };

};
