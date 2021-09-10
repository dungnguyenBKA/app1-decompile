package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* access modifiers changed from: package-private */
public final class zzejq extends zzejs {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zzejr zzily;

    zzejq(zzejr zzejr) {
        this.zzily = zzejr;
        this.limit = zzejr.size();
    }

    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // com.google.android.gms.internal.ads.zzejw
    public final byte nextByte() {
        int i = this.position;
        if (i < this.limit) {
            this.position = i + 1;
            return this.zzily.zzga(i);
        }
        throw new NoSuchElementException();
    }
}
