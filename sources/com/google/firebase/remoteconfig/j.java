package com.google.firebase.remoteconfig;

public class j extends h {
    private final int b;

    public j(int i, String str) {
        super(str);
        this.b = i;
    }

    public int a() {
        return this.b;
    }

    public j(int i, String str, Throwable th) {
        super(str, th);
        this.b = i;
    }
}
