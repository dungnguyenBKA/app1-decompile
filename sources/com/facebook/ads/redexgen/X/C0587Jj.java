package com.facebook.ads.redexgen.X;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Jj  reason: case insensitive filesystem */
public final class C0587Jj implements PP {
    public static String[] A0C;
    public int A00 = AdError.SERVER_ERROR_CODE;
    @Nullable
    public PD A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public final Handler A05 = new Handler();
    public final AbstractC0629Le A06 = new C03137p(this);
    public final KW A07 = new AnonymousClass7r(this);
    public final KQ A08 = new C03127o(this);
    public final KJ A09 = new C03117n(this);
    public final K3 A0A = new AnonymousClass7m(this);
    public final List<AbstractC0738Pl> A0B = new ArrayList();

    static {
        A04();
    }

    public static void A04() {
        A0C = new String[]{"ua4Z1F3Vn1tdURaP0tTj5Z", "VlqKJtfjGqtNso0qX2A6lmnvOZsZ2xTE", "1pb0xsuTqC4ySw1JjiCpjHk6a0KK", "HW9a8amQa56v9usqS4J3KzzxMBRp7oUY", "lzg290ZQq0ECc78zj7A2Pt", "9JBQniCNh78hbF6UnJo6", "DIRAqcjzgSQz4x9q8OrEXdtc6Zce0V5V", "FPN1H6gS7aT4O5CCkRk249I"};
    }

    public C0587Jj(boolean z) {
        this.A02 = z;
    }

    /* access modifiers changed from: private */
    public void A03() {
        this.A05.removeCallbacksAndMessages(null);
        Iterator<AbstractC0738Pl> it = this.A0B.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A0C[2].length() != 28) {
                throw new RuntimeException();
            }
            A0C[1] = "SzC94btdcN1119JNHgRanzsWdfoutew0";
            if (hasNext) {
                it.next().cancel();
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: private */
    public void A07(boolean z, boolean z2) {
        for (AbstractC0738Pl pl : this.A0B) {
            if (A0C[2].length() != 28) {
                throw new RuntimeException();
            }
            A0C[1] = "qWrr7wKcnD6M25Nm7U3j0NNRElcnIA4d";
            pl.A3P(z, z2);
        }
    }

    /* access modifiers changed from: private */
    public boolean A0E(EnumC0737Pk pk) {
        for (AbstractC0738Pl pl : this.A0B) {
            if (pl.A7G() != pk) {
                return false;
            }
        }
        return true;
    }

    public final void A0F() {
        this.A0B.clear();
    }

    public final void A0G() {
        if (this.A02) {
            this.A05.removeCallbacksAndMessages(null);
            this.A02 = false;
        }
    }

    public final void A0H() {
        this.A04 = true;
        this.A03 = true;
        A07(false, false);
    }

    public final void A0I(int i) {
        this.A00 = i;
    }

    public final void A0J(AbstractC0738Pl pl) {
        this.A0B.add(pl);
    }

    public final boolean A0K() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.PP
    public final void A8K(PD pd) {
        this.A01 = pd;
        pd.getEventBus().A04(this.A07, this.A0A, this.A08, this.A09, this.A06);
    }

    @Override // com.facebook.ads.redexgen.X.PP
    public final void AEO(PD pd) {
        A03();
        pd.getEventBus().A05(this.A06, this.A0A, this.A08, this.A09, this.A07);
        this.A01 = null;
    }
}
