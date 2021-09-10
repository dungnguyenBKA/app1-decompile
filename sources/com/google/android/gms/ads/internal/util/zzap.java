package com.google.android.gms.ads.internal.util;

public final class zzap extends Exception {
    private final int b;

    public zzap(String str, int i) {
        super(str);
        this.b = i;
    }

    public final int getErrorCode() {
        return this.b;
    }
}
