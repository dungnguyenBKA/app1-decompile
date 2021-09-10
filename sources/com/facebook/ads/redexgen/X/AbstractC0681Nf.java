package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.AdError;
import java.util.HashMap;

/* renamed from: com.facebook.ads.redexgen.X.Nf  reason: case insensitive filesystem */
public abstract class AbstractC0681Nf extends LinearLayout {
    public static final int A05 = ((int) (C0632Lh.A01 * 8.0f));
    public static final LinearLayout.LayoutParams A06 = new LinearLayout.LayoutParams(-2, -2);
    public final int A00;
    public final RelativeLayout A01;
    public final XJ A02;
    public final View$OnClickListenerC1014a7 A03;
    public final C0690No A04;

    public abstract void A0E(int i);

    public abstract void A0F(boolean z);

    public AbstractC0681Nf(XJ xj, int i, AnonymousClass1I r14, String str, JC jc, M9 m9, QE qe, C0625La la) {
        super(xj);
        C0632Lh.A0N(this);
        this.A02 = xj;
        this.A00 = i;
        this.A04 = new C0690No(xj);
        C0632Lh.A0P(this.A04, 0);
        C0632Lh.A0N(this.A04);
        this.A03 = new View$OnClickListenerC1014a7(xj, str, r14, jc, m9, qe, la);
        C0632Lh.A0J(AdError.NO_FILL_ERROR_CODE, this.A03);
        this.A01 = new RelativeLayout(xj);
        this.A01.setLayoutParams(A06);
        C0632Lh.A0N(this.A01);
    }

    public int A09(int i) {
        return 0;
    }

    public void A0A() {
    }

    public void A0B() {
    }

    public RelativeLayout.LayoutParams A0C(View view) {
        return new RelativeLayout.LayoutParams(-1, -2);
    }

    public RelativeLayout.LayoutParams A0D(View view) {
        return new RelativeLayout.LayoutParams(-1, -2);
    }

    public final View$OnClickListenerC1014a7 getCTAButton() {
        return this.A03;
    }

    public View getExpandableLayout() {
        return null;
    }

    @VisibleForTesting
    public final ImageView getIconView() {
        return this.A04;
    }

    public void setInfo(AnonymousClass1G r4, AnonymousClass1J r5, String str, String str2, @Nullable AbstractC0684Ni ni) {
        this.A03.setCta(r5, str, new HashMap(), ni);
        AsyncTaskC1017aA aAVar = new AsyncTaskC1017aA(this.A04, this.A02);
        int i = this.A00;
        aAVar.A06(i, i).A08(str2);
    }

    public void setTitleMaxLines(int i) {
    }
}
