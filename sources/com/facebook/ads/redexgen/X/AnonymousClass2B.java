package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.2B  reason: invalid class name */
public final class AnonymousClass2B implements Serializable {
    public static final long serialVersionUID = -3209129042070173126L;
    public AnonymousClass2B A00;
    public final int A01;
    public final String A02;
    @Nullable
    public final String A03;
    public final List<AnonymousClass2B> A04;

    public AnonymousClass2B(int i, @Nullable String str, String str2) {
        this.A04 = new ArrayList();
        this.A01 = i;
        this.A03 = str;
        this.A02 = str2;
    }

    public AnonymousClass2B(String str) {
        this(0, null, str);
    }

    private void A00(AnonymousClass2B r1) {
        this.A00 = r1;
    }

    public final int A01() {
        return this.A01;
    }

    public final AnonymousClass2B A02() {
        return this.A00;
    }

    @Nullable
    public final String A03() {
        return this.A02;
    }

    public final String A04() {
        return this.A03;
    }

    public final List<AnonymousClass2B> A05() {
        return this.A04;
    }

    public final void A06(AnonymousClass2B r2) {
        r2.A00(this);
        this.A04.add(r2);
    }
}
