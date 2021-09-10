package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardData;
import com.facebook.proguard.annotations.DoNotStrip;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.ah  reason: case insensitive filesystem */
public final class C1050ah extends RelativeLayout implements MA, MT {
    public static byte[] A0k;
    public static String[] A0l;
    public static final int A0m = ((int) (C0632Lh.A01 * 250.0f));
    public static final int A0n = ((int) (C0632Lh.A01 * 48.0f));
    public static final int A0o = ((int) (C0632Lh.A01 * 10.0f));
    public static final int A0p = ((int) (C0632Lh.A01 * 18.0f));
    public static final int A0q = ((int) (C0632Lh.A01 * 28.0f));
    public static final int A0r = ((int) (C0632Lh.A01 * 16.0f));
    public static final RelativeLayout.LayoutParams A0s = new RelativeLayout.LayoutParams(-1, -1);
    public static final int A0t = ((int) (C0632Lh.A01 * 4.0f));
    public static final int A0u = AnonymousClass2L.A01(-1, 77);
    public static final int A0v = AnonymousClass2L.A01(A0u, 90);
    public static final int A0w = ((int) (C0632Lh.A01 * 26.0f));
    public static final int A0x = ((int) (C0632Lh.A01 * 12.0f));
    public int A00;
    public int A01 = -1;
    @Nullable
    public View A02;
    public View A03;
    @Nullable
    public M4 A04;
    @Nullable
    public M9 A05;
    @Nullable
    public AbstractC0681Nf A06;
    public P9 A07;
    public PA A08;
    @Nullable
    public PD A09;
    @Nullable
    public PO A0A;
    public C0587Jj A0B;
    @Nullable
    public C0554Ia A0C;
    @Nullable
    public AnonymousClass7L A0D;
    @Nullable
    public C0549Hv A0E;
    public C0536Hi A0F;
    public boolean A0G = false;
    public boolean A0H = false;
    public boolean A0I;
    public boolean A0J = false;
    public boolean A0K = false;
    public final int A0L;
    public final Handler A0M = new Handler(Looper.getMainLooper());
    public final Handler A0N = new Handler();
    public final RelativeLayout A0O;
    public final AnonymousClass1I A0P;
    public final S5 A0Q;
    public final AbstractC02494y A0R = new C1057ao(this);
    public final XJ A0S;
    public final JC A0T;
    public final JJ A0U;
    public final LV A0V;
    public final C0625La A0W = new C0625La();
    public final C03177y A0X;
    public final AbstractC0629Le A0Y = new C0380Am(this);
    public final L4 A0Z = new AX(this);
    public final KQ A0a = new AP(this);
    public final KL A0b = new AR(this);
    public final KJ A0c = new AN(this);
    public final IS A0d;
    public final IB A0e;
    @DoNotStrip
    public final QD A0f;
    public final QE A0g;
    public final AtomicBoolean A0h = new AtomicBoolean(false);
    public final boolean A0i;
    public final boolean A0j;

