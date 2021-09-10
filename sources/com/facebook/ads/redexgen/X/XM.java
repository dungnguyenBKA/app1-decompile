package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import com.facebook.proguard.annotations.DoNotStrip;
import java.lang.ref.WeakReference;

public abstract class XM extends FrameLayout implements MA {
    public static final RelativeLayout.LayoutParams A0D = new RelativeLayout.LayoutParams(-1, -1);
    public boolean A00 = false;
    public final AnonymousClass16 A01;
    public final AnonymousClass7D A02;
    public final XJ A03;
    public final JC A04;
    public final JJ A05;
    public final C0625La A06 = new C0625La();
    public final M4 A07;
    public final M9 A08;
    public final AbstractC0655Me A09;
    public final QE A0A;
    public final LV A0B;
    @DoNotStrip
    public final QD A0C = new XU(this);

    public abstract void A0R();

    public abstract void A0T(AnonymousClass50 v);

    public abstract boolean A0U();

    public XM(XJ xj, AbstractC0655Me me, JC jc, AnonymousClass16 r8, AnonymousClass7D r9, M9 m9) {
        super(xj);
        this.A03 = xj;
        this.A09 = me;
        this.A04 = jc;
        this.A01 = r8;
        this.A02 = r9;
        this.A08 = m9;
        this.A05 = new JJ(this.A01.A0T(), this.A04);
        this.A0A = new QE(this, 1, new WeakReference(this.A0C), this.A03);
        this.A0A.A0X(this.A01.A0H());
        this.A0A.A0Y(this.A01.A0I());
        this.A07 = A0O();
        this.A0B = new LV(this);
        this.A0B.A05(LU.A03);
    }

    private M4 A0O() {
        M4 fullScreenAdToolbar;
        if (J4.A1Y(this.A03)) {
            fullScreenAdToolbar = new C1175ck(this.A03, this.A08, this.A05, 4, 2);
        } else {
            fullScreenAdToolbar = new FullScreenAdToolbar(this.A03, this.A08, this.A05, 1, this.A01.A0F());
        }
        int A032 = this.A01.A0N().A0E().A03();
        fullScreenAdToolbar.setPageDetails(this.A01.A0Q(), this.A01.A0T(), A032, this.A01.A0R());
        fullScreenAdToolbar.A05(this.A01.A0M().A01(), true);
        if (A032 < 0 && this.A01.A0N().A0M()) {
            fullScreenAdToolbar.setToolbarActionMode(4);
        }
        fullScreenAdToolbar.setToolbarListener(new XN(this));
        return fullScreenAdToolbar;
    }

    private void A0P() {
        if (this.A01.A0N().A0P()) {
            C0711Ok A0B2 = new C0710Oi(this.A03, this.A01.A0N().A0F(), this.A01.A0Q()).A08(this.A01.A0M().A01()).A0B();
            JL.A04(A0B2, this.A05, JI.A0U);
            addView(A0B2, A0D);
            A0B2.A04(new XO(this));
            return;
        }
        A0R();
    }

    public final void A0Q() {
        if (!this.A00) {
            this.A0A.A0V();
            this.A00 = true;
        }
    }

    public final void A0S(int i, AbstractRunnableC0603Kb kb) {
        new L6(i, new XQ(this, i, kb)).A08();
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void A8J(Intent intent, @Nullable Bundle bundle, AnonymousClass50 r5) {
        this.A08.A3M(this, A0D);
        A0T(r5);
        A0P();
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ADT(Bundle bundle) {
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public void onDestroy() {
        this.A0B.A03();
        if (!TextUtils.isEmpty(this.A01.A0T())) {
            this.A04.A8S(this.A01.A0T(), new C0678Nc().A04(this.A0A).A03(this.A06).A06());
        }
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A06.A07(motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setListener(M9 m9) {
    }

    public void setUpFullscreenMode(boolean z) {
        LU lu;
        if (Build.VERSION.SDK_INT >= 19) {
            if (z) {
                lu = LU.A04;
            } else {
                lu = LU.A03;
            }
            this.A0B.A05(lu);
        }
    }
}
