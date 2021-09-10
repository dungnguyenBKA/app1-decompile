package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import java.util.List;

public final class R9 extends AnonymousClass48<R0> {
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    @Nullable
    public M9 A04;
    public String A05;
    public List<C0720Ot> A06;
    public final SparseBooleanArray A07 = new SparseBooleanArray();
    public final AnonymousClass16 A08;
    public final AnonymousClass7D A09;
    public final XJ A0A;
    public final JC A0B;
    public final C0625La A0C;
    public final RH A0D;
    public final QE A0E;

    public R9(XJ xj, List<C0720Ot> list, AnonymousClass16 r4, JC jc, AnonymousClass7D r6, QE qe, C0625La la, M9 m9, String str, int i, int i2, int i3, int i4, RH rh) {
        this.A0A = xj;
        this.A0B = jc;
        this.A09 = r6;
        this.A0E = qe;
        this.A0C = la;
        this.A04 = m9;
        this.A08 = r4;
        this.A06 = list;
        this.A00 = i;
        this.A03 = i4;
        this.A05 = str;
        this.A01 = i3;
        this.A02 = i2;
        this.A0D = rh;
    }

    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final R0 A07(ViewGroup viewGroup, int i) {
        return new R0(OG.A00(new O0(this.A0A, this.A0B, this.A04, this.A08, null, this.A0E, this.A0C).A0J(), this.A03, this.A05, this.A0D), this.A07, this.A0E, this.A00, this.A01, this.A02, this.A06.size(), this.A0A);
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final void A0F(R0 r0, int i) {
        r0.A0m(this.A06.get(i), this.A0B, this.A09, this.A0C, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass48
    public final int A0E() {
        return this.A06.size();
    }
}
