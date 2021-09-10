package com.google.android.gms.internal.ads;

import java.util.Arrays;

public final class zzph {
    private int size;
    private long[] zzbjw;

    public zzph() {
        this(32);
    }

    public final void add(long j) {
        int i = this.size;
        long[] jArr = this.zzbjw;
        if (i == jArr.length) {
            this.zzbjw = Arrays.copyOf(jArr, i << 1);
        }
        long[] jArr2 = this.zzbjw;
        int i2 = this.size;
        this.size = i2 + 1;
        jArr2[i2] = j;
    }

    public final long get(int i) {
        if (i >= 0 && i < this.size) {
            return this.zzbjw[i];
        }
        throw new IndexOutOfBoundsException(ic.c(46, "Invalid index ", i, ", size is ", this.size));
    }

    public final int size() {
        return this.size;
    }

    private zzph(int i) {
        this.zzbjw = new long[32];
    }
}
