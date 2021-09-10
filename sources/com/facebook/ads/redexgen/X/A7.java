package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class A7 implements Comparable<A7> {
    public int A00;
    public long A01;
    @Nullable
    public Object A02;
    public final AW A03;

    public A7(AW aw) {
        this.A03 = aw;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final int compareTo(@NonNull A7 a7) {
        boolean z;
        boolean z2;
        if (this.A02 == null) {
            z = true;
        } else {
            z = false;
        }
        if (a7.A02 == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z != z2) {
            if (this.A02 != null) {
                return -1;
            }
            return 1;
        } else if (this.A02 == null) {
            return 0;
        } else {
            int i = this.A00 - a7.A00;
            if (i != 0) {
                return i;
            }
            return C0556Ic.A07(this.A01, a7.A01);
        }
    }

    public final void A01(int i, long j, Object obj) {
        this.A00 = i;
        this.A01 = j;
        this.A02 = obj;
    }
}
