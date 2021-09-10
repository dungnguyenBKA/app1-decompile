package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.transition.ChangeBounds;
import android.transition.Explode;
import android.transition.TransitionSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.aZ  reason: case insensitive filesystem */
public final class C1042aZ extends AbstractC0660Mj {
    public static final int A02 = ((int) (C0632Lh.A01 * 8.0f));
    public final RelativeLayout A00 = new RelativeLayout(getContext());
    public final XJ A01;

    public C1042aZ(XJ xj, JC jc, String str, AnonymousClass1S r7, MA ma, M9 m9) {
        super(xj, jc, str, r7, ma, m9);
        this.A01 = xj;
        addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        C0632Lh.A0P(this.A00, -1728053248);
        this.A00.setOnClickListener(new View$OnClickListenerC0665Mo(this));
    }

    public static RelativeLayout.LayoutParams A0A(boolean z) {
        int i;
        if (z) {
            i = -1;
        } else {
            i = -2;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, i);
        layoutParams.addRule(12);
        return layoutParams;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    private void A0B() {
        if (Build.VERSION.SDK_INT >= 21) {
            TransitionSet transitionSet = new TransitionSet();
            transitionSet.setOrdering(0);
            transitionSet.addTransition(new ChangeBounds()).addTransition(new Explode());
            C0632Lh.A0a(this, transitionSet);
            return;
        }
        C0632Lh.A0Y(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0K() {
        AnonymousClass2B A03 = AnonymousClass28.A03(this.A01.A00());
        C0674My my = new C0674My(this.A01);
        my.setInfo(EnumC0640Lp.HIDE_AD, AnonymousClass28.A0B(this.A01.A00()), AnonymousClass28.A0A(this.A01.A00()));
        my.setOnClickListener(new View$OnClickListenerC0666Mp(this));
        AnonymousClass2B A04 = AnonymousClass28.A04(this.A01.A00());
        C0674My my2 = new C0674My(this.A01);
        my2.setInfo(EnumC0640Lp.REPORT_AD, AnonymousClass28.A0F(this.A01.A00()), AnonymousClass28.A0E(this.A01.A00()));
        my2.setOnClickListener(new View$OnClickListenerC0667Mq(this));
        C0674My my3 = new C0674My(this.A01);
        my3.setInfo(EnumC0640Lp.AD_CHOICES_ICON, AnonymousClass28.A0G(this.A01.A00()), "");
        my3.setOnClickListener(new View$OnClickListenerC0668Mr(this));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setClickable(true);
        linearLayout.setOrientation(1);
        int i = A02;
        linearLayout.setPadding(i * 2, i, i * 2, i);
        C0632Lh.A0P(linearLayout, -1);
        if (!A03.A05().isEmpty()) {
            linearLayout.addView(my, layoutParams);
        }
        if (!A04.A05().isEmpty()) {
            linearLayout.addView(my2, layoutParams);
        }
        linearLayout.addView(my3, layoutParams);
        A0B();
        this.A00.removeAllViews();
        this.A00.addView(linearLayout, A0A(false));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0L() {
        C0632Lh.A0L(this);
        this.A00.removeAllViews();
        C0632Lh.A0M(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0M(AnonymousClass2B r6, AnonymousClass29 r7) {
        boolean z;
        String A08;
        EnumC0640Lp lp;
        int i;
        String str;
        if (r7 != AnonymousClass29.A04) {
            if (r7 == AnonymousClass29.A05) {
                z = true;
            } else {
                z = false;
            }
            C0658Mh mh = new C0658Mh(this.A01, this.A0A);
            if (z) {
                A08 = AnonymousClass28.A09(this.A01.A00());
            } else {
                A08 = AnonymousClass28.A08(this.A01.A00());
            }
            C0658Mh A0F = mh.A0I(A08).A0H(AnonymousClass28.A07(this.A01.A00())).A0F(r6.A04());
            if (z) {
                lp = EnumC0640Lp.REPORT_AD;
            } else {
                lp = EnumC0640Lp.HIDE_AD;
            }
            C0658Mh A0E = A0F.A0E(lp);
            if (z) {
                i = -552389;
            } else {
                i = -13272859;
            }
            C0658Mh A0D = A0E.A0D(i);
            if (this.A09 != null) {
                str = this.A09.A01();
            } else {
                str = "";
            }
            C0659Mi A0M = A0D.A0G(str).A0M();
            C0632Lh.A0P(A0M, -1);
            C0632Lh.A0Y(this);
            this.A00.removeAllViews();
            this.A00.addView(A0M, A0A(true));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final void A0N(AnonymousClass2B r11, AnonymousClass29 r12) {
        boolean z;
        String A0B;
        EnumC0640Lp lp;
        if (r12 == AnonymousClass29.A05) {
            z = true;
        } else {
            z = false;
        }
        XJ xj = this.A01;
        AbstractC0662Ml ml = this.A0A;
        if (z) {
            A0B = AnonymousClass28.A0F(this.A01.A00());
        } else {
            A0B = AnonymousClass28.A0B(this.A01.A00());
        }
        if (z) {
            lp = EnumC0640Lp.REPORT_AD;
        } else {
            lp = EnumC0640Lp.HIDE_AD;
        }
        N1 n1 = new N1(xj, r11, ml, A0B, lp);
        n1.setClickable(true);
        C0632Lh.A0P(n1, -1);
        int i = A02;
        n1.setPadding(i * 2, i, i * 2, i);
        A0B();
        this.A00.removeAllViews();
        this.A00.addView(n1, A0A(false));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0660Mj
    public final boolean A0O() {
        return false;
    }
}
