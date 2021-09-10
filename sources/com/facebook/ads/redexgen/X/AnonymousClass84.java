package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;
import com.facebook.proguard.annotations.DoNotStrip;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@SuppressLint({"ViewConstructor"})
/* renamed from: com.facebook.ads.redexgen.X.84  reason: invalid class name */
public final class AnonymousClass84 extends AbstractC1106bb implements AbstractC0725Oy {
    public static byte[] A0O;
    public static String[] A0P;
    public static final int A0Q = ((int) (C0632Lh.A01 * 42.0f));
    public static final int A0R = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A0S = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A0T = ((int) (C0632Lh.A01 * 12.0f));
    public int A00 = -1;
    public int A01;
    public int A02;
    @Nullable
    public RelativeLayout A03;
    public S1 A04;
    public AnonymousClass7D A05;
    @Nullable
    public C01862m A06;
    @Nullable
    public AbstractC0681Nf A07;
    @Nullable
    public C0689Nn A08;
    @Nullable
    public RH A09;
    @Nullable
    @DoNotStrip
    public QD A0A;
    public QE A0B;
    @Nullable
    public String A0C;
    public List<C0720Ot> A0D;
    public final int A0E;
    public final AnonymousClass1I A0F;
    public final XJ A0G;
    public final C0625La A0H = new C0625La();
    public final M9 A0I;
    public final O1 A0J;
    public final C0726Oz A0K;
    public final C0726Oz A0L;
    public final IB A0M;
    public final boolean A0N;

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0O, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = (copyOfRange[i4] - i3) - 14;
            if (A0P[0].charAt(17) != 'P') {
                A0P[5] = "";
                copyOfRange[i4] = (byte) i5;
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        byte[] bArr = {94, -117, -117, -120, -117, 57, 124, -117, 126, 122, -115, -126, -121, Byte.MIN_VALUE, 57, 124, 122, -117, -120, -114, -116, 126, -123, 57, -113, -126, 126, -112, 89, -122, -122, -125, -122, 52, -117, 124, 125, Byte.MIN_VALUE, 121, 52, 119, 117, -122, -125, -119, -121, 121, Byte.MIN_VALUE, 52, 119, 117, -122, 120, 52, 119, 124, 117, -126, 123, 121, 66, 91, 87, 86, -118, 121, 126, 122, -125, 120, 122, 99, 122, -119, -116, -124, -121, Byte.MIN_VALUE, -97, -94, -99, -94, -97, -78, -97, -99, -96, -77, -84, -94, -86, -93, -33, -21, -23, -86, -30, -35, -33, -31, -34, -21, -21, -25, -86, -35, -32, -17, -86, -27, -22, -16, -31, -18, -17, -16, -27, -16, -27, -35, -24, -86, -33, -24, -27, -33, -25, -31, -32};
        if (A0P[0].charAt(17) != 'P') {
            A0P[0] = "0pXVmbGKHAzIVbBBK7Eyv6Mrdc2f0VIY";
            A0O = bArr;
            return;
        }
        throw new RuntimeException();
    }

    public static void A0C() {
        A0P = new String[]{"jpfQHsJU1lQWxp7CXlwdVdxcmzkEjD3g", "zEjz0M8mBGIlVid6uM60nN2wm9TWrUGD", "N1PpSZkKdQQSk7AxXPBdtL04F7CB9SRH", "NsCDsqdLjA318x1fHEY8u0Kcg9miAoAi", "WmIcjMDFfLwNDk", "", "Zb94j8IQkKLdVAKFmXIR3eGQpuAhW41l", "pxOHyfKHQ8aixQeNEjeruqZzDXsiYM9P"};
    }

    static {
        A0C();
        A0B();
    }

