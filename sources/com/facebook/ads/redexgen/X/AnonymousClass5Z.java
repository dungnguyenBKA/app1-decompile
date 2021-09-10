package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.5Z  reason: invalid class name */
public final class AnonymousClass5Z {
    public final long A00;
    public final AnonymousClass5Y A01;
    public final String A02;
    public final boolean A03;

    public AnonymousClass5Z(String str, boolean z, AnonymousClass5Y r9) {
        this(str, z, r9, System.currentTimeMillis());
    }

    public AnonymousClass5Z(String str, boolean z, AnonymousClass5Y r3, long j) {
        this.A02 = str;
        this.A03 = z;
        this.A01 = r3;
        this.A00 = j;
    }

    public static AnonymousClass5Z A00() {
        return new AnonymousClass5Z("", true, AnonymousClass5Y.A06, -1);
    }

    public final long A01() {
        return this.A00;
    }

    public final AnonymousClass5Y A02() {
        return this.A01;
    }

    public final String A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A03;
    }
}
