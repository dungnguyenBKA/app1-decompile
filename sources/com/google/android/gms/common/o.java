package com.google.android.gms.common;

import java.lang.ref.WeakReference;

abstract class o extends m {
    private static final WeakReference<byte[]> d = new WeakReference<>(null);
    private WeakReference<byte[]> c = d;

    o(byte[] bArr) {
        super(bArr);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.m
    public final byte[] P() {
        byte[] bArr;
        synchronized (this) {
            bArr = this.c.get();
            if (bArr == null) {
                bArr = R();
                this.c = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    /* access modifiers changed from: protected */
    public abstract byte[] R();
}