    public AnonymousClass84(XJ xj, JC jc, AnonymousClass7D r16, M9 m9, S1 s1, boolean z) {
        super(xj, jc, m9, s1);
        this.A05 = r16;
        this.A0G = xj;
        this.A0I = m9;
        this.A0E = super.A09.A0a().size();
        this.A0M = new IB(this.A0G);
        this.A0N = z;
        this.A0L = new C0726Oz(this.A0G, EnumC0724Ox.A04, this);
        this.A0K = new C0726Oz(this.A0G, EnumC0724Ox.A03, this);
        this.A0J = new O0(this.A0G, jc, getAudienceNetworkListener(), this.A04, null, this.A0B, this.A0H).A0J();
        this.A0F = s1.A0M().A01();
    }

    private void A08() {
        if (this.A00 > 0) {
            this.A0K.setVisibility(0);
        } else {
            this.A0K.setVisibility(8);
        }
        if (this.A00 != this.A0E - 1) {
            C0726Oz oz = this.A0L;
            String[] strArr = A0P;
            if (strArr[7].charAt(14) != strArr[1].charAt(14)) {
                A0P[0] = "6a52QfyEa3IWfhbHGHqjZ8J10HxaoQoC";
                oz.setVisibility(0);
                return;
            }
            throw new RuntimeException();
        }
        this.A0L.setVisibility(8);
    }

    private void A09() {
        if (this.A08 != null && this.A06 != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (getResources().getConfiguration().orientation != 1 || this.A0N) {
                String[] strArr = A0P;
                if (strArr[3].charAt(28) != strArr[2].charAt(28)) {
                    A0P[5] = "";
                    layoutParams.addRule(12);
                    layoutParams.setMargins(0, 0, 0, A0R);
                } else {
                    throw new RuntimeException();
                }
            } else {
                layoutParams.addRule(3, this.A06.getId());
                layoutParams.setMargins(0, A0R, 0, 0);
            }
            layoutParams.addRule(14);
            this.A08.setLayoutParams(layoutParams);
        }
    }

    private void A0A() {
        int min;
        int i;
        int childWidth;
        int i2 = getResources().getConfiguration().orientation;
        int i3 = C0632Lh.A02.widthPixels;
        int i4 = C0632Lh.A02.heightPixels;
        if (i2 != 1 || this.A0N) {
            min = Math.min(i4, i3);
            i = (i3 - min) / 2;
            if (A0P[6].charAt(5) != 56) {
                throw new RuntimeException();
            }
            A0P[0] = "vVHtlTOlEtS8vqhFAg4CI6O8BOyolSSP";
            childWidth = i;
            A08();
        } else {
            min = Math.min(i3 - (A0R * 4), i4 / 2);
            i = (i3 - min) / 8;
            childWidth = i * 4;
            this.A0K.setVisibility(8);
            this.A0L.setVisibility(8);
        }
        C01862m r0 = this.A06;
        if (r0 != null) {
            RG fullscreenCarouselRecyclerViewAdapter = r0.getFullscreenCarouselRecyclerViewAdapter();
            if (fullscreenCarouselRecyclerViewAdapter != null) {
                fullscreenCarouselRecyclerViewAdapter.A0G(min, i, childWidth);
                fullscreenCarouselRecyclerViewAdapter.A08();
                return;
            }
            return;
        }
        Log.e(A06(61, 17, 7), A06(0, 28, 11));
        onDestroy();
    }

    private final void A0D() {
        C01862m r0 = this.A06;
        if (r0 != null) {
            r0.removeAllViews();
            this.A06 = null;
        }
        C0689Nn nn = this.A08;
        if (nn != null) {
            nn.removeAllViews();
            this.A08 = null;
        }
        RelativeLayout relativeLayout = this.A03;
        if (A0P[5].length() != 0) {
            throw new RuntimeException();
        }
        A0P[5] = "";
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
    }

