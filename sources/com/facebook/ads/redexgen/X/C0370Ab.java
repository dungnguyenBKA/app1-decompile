package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Ab  reason: case insensitive filesystem */
public final class C0370Ab {
    public static final C0370Ab A02 = new C0370Ab(Long.MAX_VALUE, Long.MAX_VALUE);
    public static final C0370Ab A03 = A04;
    public static final C0370Ab A04 = new C0370Ab(0, 0);
    public static final C0370Ab A05 = new C0370Ab(0, Long.MAX_VALUE);
    public static final C0370Ab A06 = new C0370Ab(Long.MAX_VALUE, 0);
    public final long A00;
    public final long A01;

    public C0370Ab(long j, long j2) {
        boolean z;
        boolean z2 = true;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A03(z);
        C0551Hx.A03(j2 < 0 ? false : z2);
        this.A01 = j;
        this.A00 = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0370Ab ab = (C0370Ab) obj;
        if (this.A01 == ab.A01 && this.A00 == ab.A00) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.A01) * 31) + ((int) this.A00);
    }
}
