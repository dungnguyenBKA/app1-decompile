package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import java.util.List;

public final class RG extends AnonymousClass48<RA> {
    public int A00;
    public int A01;
    public int A02;
    @Nullable
    public M9 A03;
    public String A04;
    public List<C0720Ot> A05;
    public final SparseBooleanArray A06 = new SparseBooleanArray();
    public final AnonymousClass16 A07;
    public final AnonymousClass7D A08;
    public final XJ A09;
    public final JC A0A;
    public final C0625La A0B;
    public final RH A0C;
    public final IB A0D;
    public final QE A0E;

    public RG(XJ xj, List<C0720Ot> list, AnonymousClass16 r4, JC jc, AnonymousClass7D r6, QE qe, C0625La la, M9 m9, String str, RH rh, IB ib) {
        this.A09 = xj;
        this.A0A = jc;
        this.A08 = r6;
        this.A0E = qe;
        this.A0B = la;
        this.A03 = m9;
        this.A07 = r4;
        this.A05 = list;
        this.A04 = str;
        this.A0C = rh;
        this.A0D = ib;
    }

    /* access modifiers changed from: private */
    @Nullable
    /* renamed from: A01 */
    public final RA A07(ViewGroup viewGroup, int i) {
        M9 m9 = this.A03;
        if (m9 == null || this.A00 == 0) {
            return null;
        }
        return new RA(C0686Nk.A01(new O0(this.A09, this.A0A, m9, this.A07, null, this.A0E, this.A0B).A0I(this.A0D).A0J(), this.A04, this.A0C), this.A06, this.A0E, this.A05.size(), this.A09);
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final void A0F(RA ra, int i) {
        ra.A0m(this.A05.get(i), this.A0A, this.A08, this.A0B, this.A04, this.A00, this.A02, this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass48
    public final int A0E() {
        return this.A05.size();
    }

    public final void A0G(int i, int i2, int i3) {
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
    }
}