    private final void A0E(int i, @Nullable Bundle bundle) {
        boolean z;
        boolean z2;
        int i2;
        if (i == 1) {
            z = true;
        } else {
            z = false;
        }
        this.A03 = new RelativeLayout(getContext());
        XJ xj = this.A0G;
        if (this.A0D.get(0).A03().A0F().A00() == AnonymousClass1E.A05) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.A07 = new C0971Yn(xj, 0, z2, this.A0F, A06(92, 37, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD), getAdEventManager(), this.A0I, this.A0B, this.A0H);
        AbstractC0681Nf nf = this.A07;
        if (z) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        nf.A0E(i2);
        this.A03.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.A0A = new RF(this);
        this.A0B = new QE(this, 1, new WeakReference(this.A0A), this.A0G);
        this.A0B.A0X(this.A01);
        this.A0B.A0Y(this.A02);
        this.A06 = new C01862m(this.A0G);
        C0632Lh.A0N(this.A06);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        this.A09 = new RH(this.A06, i, this.A0D, this.A0B, bundle);
        if (this.A0C != null) {
            this.A06.setAdapter(new RG(this.A0G, this.A0D, this.A04, super.A0B, this.A05, this.A0B, this.A0H, getAudienceNetworkListener(), this.A0C, this.A09, this.A0M));
            A0A();
        } else if (A0P[0].charAt(17) != 'P') {
            A0P[0] = "NfYHGrhQ0FoJVW2oKT7qK73ysSpCYH5c";
            Log.e(A06(61, 17, 7), A06(0, 28, 11));
            onDestroy();
        } else {
            throw new RuntimeException();
        }
        A0G(this.A09);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        this.A03.addView(this.A06, layoutParams);
        A09();
        this.A03.addView(this.A08);
        this.A07.setTitleMaxLines(3);
        this.A07.A0B();
        this.A07.A0A();
        this.A03.addView(this.A07, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(9);
        layoutParams3.addRule(15);
        int i3 = A0Q;
        layoutParams3.width = i3;
        layoutParams3.height = i3;
        layoutParams3.setMargins(A0R, 0, 0, 0);
        layoutParams4.addRule(11);
        layoutParams4.addRule(15);
        int i4 = A0Q;
        layoutParams4.width = i4;
        layoutParams4.height = i4;
        layoutParams4.setMargins(0, 0, A0R, 0);
        this.A03.addView(this.A0K, layoutParams3);
        this.A03.addView(this.A0L, layoutParams4);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(12);
        this.A03.addView(this.A0M, layoutParams5);
        A0Z(this.A03, true, i);
        removeView(findViewById(C0697Nv.A00));
        if (!J4.A1r(this.A0G)) {
            C0697Nv.A00(this.A0J.A05(), this, this.A04.A0N().A0E().A07());
        } else if (A0P[4].length() != 17) {
            A0P[5] = "";
            C0632Lh.A0P(this, -1);
        } else {
            throw new RuntimeException();
        }
        if (this.A0C != null) {
            this.A07.setInfo(this.A04.A0N().A0F(), this.A04.A0N().A0G(), this.A0C, super.A09.A0Q().A01(), null);
        }
    }

    private void A0F(S1 s1) {
        this.A04 = s1;
        this.A0C = this.A04.A0T();
        this.A01 = this.A04.A0H();
        this.A02 = this.A04.A0I();
        List<AnonymousClass19> A0a = this.A04.A0a();
        this.A0D = new ArrayList(A0a.size());
        for (int i = 0; i < A0a.size(); i++) {
            this.A0D.add(new C0720Ot(i, A0a.size(), A0a.get(i)));
        }
    }

    private void A0G(RH rh) {
        new C0470Er().A0I(this.A06);
        rh.A0b(new RE(this));
        this.A08 = new C0689Nn(this.A0G, super.A05.A01(), this.A0D.size());
        C0632Lh.A0N(this.A08);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, A0S);
        layoutParams.setMargins(0, A0T, 0, 0);
        this.A08.setLayoutParams(layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1106bb
    public final boolean A0f() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void A8J(Intent intent, @Nullable Bundle bundle, AnonymousClass50 r6) {
        S1 s1 = (S1) intent.getSerializableExtra(A06(78, 14, 48));
        A0a(r6);
        if (s1 != null) {
            A0F(s1);
        }
        A0E(r6.A0I().getResources().getConfiguration().orientation, bundle);
        r6.A0L(new RD(this, r6));
        int A032 = super.A09.A0N().A0E().A03();
        if (A032 > 0) {
            A0Y(A032);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA, com.facebook.ads.redexgen.X.AbstractC1106bb
    public final void AB2(boolean z) {
        super.AB2(z);
        RH rh = this.A09;
        if (rh != null) {
            rh.A0S();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA, com.facebook.ads.redexgen.X.AbstractC1106bb
    public final void ABR(boolean z) {
        super.ABR(z);
        RH rh = this.A09;
        if (rh != null) {
            rh.A0T();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0725Oy
    public final void ABl(EnumC0724Ox ox) {
        int i;
        C01862m r0 = this.A06;
        if (r0 != null) {
            TB layoutManager = r0.getLayoutManager();
            if (ox == EnumC0724Ox.A03) {
                int i2 = this.A00;
                if (i2 <= 0) {
                    i = 0;
                } else {
                    i = i2 - 1;
                }
                layoutManager.A22(this.A06, new AnonymousClass4Z(), i);
            } else {
                int i3 = this.A00;
                int i4 = this.A0E;
                if (i3 >= i4 - 1) {
                    i = i4 - 1;
                } else {
                    i = i3 + 1;
                }
                layoutManager.A22(this.A06, new AnonymousClass4Z(), i);
            }
            setUpLayoutForCardAtIndex(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ADT(Bundle bundle) {
        RH rh = this.A09;
        if (rh != null) {
            rh.A0Z(bundle);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1106bb
    @ToolbarActionView$ToolbarActionMode
    public int getCloseButtonStyle() {
        return 0;
    }

    public final void onConfigurationChanged(Configuration configuration) {
        ADT(new Bundle());
        super.onConfigurationChanged(configuration);
        A0A();
        C01862m r1 = this.A06;
        if (!(r1 == null || this.A09 == null)) {
            r1.getLayoutManager().A1u(Math.max(this.A00, 0));
            this.A09.A0W(Math.max(this.A00, 0));
        }
        A09();
        AbstractC0681Nf nf = this.A07;
        if (nf != null) {
            nf.A0E(configuration.orientation);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA, com.facebook.ads.redexgen.X.AbstractC1106bb
    public final void onDestroy() {
        super.onDestroy();
        if (!TextUtils.isEmpty(this.A0C)) {
            super.A0B.A8S(this.A0C, new C0678Nc().A04(this.A0B).A03(this.A0H).A06());
        }
        A0D();
        this.A0B.A0W();
        this.A0B = null;
        this.A0A = null;
        this.A0D = null;
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A0H.A07(motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* access modifiers changed from: private */
    public void setUpLayoutForCardAtIndex(int i) {
        AbstractC0681Nf nf;
        C0689Nn nn = this.A08;
        if (nn != null) {
            nn.A01(i);
        }
        AnonymousClass19 A0O2 = this.A04.A0O(i);
        if (A0O2 != null && this.A00 != i) {
            this.A00 = i;
            if (getResources().getConfiguration().orientation == 2 || J4.A1n(this.A0G)) {
                A08();
            }
            removeView(findViewById(C0697Nv.A00));
            if (J4.A1r(this.A0G)) {
                C0632Lh.A0P(this, -1);
            } else {
                C0697Nv.A00(this.A0J.A05(), this, A0O2.A0E().A07());
            }
            String str = this.A0C;
            if (A0P[0].charAt(17) != 'P') {
                A0P[6] = "kFih28rpO37RepskuaJrvvoNb65qRIkh";
                if (str == null || (nf = this.A07) == null) {
                    Log.e(A06(61, 17, 7), A06(28, 33, 6));
                } else {
                    nf.setInfo(A0O2.A0F(), A0O2.A0G(), this.A0C, super.A09.A0Q().A01(), null);
                }
                if (!TextUtils.isEmpty(A0O2.A0E().A08())) {
                    this.A0M.setVisibility(0);
                } else {
                    this.A0M.setVisibility(8);
                }
            } else {
                throw new RuntimeException();
            }
        }
    }
}
