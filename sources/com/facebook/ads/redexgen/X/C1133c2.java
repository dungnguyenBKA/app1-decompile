package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.proguard.annotations.DoNotStrip;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.c2  reason: case insensitive filesystem */
public final class C1133c2 extends AnonymousClass55 implements DefaultMediaViewVideoRendererApi {
    public static byte[] A0F;
    public static String[] A0G;
    public static final String A0H = C1133c2.class.getSimpleName();
    public MediaViewVideoRenderer A00;
    public XJ A01;
    @Nullable
    public JR A02;
    public EnumC0581Jd A03 = EnumC0581Jd.A03;
    @Nullable
    public C0387At A04;
    public AnonymousClass7Z A05;
    public AnonymousClass7U A06;
    @DoNotStrip
    public QD A07;
    public QE A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final PL A0C = new C1127bw(this);
    public final AtomicBoolean A0D = new AtomicBoolean(false);
    public final AtomicBoolean A0E = new AtomicBoolean(false);

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 127);
        }
        return new String(copyOfRange);
    }

    public static void A0E() {
        A0F = new byte[]{7, 32, 56, 47, 34, 39, 42, 110, 60, 43, 32, 42, 43, 60, 43, 60, 110, 45, 38, 39, 34, 42, 110, 45, 33, 32, 40, 39, 41, 96, 14, 38, 39, 42, 34, 21, 42, 38, 52, 21, 42, 39, 38, 44, 99, 42, 48, 99, 45, 54, 47, 47, 120, 99, 54, 45, 34, 33, 47, 38, 99, 55, 44, 99, 37, 42, 45, 39, 99, 42, 55, 109, 16, 43, 36, 39, 41, 32, 101, 49, 42, 101, 35, 44, 43, 33, 101, 8, 32, 33, 44, 36, 19, 44, 32, 50, 19, 44, 33, 32, 42, 101, 38, 45, 44, 41, 33, 107};
    }

    public static void A0F() {
        A0G = new String[]{"mcYgxpLQMmIwsDd5yEmcOVEUvqtoI", "GHoJM0N9xHnxy27wJlEicj6316JJBG", "sAgmez8xlBVRjdgohc9cPNZKpCHjl", "UXd4O0RMEZeMz8rPKuZc9Jx8", "lkMSGOb1N9f2znZPpxO7v43dGPgWn", "ZJq7h5cFUWj9FCmvTSQNl6xA6rnC8", "yifDfgH7QVrqMR4w0vNHSMY9h4Ewh", "QZpfE8IVFABXRQwraZ"};
    }

    static {
        A0F();
        A0E();
    }

    private JT A01(MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        return new C1128bx(this, mediaViewVideoRendererApi);
    }

    private JT A02(MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        return new C1129by(this, mediaViewVideoRendererApi);
    }

    private QD A04() {
        return new C1131c0(this);
    }

    private QE A05() {
        return new QE(this.A00, 50, true, new WeakReference(this.A07), this.A01);
    }

    private void A09() {
        C0387At at = this.A04;
        if (at != null) {
            PM pm = (PM) at.getVideoView();
            if (A0G[3].length() != 24) {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[2] = "uL1T6UePNJ7Kw1irCYcqiA1GlgiEZ";
            strArr[0] = "2BZHbySyGqLzqR4K5b7TQMpiAd64K";
            pm.setViewImplInflationListener(this.A0C);
        }
    }

    private void A0A() {
        C0387At at = this.A04;
        if (at != null) {
            at.getVideoView().setOnTouchListener(new JQ(this));
        }
    }

    private void A0B() {
        C0387At at = this.A04;
        if (at != null) {
            PM pm = (PM) at.getVideoView();
            String[] strArr = A0G;
            if (strArr[4].length() != strArr[1].length()) {
                A0G[7] = "MUEPyY1MJMWvhU3XHu";
                pm.setViewImplInflationListener(null);
                return;
            }
            throw new RuntimeException();
        }
    }

    private void A0C() {
        if (this.A00.getVisibility() == 0 && this.A09) {
            MediaViewVideoRenderer mediaViewVideoRenderer = this.A00;
            String[] strArr = A0G;
            if (strArr[4].length() != strArr[1].length()) {
                String[] strArr2 = A0G;
                strArr2[4] = "vtumVYeB8x7vkBeCNzRl37Vgwgf5m";
                strArr2[1] = "l5c2Nb35iHyego1JNAmcVzJY15xyfp";
                if (mediaViewVideoRenderer.hasWindowFocus()) {
                    this.A08.A0V();
                    return;
                }
            } else {
                throw new RuntimeException();
            }
        }
        C0387At at = this.A04;
        if (at != null && at.getState() == QB.A05) {
            this.A0B = true;
        }
        this.A08.A0W();
    }

    /* access modifiers changed from: private */
    public void A0D() {
        this.A03 = EnumC0581Jd.A03;
        A0B();
    }

    /* access modifiers changed from: private */
    public void A0J(C1143cD cDVar, @Nullable JR jr) {
        String str;
        this.A0A = false;
        this.A0B = false;
        this.A02 = jr;
        A09();
        AnonymousClass7Z r3 = this.A05;
        if (cDVar != null) {
            JY A12 = cDVar.getAdCoverImage();
            String[] strArr = A0G;
            if (strArr[2].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0G[3] = "zpp3cHPhluFOPvL30kkcY8af";
            if (A12 != null) {
                str = cDVar.getAdCoverImage().getUrl();
                r3.setImage(str, new C1130bz(this));
                this.A03 = cDVar.A17();
                this.A06.setPlayAccessibilityLabel(cDVar.A1D());
                this.A06.setPauseAccessibilityLabel(cDVar.A1C());
                this.A08.A0V();
            }
        }
        str = null;
        r3.setImage(str, new C1130bz(this));
        this.A03 = cDVar.A17();
        this.A06.setPlayAccessibilityLabel(cDVar.A1D());
        this.A06.setPauseAccessibilityLabel(cDVar.A1C());
        this.A08.A0V();
    }

    /* access modifiers changed from: private */
    public void A0K(PO po) {
        C0387At at = this.A04;
        if (at != null) {
            at.A0Y(po, 24);
        } else if (AdInternalSettings.isDebugBuild()) {
            Log.e(A0H, A06(30, 42, 60));
        }
    }

    /* access modifiers changed from: private */
    public boolean A0L() {
        C0387At at = this.A04;
        if (at == null || at.getState() == QB.A06) {
            return false;
        }
        if (this.A03 == EnumC0581Jd.A05 || this.A03 == EnumC0581Jd.A03) {
            return true;
        }
        return false;
    }

    @Override // com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi
    public final void initialize(Context context, MediaViewVideoRenderer mediaViewVideoRenderer, MediaViewVideoRendererApi mediaViewVideoRendererApi, int i) {
        JT A022;
        ((AnonymousClass55) mediaViewVideoRendererApi.getAdComponentViewApi()).A01(this);
        if (i == 0) {
            A022 = A02(mediaViewVideoRendererApi);
        } else if (i == 1) {
            A022 = A01(mediaViewVideoRendererApi);
        } else {
            throw new IllegalArgumentException(A06(0, 30, 49));
        }
        ((AnonymousClass5B) mediaViewVideoRendererApi).A07(A022);
        this.A01 = AnonymousClass56.A02(context);
        this.A00 = mediaViewVideoRenderer;
        this.A05 = new AnonymousClass7Z(this.A01);
        this.A07 = A04();
        this.A08 = A05();
        float f = C0632Lh.A01;
        int i2 = (int) (2.0f * f);
        int i3 = (int) (25.0f * f);
        this.A06 = new AnonymousClass7U(this.A01);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(9);
        layoutParams.addRule(12);
        this.A06.setPadding(i2, i3, i3, i2);
        this.A06.setLayoutParams(layoutParams);
        int i4 = 0;
        while (true) {
            int childCount = this.A00.getChildCount();
            if (A0G[3].length() == 24) {
                String[] strArr = A0G;
                strArr[2] = "oEzbzrDqpY4LpZuK9aeaZZijHYv0V";
                strArr[0] = "65U2aK7TrzSKlLOXQMMYyslcv3rZK";
                if (i4 >= childCount) {
                    break;
                }
                View childAt = this.A00.getChildAt(0);
                if (childAt instanceof C0387At) {
                    this.A04 = (C0387At) childAt;
                    break;
                }
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
        C0387At at = this.A04;
        if (at != null) {
            at.A0Z(this.A05);
            this.A04.A0Z(this.A06);
        } else if (AdInternalSettings.isDebugBuild()) {
            Log.e(A0H, A06(72, 36, 58));
        }
        this.A08.A0X(0);
        this.A08.A0Y(250);
        A022.ADl();
        String[] strArr2 = A0G;
        if (strArr2[4].length() != strArr2[1].length()) {
            String[] strArr3 = A0G;
            strArr3[4] = "NjD77g9sbns6FUonJskLzorZMVzfs";
            strArr3[1] = "sF6jyMJNRDvSJleY8k7g51skJQqlgl";
            return;
        }
        String[] strArr4 = A0G;
        strArr4[2] = "irNdkufru0tgAA9z3l7YlJhRv0dZK";
        strArr4[0] = "zN5wNlZvELtjdUjcESL7VUEU7ru13";
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewParentApi, com.facebook.ads.redexgen.X.AnonymousClass55
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A09 = true;
        A0C();
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewParentApi, com.facebook.ads.redexgen.X.AnonymousClass55
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A09 = false;
        A0C();
    }

    @Override // com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi
    public final void onPrepared() {
        this.A00.setOnTouchListener(new JP(this));
        A0A();
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewParentApi, com.facebook.ads.redexgen.X.AnonymousClass55
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        A0C();
    }

    @Override // com.facebook.ads.internal.api.AdComponentView, com.facebook.ads.redexgen.X.AnonymousClass55
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        A0C();
    }
}
