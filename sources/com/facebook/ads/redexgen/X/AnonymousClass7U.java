package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.7U */
public final class AnonymousClass7U extends MP implements View.OnClickListener {
    public static String[] A05;
    public final AbstractC0629Le A00;
    public final KW A01;
    public final KQ A02;
    public final KL A03;
    public final C0736Pj A04;

    static {
        A01();
    }

    public static void A01() {
        A05 = new String[]{"dj2bca5KMhic7lU7SNdjndSTQwmssf52", "TPlcacN2BRfqpmqqou3eGj4ypEirHC", "lK1i5T", "LDnNwGMA5Xj1Rc4RK", "9vPtQslMJEvaRYxyY6ZiMi1q6kn3NQTo", "pbwCeIFhJ07zfEQSECI2TdcOW", "Wj7W52", "ztBFgo3EeJBil6N8wes8zN"};
    }

    public AnonymousClass7U(XJ xj) {
        this(xj, null);
    }

    public AnonymousClass7U(XJ xj, AttributeSet attributeSet) {
        this(xj, attributeSet, 0);
    }

    public AnonymousClass7U(XJ xj, AttributeSet attributeSet, int i) {
        super(xj, attributeSet, i);
        this.A03 = new AnonymousClass7Y(this);
        this.A01 = new AnonymousClass7X(this);
        this.A02 = new AnonymousClass7W(this);
        this.A00 = new AnonymousClass7V(this);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.A04 = new C0736Pj(xj);
        this.A04.setChecked(true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 25.0f), (int) (displayMetrics.density * 25.0f));
        setVisibility(8);
        addView(this.A04, layoutParams);
        setClickable(true);
        setFocusable(true);
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final void A07() {
        super.A07();
        setOnClickListener(this);
        this.A04.setOnClickListener(this);
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A03, this.A00, this.A01, this.A02);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final void A08() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A05(this.A02, this.A01, this.A00, this.A03);
        }
        setOnClickListener(null);
        this.A04.setOnClickListener(null);
        super.A08();
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                PD videoView = getVideoView();
                if (videoView != null) {
                    if (videoView.getState() == QB.A07 || videoView.getState() == QB.A05 || videoView.getState() == QB.A06) {
                        videoView.A0Y(PO.A05, 11);
                    } else if (videoView.getState() == QB.A0A) {
                        videoView.A0b(true, 7);
                    }
                }
            } catch (Throwable th) {
                if (A05[5].length() != 25) {
                    throw new RuntimeException();
                }
                A05[7] = "YsoDkb8mAWGLBYzRGBa3i8";
                KT.A00(th, this);
            }
        }
    }

    public void setPauseAccessibilityLabel(String str) {
        this.A04.setPauseAccessibilityLabel(str);
    }

    public void setPlayAccessibilityLabel(String str) {
        this.A04.setPlayAccessibilityLabel(str);
    }
}
