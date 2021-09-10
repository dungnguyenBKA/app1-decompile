package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.ArrayList;

/* renamed from: com.facebook.ads.redexgen.X.Ah  reason: case insensitive filesystem */
public final class C0375Ah {
    public static String[] A06;
    public AbstractC0373Af A00 = AbstractC0373Af.A01;
    public C0376Ai A01;
    public C0376Ai A02;
    public boolean A03;
    public final C0371Ad A04 = new C0371Ad();
    public final ArrayList<C0376Ai> A05 = new ArrayList<>();

    static {
        A03();
    }

    public static void A03() {
        A06 = new String[]{"KiEP2P9b6TLdkEYwaN5ndNVtk9NQ5Y9p", "yrQkoPMIPCp0FUw5bDslSTdDJuyK", "OV0qCkDU4pR0s48LAW0LoXOWDo4ZunO9", "CNzCLbPvty9jTQMUswZxpqZWQtb7JEv9", "Vf", "ol3MR5ayifXszMqJK7WjfrE4Lr8bJhi8", "Hh8EscwfVF04VFT3j4sJSJqD2SmetI3K", "DN3PdRai96zSFxDytd4qNigxYecPuw8S"};
    }

    private C0376Ai A00(C0376Ai ai, AbstractC0373Af af) {
        int A052;
        if (af.A0F() || this.A00.A0F() || (A052 = af.A05(this.A00.A0B(ai.A01.A02, this.A04, true).A03)) == -1) {
            return ai;
        }
        return new C0376Ai(af.A0A(A052, this.A04).A00, ai.A01.A01(A052));
    }

    private void A02() {
        if (!this.A05.isEmpty()) {
            this.A01 = this.A05.get(0);
        }
    }

    @Nullable
    public final C0376Ai A04() {
        return this.A01;
    }

    @Nullable
    public final C0376Ai A05() {
        if (this.A05.isEmpty()) {
            return null;
        }
        ArrayList<C0376Ai> arrayList = this.A05;
        return arrayList.get(arrayList.size() - 1);
    }

    @Nullable
    public final C0376Ai A06() {
        if (this.A05.isEmpty() || this.A00.A0F() || this.A03) {
            return null;
        }
        return this.A05.get(0);
    }

    @Nullable
    public final C0376Ai A07() {
        return this.A02;
    }

    @Nullable
    public final FC A08(int timelinePeriodCount) {
        FC fc = null;
        AbstractC0373Af af = this.A00;
        if (af != null) {
            int periodIndex = af.A01();
            for (int i = 0; i < this.A05.size(); i++) {
                C0376Ai ai = this.A05.get(i);
                int i2 = ai.A01.A02;
                if (i2 < periodIndex && this.A00.A0A(i2, this.A04).A00 == timelinePeriodCount) {
                    if (fc != null) {
                        return null;
                    }
                    fc = ai.A01;
                }
            }
        }
        return fc;
    }

    public final void A09() {
        this.A03 = false;
        A02();
    }

    public final void A0A() {
        this.A03 = true;
    }

    public final void A0B(int i) {
        A02();
    }

    public final void A0C(int i, FC fc) {
        this.A05.add(new C0376Ai(i, fc));
        if (this.A05.size() == 1) {
            boolean A0F = this.A00.A0F();
            if (A06[0].charAt(21) != 'U') {
                A06[0] = "SFS5Xb2c2LrmqtbhPrHYALinOi1MehvJ";
                if (!A0F) {
                    A02();
                    return;
                }
                return;
            }
            throw new RuntimeException();
        }
    }

    public final void A0D(int i, FC fc) {
        C0376Ai ai;
        C0376Ai ai2 = new C0376Ai(i, fc);
        this.A05.remove(ai2);
        if (ai2.equals(this.A02)) {
            if (this.A05.isEmpty()) {
                ai = null;
            } else {
                ai = this.A05.get(0);
            }
            this.A02 = ai;
        }
    }

    public final void A0E(int i, FC fc) {
        this.A02 = new C0376Ai(i, fc);
    }

    public final void A0F(AbstractC0373Af af) {
        for (int i = 0; i < this.A05.size(); i++) {
            ArrayList<C0376Ai> arrayList = this.A05;
            arrayList.set(i, A00(arrayList.get(i), af));
        }
        C0376Ai ai = this.A02;
        if (A06[0].charAt(21) != 'U') {
            A06[1] = "OE27bQwCbSc4SHZoCTNTYydrCDTv";
            if (ai != null) {
                this.A02 = A00(ai, af);
            }
            this.A00 = af;
            A02();
            return;
        }
        throw new RuntimeException();
    }

    public final boolean A0G() {
        return this.A03;
    }
}
