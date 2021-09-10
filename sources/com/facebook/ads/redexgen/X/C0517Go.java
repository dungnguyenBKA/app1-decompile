package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;

/* renamed from: com.facebook.ads.redexgen.X.Go  reason: case insensitive filesystem */
public final class C0517Go implements Comparable<C0517Go> {
    public final int A00;
    public final C0513Gk A01;

    public C0517Go(int i, C0513Gk gk) {
        this.A00 = i;
        this.A01 = gk;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final int compareTo(@NonNull C0517Go go) {
        return this.A00 - go.A00;
    }
}
