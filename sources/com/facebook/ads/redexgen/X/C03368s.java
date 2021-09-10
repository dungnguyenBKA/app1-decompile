package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.8s  reason: invalid class name and case insensitive filesystem */
public final class C03368s extends XM {
    @Nullable
    public AbstractC0699Nx A00;
    public final AbstractC02494y A01 = new XL(this);
    public final AtomicBoolean A02 = new AtomicBoolean(false);
    public final AtomicBoolean A03 = new AtomicBoolean(false);
    public final AtomicBoolean A04 = new AtomicBoolean(false);

    public C03368s(XJ xj, AbstractC0655Me me, JC jc, AnonymousClass16 r6, AnonymousClass7D r7, M9 m9) {
        super(xj, me, jc, r6, r7, m9);
    }

    private AbstractC0699Nx A01(int i) {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setAdjustViewBounds(true);
        new AsyncTaskC1017aA(imageView, super.A03).A06(super.A01.A0N().A0E().A00(), super.A01.A0N().A0E().A01()).A07(new TA(this)).A08(super.A01.A0N().A0E().A07());
        return C0700Ny.A00(new O0(super.A03, super.A04, this.A08, super.A01, imageView, this.A0A, this.A06).A0E(this.A07.getToolbarHeight()).A0H(this.A07).A0D(i).A0J(), null, true);
    }

    /* access modifiers changed from: private */
    public void A05() {
        if (this.A03.get() && this.A02.get()) {
            A0Q();
        }
    }

    private void A06(int i) {
        boolean z;
        C0632Lh.A0M(this.A00);
        this.A00 = A01(i);
        AnonymousClass1I colors = this.A00.getColors();
        AbstractC0699Nx nx = this.A00;
        boolean z2 = true;
        if (nx == null || (!nx.A0a() && !(this.A00 instanceof AbstractC0970Ym))) {
            z = false;
        } else {
            z = true;
        }
        C0632Lh.A0P(this, colors.A07(z));
        this.A07.A05(colors, this.A00.A0a());
        addView(this.A00, 0, XM.A0D);
        AbstractC0699Nx nx2 = this.A00;
        if (nx2 == null || !nx2.A0a()) {
            z2 = false;
        }
        setUpFullscreenMode(z2);
    }

    @Override // com.facebook.ads.redexgen.X.XM
    public final void A0R() {
        C0632Lh.A0O(this.A00);
        C0632Lh.A0O(this.A07);
        this.A02.set(true);
        A05();
        int A032 = super.A01.A0N().A0E().A03();
        if (A032 > 0) {
            AbstractC0699Nx nx = this.A00;
            if (nx != null) {
                nx.A0Y();
            }
            A0S(A032, new TN(this));
            return;
        }
        this.A04.set(true);
        this.A07.setToolbarActionMode(getCloseButtonStyle());
    }

    @Override // com.facebook.ads.redexgen.X.XM
    public final void A0T(AnonymousClass50 r5) {
        r5.A0L(this.A01);
        A06(r5.A0I().getResources().getConfiguration().orientation);
        addView(this.A07, new FrameLayout.LayoutParams(-1, this.A07.getToolbarHeight()));
        C0632Lh.A0K(this.A00);
        C0632Lh.A0K(this.A07);
    }

    @Override // com.facebook.ads.redexgen.X.XM
    public final boolean A0U() {
        AbstractC0699Nx nx = this.A00;
        return nx != null && nx.A0b(false);
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void AB2(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ABR(boolean z) {
    }

    /* access modifiers changed from: private */
    public int getCloseButtonStyle() {
        AbstractC0699Nx nx = this.A00;
        if (nx != null) {
            return nx.getCloseButtonStyle();
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.XM
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!super.A01.A0N().A0N()) {
            A06(configuration.orientation);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA, com.facebook.ads.redexgen.X.XM
    public final void onDestroy() {
        AbstractC0699Nx nx = this.A00;
        if (nx != null) {
            nx.A0U();
        }
        super.onDestroy();
    }
}
