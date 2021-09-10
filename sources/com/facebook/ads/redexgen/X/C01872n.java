package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.2n  reason: invalid class name and case insensitive filesystem */
public final class C01872n extends BR {
    public final int A00;
    public final int A01;
    public final AbstractC0531Hd<? super HI> A02;
    public final String A03;
    public final boolean A04;

    public C01872n(String str, AbstractC0531Hd<? super HI> hd) {
        this(str, hd, 8000, 8000, false);
    }

    public C01872n(String str, AbstractC0531Hd<? super HI> hd, int i, int i2, boolean z) {
        this.A03 = str;
        this.A02 = hd;
        this.A00 = i;
        this.A01 = i2;
        this.A04 = z;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final BS A01(HS hs) {
        return new BS(this.A03, null, this.A02, this.A00, this.A01, this.A04, hs);
    }
}
