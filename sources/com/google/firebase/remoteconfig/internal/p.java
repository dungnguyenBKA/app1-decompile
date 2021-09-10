package com.google.firebase.remoteconfig.internal;

public class p {
    private final String a;
    private final int b;

    p(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public String a() {
        if (this.b == 0) {
            return "";
        }
        String str = this.a;
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
    }
}
