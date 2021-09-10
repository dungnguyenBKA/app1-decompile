package com.vungle.warren.network;

public class HttpException extends RuntimeException {
    private final int code;
    private final String message;
    private final transient Response<?> response;

    public HttpException(Response<?> response2) {
        super(getMessage(response2));
        this.code = response2.code();
        this.message = response2.message();
        this.response = response2;
    }

    private static String getMessage(Response<?> response2) {
        StringBuilder q = ic.q("HTTP ");
        q.append(response2.code());
        q.append(" ");
        q.append(response2.message());
        return q.toString();
    }

    public int code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public Response<?> response() {
        return this.response;
    }
}
