package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

public final class RA extends AbstractC02274c {
    public QD A00;
    public QE A01;
    public QE A02;
    public final int A03;
    public final SparseBooleanArray A04;
    public final XJ A05;
    public final C03579o A06;

    public RA(C03579o r1, SparseBooleanArray sparseBooleanArray, QE qe, int i, XJ xj) {
        super(r1);
        this.A05 = xj;
        this.A06 = r1;
        this.A04 = sparseBooleanArray;
        this.A01 = qe;
        this.A03 = i;
    }

    private void A08(JC jc, C0625La la, String str, C0720Ot ot) {
        if (!this.A04.get(ot.A02())) {
            QE qe = this.A02;
            if (qe != null) {
                qe.A0W();
                this.A02 = null;
            }
            this.A00 = new RC(this, str, ot, jc, ot.A04(), la);
            this.A02 = new QE(this.A06, 10, new WeakReference(this.A00), this.A05);
            this.A02.A0Z(false);
            this.A02.A0X(100);
            this.A02.A0Y(100);
            this.A06.setOnAssetsLoadedListener(new RB(this, ot));
        }
    }

    public final void A0m(C0720Ot ot, JC jc, AnonymousClass7D r9, C0625La la, String str, int i, int i2, int i3) {
        int i4;
        int A022 = ot.A02();
        this.A06.setTag(-1593835536, Integer.valueOf(A022));
        this.A06.setupNativeCtaExtension(ot);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(i, -2);
        if (A022 == 0) {
            i4 = i3;
        } else {
            i4 = i2;
        }
        if (A022 < this.A03 - 1) {
            i3 = i2;
        }
        marginLayoutParams.setMargins(i4, 0, i3, 0);
        String A07 = ot.A03().A0E().A07();
        String A08 = ot.A03().A0E().A08();
        this.A06.setIsVideo(!TextUtils.isEmpty(A08));
        if (this.A06.A0g()) {
            this.A06.setVideoPlaceholderUrl(A07);
            this.A06.setVideoUrl(r9.A0O(A08));
        } else {
            this.A06.setImageUrl(A07);
        }
        this.A06.setLayoutParams(marginLayoutParams);
        this.A06.A0h(ot.A04());
        A08(jc, la, str, ot);
    }

    public final void A0n(QE qe) {
        this.A01 = qe;
    }
}
