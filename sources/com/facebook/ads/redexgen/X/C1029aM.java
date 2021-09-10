package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.aM  reason: case insensitive filesystem */
public final class C1029aM extends AnonymousClass48<RA> {
    public static String[] A0G;
    public int A00;
    public int A01;
    public int A02;
    @Nullable
    public M9 A03;
    public QE A04;
    public String A05;
    public List<C0720Ot> A06;
    public final SparseBooleanArray A07 = new SparseBooleanArray();
    public final AnonymousClass16 A08;
    public final AnonymousClass7D A09;
    public final XJ A0A;
    public final JC A0B;
    public final C1143cD A0C;
    public final C0625La A0D;
    public final C03649v A0E;
    public final IB A0F;

    static {
        A02();
    }

    public static void A02() {
        A0G = new String[]{"V9PMqjfJwvT67ZYY54", "KoZhm2HVOxwdWjftAINQcNHkYZyOyrrP", "1oETx6NwESVuh0koANzr27EeUl20v2", "JzBcWsy5jAKTLTxYYehZ60pyLdP8SU", "yKgplvdSiwxmZlK2YFEMAzZYc4XxSzpb", "X0kbEjSxeWmcBGftN2ECOwyfDlZVnKJa", "Tg1eBciSulZI8G7Ss5ny454cnfyvXG1B", "XTdAnKcq2fXupzVpmV"};
    }

    public C1029aM(XJ xj, List<C0720Ot> list, AnonymousClass16 r4, JC jc, C1143cD cDVar, M9 m9, String str, C03649v r9, @Nullable IB ib) {
        this.A0A = xj;
        this.A0B = jc;
        this.A0C = cDVar;
        this.A09 = cDVar.A10();
        this.A04 = cDVar.A19();
        this.A0D = cDVar.A18();
        this.A03 = m9;
        this.A08 = r4;
        this.A06 = list;
        this.A05 = str;
        this.A0E = r9;
        this.A0F = ib;
    }

    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final RA A07(ViewGroup viewGroup, int i) {
        M9 m9 = this.A03;
        if (m9 == null) {
            return null;
        }
        int i2 = this.A00;
        String[] strArr = A0G;
        if (strArr[7].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[2] = "HBGrR4E5Ou8lGOrZM15HBBDd4CDBRH";
        strArr2[3] = "Dws66no3otUyrKWRXf01RsEai20ZIn";
        if (i2 == 0) {
            return null;
        }
        return new RA(C0686Nk.A00(new O0(this.A0A, this.A0B, m9, this.A08, null, this.A04, this.A0D).A0I(this.A0F).A0G(this.A0C).A0J(), this.A0C, this.A05, this.A0E), this.A07, this.A04, this.A06.size(), this.A0A);
    }

    /* access modifiers changed from: private */
    /* renamed from: A03 */
    public final void A0F(RA ra, int i) {
        ra.A0n(this.A04);
        ra.A0m(this.A06.get(i), this.A0B, this.A09, this.A0D, this.A05, this.A00, this.A02, this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass48
    public final int A0E() {
        return this.A06.size();
    }

    public final void A0G(int i, int i2, int i3) {
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
    }

    public final void A0H(QE qe) {
        this.A04 = qe;
    }
}
