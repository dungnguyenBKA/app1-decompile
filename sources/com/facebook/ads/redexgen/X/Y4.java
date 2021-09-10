package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.view.dynamiclayout.DynamicFullScreenAdView$AdFormatType;
import com.facebook.proguard.annotations.DoNotStrip;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class Y4 extends FrameLayout implements MA, AbstractC0704Oc {
    public static String[] A0H;
    public static final AtomicInteger A0I = new AtomicInteger();
    public AbstractC02494y A00 = new YG(this);
    @Nullable
    public AnonymousClass50 A01;
    public boolean A02 = true;
    public boolean A03;
    public boolean A04;
    public final AnonymousClass16 A05;
    public final XJ A06;
    public final JC A07;
    public final JJ A08;
    public final LV A09;
    public final C0625La A0A;
    public final M9 A0B;
    public final AbstractC0655Me A0C;
    @Nullable
    public final OM A0D;
    public final OS A0E;
    @DoNotStrip
    public final QD A0F = new YE(this);
    public final QE A0G;

    public static void A0C() {
        A0H = new String[]{"Ky6zrcoV7NYtZpO3AnBVhERgUe61TP4A", "7", "MIS71VG0t7feKobdqgnq1TwubiJ1N09z", "nEwmQOfqxRkjYDAAu8TY0n89Pulsb82", "nm6mhrtocmSPL4qM7u9wOkkvqXPHcra", "ADTrDSFqqVysA22fSklmKPGMwsWvvDiN", "oNlgPu", "28CTXOUAXLtNi6XFaROwO0buCKC9QIVi"};
    }

    static {
        A0C();
    }

    public Y4(XJ xj, JC jc, M9 m9, AnonymousClass16 r16, AbstractC0655Me me, @DynamicFullScreenAdView$AdFormatType int i) {
        super(xj);
        this.A06 = xj;
        this.A07 = jc;
        this.A0B = m9;
        this.A05 = r16;
        this.A0C = me;
        OS A022 = OT.A02(r16.A0Y());
        if (A022 != null) {
            this.A0E = A022;
            this.A03 = true;
        } else {
            this.A0E = new OS(this.A06, r16, jc, i);
            this.A03 = false;
        }
        this.A08 = this.A0E.A0M();
        this.A0A = this.A0E.A0N();
        this.A0E.A0Z(new YD(this));
        C0632Lh.A0J(1003, this.A0E.A0O());
        if (this.A05.A0k()) {
            XJ xj2 = this.A06;
            this.A0D = new OM(xj2, this.A07, this.A05, new AnonymousClass7D(xj2), this.A08, this.A0B, this.A0C, new Y9(this));
            this.A0D.A0O();
            this.A0E.A0O().setOnTouchListener(new OI(this));
            addView(this.A0D, new FrameLayout.LayoutParams(-1, -1));
        } else {
            this.A0D = null;
        }
        View view = this.A0D;
        this.A0G = new QE(view == null ? this.A0E.A0O() : view, 1, new WeakReference(this.A0F), this.A06);
        this.A0G.A0X(this.A05.A0H());
        this.A0G.A0Y(this.A05.A0I());
        this.A0E.A0b(this.A0G);
        this.A09 = new LV(this);
        this.A09.A05(LU.A03);
        setBackgroundColor(0);
    }

    private void A0B() {
        C0711Ok A0B2 = new C0710Oi(this.A06, this.A05.A0N().A0F(), this.A05.A0Q()).A08(this.A05.A0M().A01()).A0B();
        addView(A0B2, new FrameLayout.LayoutParams(-1, -1));
        A0B2.A04(new Y5(this));
    }

    private final void A0D() {
        this.A0E.A0a(this);
        if (!this.A03) {
            this.A06.A0A().A4v();
            this.A0E.A0W();
        } else {
            this.A06.A0A().A4w();
            if (this.A0E.A0e()) {
                AEB();
            }
        }
        addView(this.A0E.A0O(), new FrameLayout.LayoutParams(-1, -1));
        this.A0B.A3M(this, new RelativeLayout.LayoutParams(-1, -1));
        if (Build.VERSION.SDK_INT >= 19 && this.A05.A0l()) {
            this.A09.A05(LU.A04);
        }
    }

    private void A0E(String str) {
        if (!TextUtils.isEmpty(str)) {
            new C0685Nj(this.A06, this.A0C.A5w(), this.A0G, this.A0A, this.A07, this.A0B).A08(this.A05.A0T(), str, new HashMap());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void A7V() {
        A0E(this.A05.A0N().A0G().A04());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void A7W(String str) {
        A0E(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void A7a() {
        this.A0B.A3t(this.A0C.A5T());
        new PA(this.A06, this.A0C, this.A05.A0Z(), this.A0B).A06();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void A8E() {
        new Handler(Looper.getMainLooper()).post(new Y6(this));
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void A8J(Intent intent, @Nullable Bundle bundle, AnonymousClass50 r4) {
        A0I.incrementAndGet();
        r4.A0L(this.A00);
        this.A01 = r4;
        A0D();
        if (this.A05.A0N().A0P()) {
            A0B();
        } else {
            this.A0E.A0V();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void AAG() {
        OM om = this.A0D;
        if (om != null) {
            om.A0Q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void AAs(boolean z) {
        OM om = this.A0D;
        if (om != null) {
            om.A0S(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void AB2(boolean z) {
        OM om = this.A0D;
        if (om != null) {
            om.A0T(z);
        }
        if (z) {
            this.A0E.A0R();
        } else {
            this.A0E.A0U();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ABR(boolean z) {
        OM om = this.A0D;
        if (om != null) {
            om.A0U(z);
        }
        boolean z2 = this.A02;
        if (A0H[1].length() != 11) {
            A0H[5] = "5WCDyt3aDRAQqvSthuq2O6x8YHnGvtvN";
            if (z2) {
                this.A02 = false;
            } else if (z) {
                this.A0E.A0Q();
            } else {
                this.A0E.A0X();
            }
        } else {
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void ABc() {
        OM om = this.A0D;
        if (om != null) {
            om.A0R();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void AC4(boolean z) {
        OM om = this.A0D;
        if (om != null) {
            om.A0V(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void AC6(boolean z) {
        OM om = this.A0D;
        if (om != null) {
            om.A0W(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ADT(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void AEB() {
        if (!this.A04) {
            this.A0G.A0V();
            this.A04 = true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0704Oc
    public final void close() {
        AnonymousClass50 r1 = this.A01;
        if (r1 != null) {
            r1.finish(4);
        }
    }

    public static int getAttachedDynamicAdViews() {
        return A0I.get();
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void onDestroy() {
        OM om = this.A0D;
        if (om != null) {
            om.A0P();
        }
        this.A09.A03();
        this.A07.A8S(this.A05.A0T(), new C0678Nc().A03(this.A0A).A04(this.A0G).A06());
        this.A00 = null;
        this.A01 = null;
        OT.A03(this.A05.A0Y());
        A0I.decrementAndGet();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        requestDisallowInterceptTouchEvent(true);
        return super.onTouchEvent(motionEvent);
    }

    public void setListener(M9 m9) {
    }
}
