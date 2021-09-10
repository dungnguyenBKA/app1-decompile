package com.google.firebase.components;

public class v extends RuntimeException {
    public v(String str) {
        super(str);
    }

    public v(String str, Throwable th) {
        super(str, th);
    }
}
