package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.9m  reason: invalid class name and case insensitive filesystem */
public final class C03559m extends AbstractC0970Ym implements MT {
    public static byte[] A0D;
    public static String[] A0E;
    @Nullable
    public View A00;
    public View A01;
    @Nullable
    public ImageView A02;
    public XJ A03;
    @Nullable
    public M4 A04;
    public P9 A05;
    @Nullable
    public C0536Hi A06;
    public boolean A07 = false;
    public final FrameLayout A08;
    public final M9 A09;
    public final PD A0A;
    public final IB A0B;
    public final AtomicBoolean A0C = new AtomicBoolean(false);

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 13);
        }
        return new String(copyOfRange);
    }

    public static void A0E() {
        A0D = new byte[]{-53, -60, -39, -56, -30, -42, -41, -60, -43, -41, -52, -47, -54, -30, -60, -47, -52, -48, -60, -41, -52, -46, -47, -42, -30, -45, -49, -60, -36, -56, -57, -51, -48, -44, -58, -32, -45, -58, -40, -62, -45, -59, -32, -44, -60, -45, -58, -58, -49, -32, -44, -55, -48, -40, -49, -53, -75, -57, -45, -71, -62, -72, -45, -73, -75, -58, -72, -45, -57, -68, -61, -53, -62, -86, -74, -76, 117, -83, -88, -86, -84, -87, -74, -74, -78, 117, -88, -85, -70, 117, -80, -75, -69, -84, -71, -70, -69, -80, -69, -80, -88, -77, 117, -83, -80, -75, -80, -70, -81, -90, -88, -86, -69, -80, -67, -80, -69, -64};
    }

    public static void A0F() {
        A0E = new String[]{"QUFYIN7o4MSHfMbcaqgxGqdg8oING", "Qixa92rp7KQSHPhBId3L5m9SXc6gxNRP", "TUKhftCqFUFv9xNbjbPA3CLhBIkdW", "aNiMBj1VMT3xct4Co4hWzqTsg", "QYSCqyZ4CS", "VjIbmM2G6pRRrYhuKIf6SOzC6eQUF7eo", "KFJXOgKoK7JNlCBWMf", "dachHr6cLZKwbIDqTeRsc0FgbmZCJ"};
    }

    static {
        A0F();
        A0E();
    }

    public C03559m(O1 o1) {
        super(o1, false);
        this.A03 = o1.A05();
        this.A04 = o1.A08();
        this.A01 = new View(this.A03);
        C0632Lh.A0N(this.A01);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
        layoutParams.addRule(13);
        addView(this.A01, layoutParams);
        A09();
        this.A09 = o1.A09();
        C0697Nv.A00(o1.A05(), this, getAdInfo().A0E().A07());
        this.A0A = A02(o1);
        getAdDetailsView().bringToFront();
        this.A0B = A04(o1);
        A0d();
        this.A05 = new P9(this.A03, o1.A06(), getAdDataBundle());
        this.A08 = new FrameLayout(getContext());
        if (!J4.A1Y(this.A03)) {
            A07();
        }
    }

    private PD A02(O1 o1) {
        PD pd = (PD) o1.A02();
        int A0c = A0c(o1.A08());
        ImageView imageView = (ImageView) o1.A03();
        imageView.setPadding(AbstractC0970Ym.A0D, AbstractC0970Ym.A0D, AbstractC0970Ym.A0D, AbstractC0970Ym.A0D);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AbstractC0970Ym.A0E, AbstractC0970Ym.A0E);
        layoutParams.setMargins(0, A0c, AbstractC0970Ym.A0C, 0);
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        if (J4.A1U(this.A03)) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            AbstractC0681Nf adDetailsView = getAdDetailsView();
            adDetailsView.setLayoutParams(adDetailsView.A0D(this.A01));
            if (getResources().getConfiguration().orientation == 1) {
                layoutParams2.addRule(13);
            } else {
                layoutParams2.addRule(0, this.A01.getId());
                layoutParams2.setMargins(0, 0, 0, 0);
            }
            this.A02 = imageView;
            addView(pd, layoutParams2);
            addView(imageView, layoutParams);
        } else {
            RelativeLayout.LayoutParams videoViewParams = new RelativeLayout.LayoutParams(-1, -1);
            videoViewParams.addRule(13);
            addView(pd, videoViewParams);
            pd.addView(imageView, layoutParams);
        }
        return pd;
    }

    private IB A04(O1 o1) {
        IB A0A2 = o1.A0A();
        A0A2.A09(-1, AbstractC0970Ym.A09);
        if (!J4.A1U(this.A03)) {
            A0A2.setPadding(AbstractC0970Ym.A0H, AbstractC0970Ym.A0H, AbstractC0970Ym.A0H, AbstractC0970Ym.A0H);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, AbstractC0970Ym.A0G);
            layoutParams.addRule(12);
            addView(A0A2, layoutParams);
        } else if (getResources().getConfiguration().orientation == 1) {
            setUpPortraitAdDetails(A0A2);
        } else {
            setUpLandscapeAdDetails(A0A2);
        }
        return A0A2;
    }

    private void A07() {
        String title;
        RewardData A0L = getAdDataBundle().A0L();
        if (A0L == null) {
            title = getAdDataBundle().A0P().A06();
        } else {
            title = getAdDataBundle().A0P().A07(A0L.getCurrency(), A0L.getQuantity());
        }
        MI mi = new MI(getAdContextWrapper(), -1, -16777216, title, null, getAdDataBundle().A0P().A05(), getAdDataBundle().A0P().A04(), C0641Lq.A01(EnumC0640Lp.REWARD_ICON));
        mi.A02.setOnClickListener(new O2(this));
        mi.A01.setOnClickListener(new O3(this));
        this.A08.addView(mi, new RelativeLayout.LayoutParams(-1, -1));
    }

    private void A08() {
        if (getAnimationPlugin() != null) {
            getAnimationPlugin().A0F();
            this.A0A.A0a(getAnimationPlugin());
        }
    }

    private void A09() {
        M4 m4 = this.A04;
        if (m4 != null) {
            this.A06 = new C0536Hi(m4, HttpStatus.SC_BAD_REQUEST, -m4.getToolbarHeight(), 0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    private void A0A() {
        new JJ(getAdDataBundle().A0T(), getAdEventManager()).A03(JI.A0n, null);
        if (getAdInfo().A0O()) {
            this.A0C.set(true);
            C0632Lh.A0Y(this);
            C0632Lh.A0K(this.A0A);
            C0632Lh.A0e(this.A0A, this.A0B, this.A08, this.A00);
            C0632Lh.A0O(this.A04);
            P9 p9 = this.A05;
            View$OnClickListenerC1014a7 ctaButton = getCtaButton();
            String[] strArr = A0E;
            if (strArr[2].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0E[3] = "FxfG3zWETYKhpCEsP1aqGpvXk";
            Pair<P8, View> A032 = p9.A03(ctaButton);
            this.A00 = (View) A032.second;
            int i = O4.A00[((P8) A032.first).ordinal()];
            if (i == 1) {
                getAdDetailsView().setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                if (J4.A1U(this.A03)) {
                    ImageView imageView = this.A02;
                    if (imageView != null) {
                        String[] strArr2 = A0E;
                        if (strArr2[2].length() != strArr2[0].length()) {
                            String[] strArr3 = A0E;
                            strArr3[7] = "RenllHEOEhUEXuJGVHYKXOkiOEbWR";
                            strArr3[4] = "Ez9H6xpGZ9";
                            imageView.setVisibility(8);
                        } else {
                            String[] strArr4 = A0E;
                            strArr4[2] = "KicgKgsrHX1lzbvbA0fubHpFySDNt";
                            strArr4[0] = "T8uqPR7oq7Ja3xFAu7WdainZogpwN";
                            imageView.setVisibility(8);
                        }
                    }
                    getAdDetailsView().setLayoutParams(getAdDetailsView().A0C(this.A01));
                    if (getResources().getConfiguration().orientation == 1) {
                        layoutParams.setMargins(0, A0c(this.A04), 0, AbstractC0699Nx.A08);
                        layoutParams.addRule(2, getAdDetailsView().getId());
                    } else {
                        layoutParams.setMargins(0, AbstractC0699Nx.A08, 0, AbstractC0699Nx.A08);
                        layoutParams.addRule(0, this.A01.getId());
                    }
                } else {
                    layoutParams.setMargins(0, A0c(this.A04), 0, 0);
                    layoutParams.addRule(2, getAdDetailsView().getId());
                }
                addView(this.A00, layoutParams);
            } else if (i == 2) {
                C0632Lh.A0e(getAdDetailsView());
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams2.setMargins(AbstractC0970Ym.A0F, AbstractC0970Ym.A0F, AbstractC0970Ym.A0F, AbstractC0970Ym.A0F);
                addView(this.A00, layoutParams2);
            }
        }
    }

    private void A0B() {
        M4 m4;
        if (!this.A0A.A0g()) {
            this.A0A.A0c(false, false, 11);
        }
        if (!J4.A1Y(this.A03) || (m4 = this.A04) == null) {
            M4 m42 = this.A04;
            if (m42 != null) {
                C0632Lh.A0K(m42);
            }
            C0632Lh.A0Q(this.A0A, 4);
            C0632Lh.A0Q(this.A0B, 4);
            C0632Lh.A0Q(getAdDetailsView(), 4);
            addView(this.A08, new RelativeLayout.LayoutParams(-1, -1));
        } else {
            m4.A06(this);
        }
        this.A07 = true;
    }

    /* access modifiers changed from: private */
    public void A0C() {
        if (getAdInfo().A0O()) {
            this.A0A.A0X(PK.A07);
            return;
        }
        M9 m9 = this.A09;
        if (A0E[3].length() != 25) {
            throw new RuntimeException();
        }
        A0E[1] = "Zliat4mU5XNL19AyOd3jcD22cYPYEARz";
        m9.A3t(A06(73, 45, 58));
    }

    private void A0D() {
        C0536Hi hi = this.A06;
        if (hi != null) {
            hi.A3P(true, false);
        }
        if (getAdDetailsAnimation() != null) {
            getAdDetailsAnimation().A3P(true, false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0I(C03167w r1) {
        super.A0I(r1);
        A0A();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0J(AnonymousClass7s r6) {
        super.A0J(r6);
        int duration = this.A0A.getDuration() - r6.A00();
        if (getAnimationPlugin() == null) {
            return;
        }
        if (A0E[1].charAt(18) != 51) {
            throw new RuntimeException();
        }
        A0E[5] = "xiBnzSw2W6K3rvYkwdUGMYXv5m3ZqRWR";
        if (duration < 3000 && getAnimationPlugin().A0K()) {
            getAnimationPlugin().A0G();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0U() {
        super.A0U();
        A08();
        this.A04 = null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0970Ym, com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0Z(AnonymousClass19 r5, String str, double d, @Nullable Bundle bundle) {
        super.A0Z(r5, str, d, bundle);
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!bundle.getBoolean(A06(0, 31, 118), false)) {
            A0D();
        }
        if (bundle.getBoolean(A06(55, 18, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT), false)) {
            A0A();
        }
        if (bundle.getBoolean(A06(31, 24, 116), false)) {
            A0B();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0a() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0b(boolean z) {
        if (z && !this.A07) {
            boolean z2 = this.A0C.get();
            String[] strArr = A0E;
            if (strArr[7].length() != strArr[4].length()) {
                String[] strArr2 = A0E;
                strArr2[2] = "IfEmWBIDBUNw5tL7YhS4lNzldGhzw";
                strArr2[0] = "8CoNQoXVMdzgwU1krh95bRLsSKKH4";
                if (!z2) {
                    A0B();
                    return true;
                }
            }
            throw new RuntimeException();
        }
        boolean A0O = getAdInfo().A0O();
        if (A0E[5].charAt(17) != 'k') {
            A0E[1] = "YRUjLZqfjvY5EOxU383ujQcW8j7gUgor";
            if (!A0O || this.A0C.get()) {
                return false;
            }
            this.A0A.A0X(PK.A08);
            return true;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0970Ym
    public final void A0d() {
        super.A0d();
        if (getAnimationPlugin() != null) {
            getAnimationPlugin().A8K(this.A0A);
        }
    }

    public final boolean A0e() {
        return getAdInfo().A0O();
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void A9M() {
        this.A07 = false;
        this.A0A.A0Y(PO.A03, 15);
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void A9N() {
        A0C();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    @ToolbarActionView$ToolbarActionMode
    public int getCloseButtonStyle() {
        if (!A0e() || this.A0C.get()) {
            return super.getCloseButtonStyle();
        }
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0970Ym, com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (J4.A1U(this.A03)) {
            boolean z = true;
            if (configuration.orientation != 1) {
                z = false;
            }
            if (!this.A0C.get()) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                if (z) {
                    setUpPortraitAdDetails(this.A0B);
                    layoutParams.addRule(13);
                } else {
                    setUpLandscapeAdDetails(this.A0B);
                    layoutParams.addRule(0, this.A01.getId());
                    layoutParams.setMargins(0, 0, 0, 0);
                }
                PD pd = this.A0A;
                String[] strArr = A0E;
                if (strArr[7].length() != strArr[4].length()) {
                    A0E[1] = "DO7In235juv9PXUKV934zSaX5akZYCRG";
                    pd.setLayoutParams(layoutParams);
                    return;
                }
                throw new RuntimeException();
            } else if (this.A00 != null) {
                ImageView imageView = this.A02;
                if (A0E[5].charAt(17) != 'k') {
                    A0E[5] = "g7uXpIwsYCOJvIzf4Zz9qplJQO82wATZ";
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                    getAdDetailsView().setVisibility(0);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                    getAdDetailsView().setLayoutParams(getAdDetailsView().A0C(this.A01));
                    if (z) {
                        layoutParams2.setMargins(0, A0c(this.A04), 0, AbstractC0699Nx.A08);
                        layoutParams2.addRule(2, getAdDetailsView().getId());
                    } else {
                        layoutParams2.setMargins(0, AbstractC0699Nx.A08, 0, AbstractC0699Nx.A08);
                        layoutParams2.addRule(0, this.A01.getId());
                    }
                    this.A00.setLayoutParams(layoutParams2);
                    return;
                }
                throw new RuntimeException();
            }
        }
    }

    private void setUpLandscapeAdDetails(IB ib) {
        getAdDetailsView().removeAllViews();
        removeView(ib);
        getAdDetailsView().setLayoutParams(getAdDetailsView().A0D(this.A01));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, C1174cj.A0G);
        layoutParams.addRule(12);
        addView(ib, layoutParams);
    }

    private void setUpPortraitAdDetails(IB ib) {
        getAdDetailsView().removeAllViews();
        removeView(ib);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, C1174cj.A0H);
        layoutParams.setMargins(0, 0, 0, C1174cj.A0I);
        getAdDetailsView().addView(ib, layoutParams);
        getAdDetailsView().setLayoutParams(getAdDetailsView().A0D(this.A01));
    }
}
