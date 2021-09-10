package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.AdError;

/* renamed from: com.facebook.ads.redexgen.X.Oi  reason: case insensitive filesystem */
public final class C0710Oi {
    public int A00 = AdError.NETWORK_ERROR_CODE;
    public AnonymousClass1I A01 = AnonymousClass1I.A01(null);
    @Nullable
    public String A02;
    @Nullable
    public String A03;
    public final AnonymousClass1G A04;
    public final AnonymousClass1S A05;
    public final XJ A06;

    public C0710Oi(XJ xj, AnonymousClass1G r3, AnonymousClass1S r4) {
        this.A06 = xj;
        this.A04 = r3;
        this.A05 = r4;
    }

    public final C0710Oi A07(int i) {
        this.A00 = i;
        return this;
    }

    public final C0710Oi A08(AnonymousClass1I r1) {
        this.A01 = r1;
        return this;
    }

    public final C0710Oi A09(String str) {
        this.A02 = str;
        return this;
    }

    public final C0710Oi A0A(String str) {
        this.A03 = str;
        return this;
    }

    public final C0711Ok A0B() {
        return new C0711Ok(this, null);
    }
}
