package com.google.android.gms.common;

import java.util.Arrays;

/* access modifiers changed from: package-private */
public final class p extends m {
    private final byte[] c;

    p(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.c = bArr;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.m
    public final byte[] P() {
        return this.c;
    }
}