    public static String A0E(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0k, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 83);
        }
        return new String(copyOfRange);
    }

    public static void A0S() {
        A0k = new byte[]{29, 16, 11, 12, 22};
    }

    public static void A0T() {
        A0l = new String[]{"vsdEBwVgd8xuD4acIyCMTbEVgnYoxSzn", "ksTg5", "PS2LqNPtHz7Bj2TqhJ7TZjs4LL9ATMRr", "qSNvo2HWKXxTUkx77WQBoFZa4uZWek8Z", "kV", "kWwRq1ENXLXBTFEhopAwPvilnneCtOoi", "1j3TsCoxoqnujqaJP1b9vcmgNjtc01PK", "DySaXvgrVXG8E60xfPO0YxcmTr0eS0sa"};
    }

    static {
        A0T();
        A0S();
    }

    public C1050ah(XJ xj, JC jc, PD pd, M9 m9, S5 s5) {
        super(xj);
        float f;
        this.A0S = xj;
        this.A0i = false;
        this.A0I = J4.A19(this.A0S);
        this.A0j = J4.A1o(this.A0S);
        this.A05 = m9;
        this.A0T = jc;
        this.A0Q = s5;
        this.A0U = new JJ(this.A0Q.A0T(), this.A0T);
        this.A09 = pd;
        this.A09.setFunnelLoggingHandler(this.A0U);
        this.A0P = this.A0Q.A0M().A01();
        this.A0O = new RelativeLayout(xj);
        this.A0e = new IB(this.A0S);
        this.A0d = new IS(this.A0S, this.A0U);
        AnonymousClass1C A0E2 = this.A0Q.A0N().A0E();
        this.A0L = Math.min(A0E2.A02(), A0E2.A04());
        PD pd2 = this.A09;
        if (A0E2.A09()) {
            f = 0.0f;
        } else {
            f = 1.0f;
        }
        pd2.setVolume(f);
        this.A03 = new View(this.A0S);
        C0632Lh.A0N(this.A03);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
        layoutParams.addRule(13);
        this.A03.setLayoutParams(layoutParams);
        this.A0f = new C1053ak(this);
        this.A0g = new QE(this, 1, new WeakReference(this.A0f), xj);
        this.A0g.A0X(250);
        this.A0X = new C03177y(this.A0S, this.A0T, this.A09, this.A0Q.A0T());
        this.A07 = new P9(this.A0S, this.A0T, this.A0Q);
        this.A08 = new PA(this.A0S, new C1045ac(), this.A0Q.A0Z(), this.A05);
        new AsyncTaskC1017aA(this, xj).A08(A0E2.A07());
        this.A09.setVideoProgressReportIntervalMs(s5.A0G());
        this.A09.getEventBus().A04(this.A0Y, this.A0Z, this.A0b, this.A0a, this.A0c);
        xj.A0A().A2q();
        this.A0V = new LV(this);
        this.A0V.A05(LU.A03);
    }

    private void A0G() {
        XJ xj = this.A0S;
        if (xj != null) {
            FrameLayout frameLayout = new FrameLayout(xj);
            frameLayout.setLayoutParams(A0s);
            C0632Lh.A0P(frameLayout, 1711276032);
            this.A0O.addView(frameLayout, 0);
        }
    }

    /* access modifiers changed from: private */
    public void A0H() {
        M9 m9 = this.A05;
        if (m9 != null) {
            m9.A3t(PR.A08.A02());
        }
    }

    /* access modifiers changed from: private */
    public void A0I() {
        this.A0W.A06();
        M9 m9 = this.A05;
        if (m9 != null) {
            m9.A3t(PR.A0A.A02());
        }
    }

    private void A0J() {
        AbstractC0681Nf nf = this.A06;
        if (nf != null) {
            nf.removeAllViews();
            this.A0O.removeView(this.A0e);
            AbstractC0681Nf nf2 = this.A06;
            nf2.setLayoutParams(nf2.A0D(this.A03));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, C1174cj.A0G);
            layoutParams.addRule(12);
            this.A0O.addView(this.A0e, layoutParams);
        }
    }

    private void A0K() {
        AbstractC0681Nf nf = this.A06;
        if (nf != null) {
            nf.removeAllViews();
            this.A0O.removeView(this.A0e);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, C1174cj.A0H);
            layoutParams.setMargins(0, 0, 0, C1174cj.A0I);
            this.A06.addView(this.A0e, layoutParams);
            AbstractC0681Nf nf2 = this.A06;
            nf2.setLayoutParams(nf2.A0D(this.A03));
        }
    }

    /* access modifiers changed from: private */
    public void A0L() {
        this.A0J = true;
        C0632Lh.A0Y(this.A0O);
        PD pd = this.A09;
        if (pd != null) {
            pd.A0U();
            this.A09.setVisibility(4);
        }
        M4 m4 = this.A04;
        if (m4 != null) {
            m4.setPageDetailsVisible(false);
            this.A04.setToolbarActionMode(0);
            this.A04.setToolbarActionMessage(A0E(0, 0, 87));
            C0632Lh.A0e(this.A09, this.A0d, this.A0e);
            Pair<P8, View> A032 = this.A07.A03(getCTAButton());
            this.A02 = (View) A032.second;
            int i = MO.A00[((P8) A032.first).ordinal()];
            if (i == 1) {
                if (J4.A1U(this.A0S) && this.A06 != null) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    AbstractC0681Nf nf = this.A06;
                    nf.setLayoutParams(nf.A0C(this.A03));
                    if (getResources().getConfiguration().orientation == 1) {
                        layoutParams.setMargins(0, this.A04.getToolbarHeight(), 0, A0o);
                        layoutParams.addRule(2, this.A06.getId());
                    } else {
                        int i2 = A0o;
                        layoutParams.setMargins(0, i2, 0, i2);
                        layoutParams.addRule(0, this.A03.getId());
                    }
                    this.A0O.addView((View) A032.second, layoutParams);
                } else if (!this.A0j) {
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams2.setMargins(0, this.A04.getToolbarHeight(), 0, 0);
                    this.A0O.addView((View) A032.second, layoutParams2);
                    AbstractC0681Nf nf2 = this.A06;
                    if (nf2 != null) {
                        int id = nf2.getId();
                        if (A0l[4].length() != 2) {
                            throw new RuntimeException();
                        }
                        A0l[2] = "unAGmyqFwvprojiFSqdEJubKYqzfvtr5";
                        layoutParams2.addRule(2, id);
                    }
                } else {
                    this.A0O.addView((View) A032.second);
                }
                AbstractC0681Nf nf3 = this.A06;
                if (nf3 != null) {
                    nf3.setVisibility(0);
                    this.A06.A0F(true);
                }
                A0Q();
                this.A0W.A06();
            } else if (i == 2) {
                C0632Lh.A0e(this.A06);
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                int i3 = A0r;
                layoutParams3.setMargins(i3, i3, i3, i3);
                this.A0O.addView((View) A032.second, layoutParams3);
                this.A0W.A06();
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0176, code lost:
        if (r4 != false) goto L_0x0178;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A0M() {
        /*
        // Method dump skipped, instructions count: 596
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1050ah.A0M():void");
    }

    /* JADX INFO: Multiple debug info for r0v17 android.view.ViewGroup$LayoutParams: [D('layoutParams' android.widget.RelativeLayout$LayoutParams), D('messageAndTwoButtonView' com.facebook.ads.redexgen.X.MI)] */
    /* access modifiers changed from: private */
    public void A0N() {
        String A072;
        if (J4.A1Y(this.A0S)) {
            this.A04.A06(this);
            return;
        }
        RewardData A0L2 = this.A0Q.A0L();
        if (A0L2 == null) {
            A072 = this.A0Q.A0P().A06();
        } else {
            A072 = this.A0Q.A0P().A07(A0L2.getCurrency(), A0L2.getQuantity());
        }
        MI mi = new MI(this.A0S, -1, -16777216, A072, null, this.A0Q.A0P().A05(), this.A0Q.A0P().A04(), C0641Lq.A01(EnumC0640Lp.REWARD_ICON));
        mi.A02.setOnClickListener(new MM(this, mi));
        mi.A01.setOnClickListener(new MN(this, mi));
        C0632Lh.A0K(this.A0O);
        C0632Lh.A0K(this.A04);
        C0632Lh.A0P(mi, 1711276032);
        mi.setClickable(true);
        PD pd = this.A09;
        if (pd != null && !pd.A0g()) {
            this.A09.A0c(false, false, 16);
        }
        addView(mi, new RelativeLayout.LayoutParams(-1, -1));
        mi.bringToFront();
    }

    private void A0O() {
        if (this.A0Q.A0N().A0P() && this.A05 != null) {
            C0711Ok A0B2 = new C0710Oi(this.A0S, this.A0Q.A0N().A0F(), this.A0Q.A0Q()).A08(this.A0Q.A0M().A01()).A0B();
            JL.A04(A0B2, this.A0U, JI.A0U);
            this.A05.A3L(A0B2, 1, A0s);
            A0B2.bringToFront();
            A0B2.A04(new C1051ai(this));
            this.A0S.A0A().A2b();
        }
    }

    /* access modifiers changed from: private */
    public void A0P() {
        PD pd = this.A09;
        if (pd != null) {
            pd.A0Y(PO.A03, 22);
            postDelayed(new C1073b4(this), (long) J4.A0I(getContext()));
        }
    }

    private void A0Q() {
        P9 p9;
        boolean z;
        int i;
        int i2;
        int i3;
        int toolbarHeight;
        if (this.A0j && this.A02 != null && (p9 = this.A07) != null && p9.A04() == P8.A04) {
            int i4 = -1;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            if (this.A00 == 2) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                i = getToolbarHeight();
            } else {
                i = A0o;
            }
            if (!z) {
                i2 = 0;
            } else {
                i2 = A0o;
            }
            layoutParams.setMargins(0, i, 0, i2);
            C0732Pf pf = (C0732Pf) ((C0469Eq) this.A02).getAdapter();
            pf.A08();
            pf.A0G(this.A00, this.A0j);
            AbstractC0681Nf nf = this.A06;
            if (nf != null) {
                if (z) {
                    nf.A0E(this.A00);
                } else {
                    int id = nf.getId();
                    String[] strArr = A0l;
                    if (strArr[5].charAt(31) != strArr[3].charAt(31)) {
                        String[] strArr2 = A0l;
                        strArr2[0] = "LwDo8VVUwsuJrlNU8QrzJ41vhXhK4VzE";
                        strArr2[7] = "9aOkUkxqZvQgWgLWjLrmfK9aYM0kVuqh";
                        layoutParams.addRule(2, id);
                    } else {
                        throw new RuntimeException();
                    }
                }
                if (!z) {
                    i3 = -1;
                } else {
                    i3 = A0m;
                }
                if (!z) {
                    i4 = -2;
                }
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i3, i4);
                layoutParams2.addRule(12);
                AbstractC0681Nf nf2 = this.A06;
                int i5 = A0r;
                if (!z) {
                    toolbarHeight = i5;
                } else {
                    toolbarHeight = getToolbarHeight() + i5;
                }
                int i6 = A0r;
                nf2.setPadding(i5, toolbarHeight, i6, i6);
                this.A06.setLayoutParams(layoutParams2);
            }
            this.A02.setLayoutParams(layoutParams);
            this.A02.setOverScrollMode(2);
        }
    }

    /* access modifiers changed from: private */
    public void A0R() {
        int i;
        IS is = this.A0d;
        if (this.A0h.get()) {
            i = 0;
        } else {
            i = 8;
        }
        is.setVisibility(i);
        this.A0d.A0A();
    }

    private final void A0U() {
        if (this.A06 != null) {
            this.A0B = new C0587Jj(true);
            C0549Hv hv = this.A0E;
            if (hv != null) {
                this.A0B.A0J(hv);
            }
            AnonymousClass1I A012 = this.A0Q.A0M().A01();
            this.A0B.A0J(new C0538Hk(this.A06.getCTAButton(), HttpStatus.SC_MULTIPLE_CHOICES, A012.A08(true), -14934495));
            this.A0B.A0J(new C0550Hw(this.A06.getCTAButton(), HttpStatus.SC_MULTIPLE_CHOICES, C0632Lh.A09(A0u, A0v, A0t), C0632Lh.A06(A012.A08(true), A0t)));
            this.A0B.A0J(new C0544Hq(this.A06.getExpandableLayout(), 150, false));
            this.A0B.A0I(2300);
            this.A0B.A8K(this.A09);
        }
    }

    private final void A0V() {
        PD pd = this.A09;
        if (pd != null) {
            pd.A0W(2);
            this.A09.A0S();
        }
        QE qe = this.A0g;
        if (qe != null) {
            qe.A0W();
        }
    }

    /* access modifiers changed from: private */
    public void A0e(C03167w r3) {
        if (!this.A0J) {
            this.A08.A06();
            A0L();
            M9 m9 = this.A05;
            if (m9 != null) {
                m9.A3u(PR.A06.A02(), r3);
            }
        }
    }

    /* access modifiers changed from: private */
    public void A0f(String str) {
        this.A0S.A0A().A2r(str);
        int i = 0;
        int i2 = 0;
        PD pd = this.A09;
        if (pd != null) {
            i = pd.getCurrentPositionInMillis();
            i2 = this.A09.getDuration();
        }
        A0V();
        this.A0S.A04().A8V(A0E(0, 5, 84), C03228e.A2F, new C03238f(str));
        if (J4.A0z(this.A0S)) {
            A0e(new C03167w(i, i2));
            return;
        }
        M9 m9 = this.A05;
        if (m9 != null) {
            m9.A3t(PR.A09.A02());
        }
    }

    /* access modifiers changed from: private */
    public boolean A0g() {
        PD pd = this.A09;
        if (pd == null || pd.getCurrentPositionInMillis() / AdError.NETWORK_ERROR_CODE < this.A0Q.A0N().A0E().A02()) {
            return false;
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void A8J(Intent intent, Bundle bundle, AnonymousClass50 r7) {
        if (this.A09 != null) {
            M9 m9 = this.A05;
            if (A0l[2].charAt(24) != 'V') {
                String[] strArr = A0l;
                strArr[0] = "e6V6RqcsweZ5TPTb9FgQuQ0pryALZ0j5";
                strArr[7] = "lv4Tf42JMHAUVPcypCqljFxIq3tnjr4p";
                if (m9 != null) {
                    if (Build.VERSION.SDK_INT >= 19) {
                        this.A0V.A05(LU.A04);
                    }
                    A0M();
                    r7.A0L(this.A0R);
                    this.A09.setVideoURI(new AnonymousClass7D(this.A0S).A0O(this.A0Q.A0N().A0E().A08()));
                    setUpContentLayoutForVideo(r7.A0I().getResources().getConfiguration().orientation);
                    addView(this.A0O, A0s);
                    M4 m4 = this.A04;
                    if (m4 != null) {
                        C0632Lh.A0N(m4);
                        this.A04.A05(this.A0P, true);
                        addView(this.A04, new RelativeLayout.LayoutParams(-1, this.A04.getToolbarHeight()));
                    }
                    this.A05.A3L(this, 0, A0s);
                    A0O();
                    postDelayed(new C1052aj(this), (long) J4.A0J(getContext()));
                    return;
                }
                return;
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void A9M() {
        PD pd = this.A09;
        if (pd != null) {
            PO po = PO.A03;
            if (A0l[6].charAt(1) != 'j') {
                throw new RuntimeException();
            }
            A0l[6] = "Tj2Tj3snk4deQrW2TFaqKUqYHOA0aFA3";
            pd.A0Y(po, 23);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MT
    public final void A9N() {
        A0L();
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void AB2(boolean z) {
        PD pd = this.A09;
        if (pd != null && !pd.A0f()) {
            this.A0A = this.A09.getVideoStartReason();
            this.A0H = z;
            PD pd2 = this.A09;
            if (A0l[1].length() != 5) {
                throw new RuntimeException();
            }
            A0l[4] = "af";
            pd2.A0b(false, 14);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ABR(boolean z) {
        PD pd = this.A09;
        if (pd != null && !pd.A0g() && !this.A0J && this.A09.getState() != QB.A06 && this.A0A != null) {
            if (!this.A0H || z) {
                PD pd2 = this.A09;
                String[] strArr = A0l;
                if (strArr[0].charAt(9) != strArr[7].charAt(9)) {
                    A0l[1] = "7lFur";
                    pd2.A0Y(this.A0A, 21);
                    return;
                }
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ADT(Bundle bundle) {
    }

    @Nullable
    private View$OnClickListenerC1014a7 getCTAButton() {
        if (this.A05 == null) {
            return null;
        }
        View$OnClickListenerC1014a7 a7Var = new View$OnClickListenerC1014a7(this.A0S, PR.A04.A02(), this.A0P, this.A0T, this.A05, this.A0g, this.A0W);
        a7Var.setRoundedCornersEnabled(true);
        a7Var.setViewShowsOverMedia(true);
        C0632Lh.A0J(AdError.NO_FILL_ERROR_CODE, a7Var);
        a7Var.setCta(this.A0Q.A0N().A0G(), this.A0Q.A0T(), new HashMap());
        return a7Var;
    }

    private int getToolbarHeight() {
        M4 m4 = this.A04;
        return m4 == null ? M4.A00 : m4.getToolbarHeight();
    }

    /* JADX INFO: Multiple debug info for r7v0 android.content.res.Configuration: [D('simpleVideoViewParams' android.widget.RelativeLayout$LayoutParams), D('screenshotParams' android.widget.RelativeLayout$LayoutParams)] */
    public final void onConfigurationChanged(Configuration configuration) {
        C0549Hv hv;
        if (!J4.A1U(this.A0S) || this.A06 == null) {
            AbstractC0681Nf nf = this.A06;
            if (A0l[1].length() != 5) {
                throw new RuntimeException();
            }
            A0l[2] = "taNSjGkhdG2DcrPTICkef1XKgKxpKPDd";
            if (nf != null) {
                nf.A0E(configuration.orientation);
                if (this.A0i && (hv = this.A0E) != null) {
                    hv.A09(this.A06.A09(configuration.orientation));
                }
            }
        } else {
            boolean z = true;
            if (configuration.orientation != 1) {
                z = false;
            }
            if (this.A02 != null && this.A04 != null) {
                this.A06.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                AbstractC0681Nf nf2 = this.A06;
                nf2.setLayoutParams(nf2.A0C(this.A03));
                if (z) {
                    layoutParams.setMargins(0, this.A04.getToolbarHeight(), 0, A0o);
                    layoutParams.addRule(2, this.A06.getId());
                } else {
                    int i = A0o;
                    layoutParams.setMargins(0, i, 0, i);
                    layoutParams.addRule(0, this.A03.getId());
                }
                this.A02.setLayoutParams(layoutParams);
            } else if (this.A09 != null) {
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                if (z) {
                    A0K();
                    layoutParams2.addRule(13);
                } else {
                    A0J();
                    layoutParams2.addRule(0, this.A03.getId());
                    layoutParams2.setMargins(0, 0, 0, 0);
                }
                this.A09.setLayoutParams(layoutParams2);
            }
        }
        this.A00 = configuration.orientation;
        A0Q();
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void onDestroy() {
        this.A0V.A03();
        A0V();
        PD pd = this.A09;
        if (pd != null) {
            pd.getEventBus().A05(this.A0Y, this.A0Z, this.A0b, this.A0a, this.A0c);
        }
        if (!TextUtils.isEmpty(this.A0Q.A0T())) {
            this.A0T.A8S(this.A0Q.A0T(), new C0678Nc().A04(this.A0g).A03(this.A0W).A06());
        }
        M4 m4 = this.A04;
        if (m4 != null) {
            m4.setToolbarListener(null);
        }
        this.A0X.A0h();
        this.A09 = null;
        this.A06 = null;
        this.A0C = null;
        this.A05 = null;
        this.A0e.A08();
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A0W.A07(motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View expandableLayout = this.A06.getExpandableLayout();
        if (expandableLayout != null && this.A0i && z && this.A0E == null) {
            this.A0E = new C0549Hv(expandableLayout, HttpStatus.SC_MULTIPLE_CHOICES, expandableLayout.getHeight(), 0);
            this.A0B.A0J(this.A0E);
            this.A0B.A0H();
        }
    }

    public void setListener(M9 m9) {
    }

    @VisibleForTesting
    public void setServerSideRewardHandler(PA pa) {
        this.A08 = pa;
    }

    /* JADX INFO: Multiple debug info for r8v0 'this'  com.facebook.ads.redexgen.X.ah: [D('simpleVideoViewParams' android.widget.RelativeLayout$LayoutParams), D('detailsLayoutParams' android.widget.RelativeLayout$LayoutParams), D('muteButtonLayoutParams' android.widget.RelativeLayout$LayoutParams)] */
    private void setUpContentLayoutForVideo(int i) {
        this.A0O.removeAllViews();
        A0G();
        if (this.A06 != null) {
            XJ xj = this.A0S;
            if (A0l[2].charAt(24) != 'V') {
                String[] strArr = A0l;
                strArr[5] = "4i2csOaoNdqQlmOU4oeneSGIvSddu1uE";
                strArr[3] = "nuT450uQsQsD47HYSiniJ05GRT2hP0Qn";
                if (J4.A1U(xj)) {
                    this.A0O.addView(this.A03);
                    this.A0e.A09(-1, A0u);
                    if (i == 1) {
                        A0K();
                        this.A0O.addView(this.A09, A0s);
                    } else {
                        A0J();
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                        layoutParams.addRule(0, this.A03.getId());
                        layoutParams.setMargins(0, 0, 0, 0);
                        this.A0O.addView(this.A09, layoutParams);
                    }
                    this.A0O.addView(this.A06);
                } else {
                    this.A0O.addView(this.A09, A0s);
                    int i2 = -2;
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams2.addRule(12);
                    this.A06.A0F(false);
                    C0632Lh.A0N(this.A06);
                    this.A06.A0E(i);
                    AbstractC0681Nf nf = this.A06;
                    int i3 = A0r;
                    nf.setPadding(i3, i3, i3, i3);
                    if (this.A0i) {
                        i2 = A0w;
                    }
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, i2);
                    if (this.A0i) {
                        int i4 = A0r;
                        layoutParams2.setMargins(i4, i4, i4, i4);
                        IB ib = this.A0e;
                        int i5 = A0x;
                        ib.setPadding(i5, i5, i5, i5);
                        this.A0e.A09(-1, A0u);
                    }
                    layoutParams3.addRule(12);
                    this.A0O.addView(this.A0e, layoutParams3);
                    this.A0O.addView(this.A06, layoutParams2);
                }
            } else {
                throw new RuntimeException();
            }
        }
        int i6 = A0q;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i6, i6);
        layoutParams4.addRule(10);
        layoutParams4.addRule(11);
        int i7 = A0o;
        layoutParams4.setMargins(i7, getToolbarHeight() + i7, A0o, A0p);
        this.A0O.addView(this.A0d, layoutParams4);
        A0R();
    }
}
