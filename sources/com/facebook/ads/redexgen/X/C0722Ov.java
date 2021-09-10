package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Ov  reason: case insensitive filesystem */
public final class C0722Ov extends FrameLayout {
    public static final int A07 = ((int) (C0632Lh.A01 * 16.0f));
    public AM A00;
    @Nullable
    public C03177y A01;
    public IS A02;
    public AnonymousClass7Z A03;
    public AnonymousClass7L A04;
    public final XJ A05;
    public final JJ A06;

    public C0722Ov(XJ xj, JJ jj) {
        super(xj);
        this.A06 = jj;
        this.A05 = xj;
        setUpView(xj);
    }

    public final void A01() {
        this.A00.A0b(true, 10);
    }

    public final void A02() {
        C03177y r0 = this.A01;
        if (r0 != null) {
            r0.A0h();
            this.A01 = null;
        }
    }

    public final void A03(AnonymousClass9G r2) {
        this.A00.getEventBus().A06(r2);
    }

    public final void A04(JC jc, String str, Map<String, String> extraParams) {
        A02();
        this.A01 = new C03177y(this.A05, jc, this.A00, str, extraParams);
    }

    public final void A05(PO po) {
        this.A00.A0Y(po, 13);
    }

    public final boolean A06() {
        return this.A00.A0h();
    }

    public PD getSimpleVideoView() {
        return this.A00;
    }

    public float getVolume() {
        return this.A00.getVolume();
    }

    public void setPlaceholderUrl(String str) {
        this.A03.setImage(str);
    }

    private void setUpPlugins(XJ xj) {
        this.A00.A0U();
        this.A03 = new AnonymousClass7Z(xj);
        this.A00.A0Z(this.A03);
        this.A02 = new IS(xj, this.A06);
        this.A00.A0Z(new C03077i(xj));
        this.A00.A0Z(this.A02);
        this.A04 = new AnonymousClass7L(xj, true, this.A06);
        this.A00.A0Z(this.A04);
        this.A00.A0Z(new C0554Ia(this.A04, EnumC0728Pb.A03, true, true));
        if (this.A00.A0d() || J4.A1l(xj) || J4.A1r(xj)) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            int i = A07;
            layoutParams.setMargins(i, i, i, i);
            this.A02.setLayoutParams(layoutParams);
            this.A00.addView(this.A02);
        }
    }

    private void setUpVideo(XJ xj) {
        this.A00 = new AM(xj);
        this.A00.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        C0632Lh.A0N(this.A00);
        addView(this.A00);
        setOnClickListener(new View$OnClickListenerC0721Ou(this));
    }

    private void setUpView(XJ xj) {
        setUpVideo(xj);
        setUpPlugins(xj);
    }

    public void setVideoURI(String str) {
        this.A00.setVideoURI(str);
    }

    public void setVolume(float f) {
        this.A00.setVolume(f);
        this.A02.A0A();
    }
}
