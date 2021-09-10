package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import java.util.EnumSet;

public final class F1 extends SV {
    public static String[] A03;
    @VisibleForTesting
    public static final AbstractC01701w A04 = new C0810Sf();
    @Nullable
    public C0805Sa A00;
    public final C01691v A01;
    public final XJ A02;

    public static void A00() {
        A03 = new String[]{"Wdifh5HSN4RyvogFUrIVqQJQULlKdEei", "S34yOHPbjBOZXrhEKXqsFwPvtnd1qciy", "vu9eRI", "x0OqZ", "VYF0eZRg0jpnLcLhIoRoBnoO3djZf6SI", "33GTCt01Ki3rQT8tpwoWMPFpMqFvVQrj", "pa13jV0ykdfTm6Oo414mEZE7qu5xzGka", "tj8XsVszyFe6dIsjKXzcwTwgC3z6jHVp"};
    }

    static {
        A00();
    }

    public F1(C01691v r3) {
        super(r3.A05(), A04.A4N(r3));
        this.A01 = r3;
        this.A02 = r3.A05();
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void A05() {
        C0805Sa sa = this.A00;
        if (sa != null) {
            sa.A0A();
        }
        AbstractC01661s r4 = super.A00;
        EnumC01651r r3 = EnumC01651r.A04;
        if (A03[1].charAt(8) != 'f') {
            A03[4] = "bjBCaQy28rNQq0pISHtZZouKJ3cbndZJ";
            r4.ADg(r3);
            return;
        }
        throw new RuntimeException();
    }

    public final void A07() {
        this.A00 = new C0805Sa(this.A01, this, super.A02);
        this.A00.A0B(this.A01.A0A(), this.A01.A06());
    }

    public final void A08(InterstitialAd interstitialAd, EnumSet<CacheFlag> enumSet, @Nullable String str) {
        if (!super.A00.A5G()) {
            this.A01.A0C(interstitialAd);
            C0805Sa sa = this.A00;
            if (sa != null) {
                sa.A0B(enumSet, str);
                return;
            }
            this.A01.A0J(enumSet);
            this.A01.A0G(str);
            A07();
        }
    }

    public final boolean A09() {
        C0805Sa sa = this.A00;
        if (sa != null) {
            return sa.A0C();
        }
        if (this.A01.A00() > 0) {
            int i = (LZ.A00() > this.A01.A00() ? 1 : (LZ.A00() == this.A01.A00() ? 0 : -1));
            if (A03[0].charAt(6) != 'y') {
                A03[4] = "spPOKGUnJm6foAMMjUQWH3rPbfiGZlB3";
                if (i > 0) {
                    return true;
                }
            } else {
                throw new RuntimeException();
            }
        }
        return false;
    }

    public final boolean A0A() {
        C0805Sa sa = this.A00;
        if (sa != null) {
            return sa.A0D();
        }
        return super.A00.A5W() == EnumC01651r.A06;
    }

    public final boolean A0B(InterstitialAd interstitialAd, InterstitialAd.InterstitialShowAdConfig interstitialShowAdConfig) {
        if (super.A00.A5H()) {
            return false;
        }
        this.A01.A0C(interstitialAd);
        C0805Sa sa = this.A00;
        if (sa != null) {
            return sa.A0E();
        }
        this.A00 = new C0805Sa(this.A01, this, super.A02);
        this.A00.A0E();
        return false;
    }
}
