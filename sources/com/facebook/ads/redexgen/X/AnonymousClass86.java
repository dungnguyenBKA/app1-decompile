package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.86  reason: invalid class name */
public final class AnonymousClass86 extends XM {
    public static byte[] A0K;
    public static String[] A0L;
    @Nullable
    public AbstractC0699Nx A00;
    @Nullable
    public PO A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public final AbstractC02494y A08 = new RN(this);
    public final PA A09;
    public final PD A0A;
    public final C03177y A0B;
    public final AbstractC0629Le A0C = new AnonymousClass8a(this);
    public final L4 A0D = new AnonymousClass89(this);
    public final KW A0E = new C03338p(this);
    public final KQ A0F = new C03348q(this);
    public final KL A0G = new C03358r(this);
    public final KJ A0H = new C03258h(this);
    public final IS A0I;
    public final IB A0J;

    static {
        A09();
        A08();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 88);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A0K = new byte[]{-3, 21, 7, 5, 21, -1, -38, -51, -56, -55, -45};
    }

    public static void A09() {
        A0L = new String[]{"Mriq29lS8vjEPztqvg4mnlhqPa1pf4jw", "J0ebGdEZD5oKohgNzUxMA3JiHaSF4bRJ", "IT9tvlYp44pYwsfxgtsksFS", "El43mrOkb3qqMjbYlNbneDDC3riKbt8u", "SsyQgLhJr8BA6K4Jeu0226NIXlotTSUK", "5pKSfcHcmxRzGJ6MCKbxSHPk9j0pnkgf", "vZ9Xs81YGHnjRjGsoTeSsIOHxP", "Y9Sammkz"};
    }

    public AnonymousClass86(XJ xj, AbstractC0655Me me, JC jc, AnonymousClass16 r11, AnonymousClass7D r12, M9 m9) {
        super(xj, me, jc, r11, r12, m9);
        boolean z;
        boolean z2 = false;
        this.A06 = false;
        this.A07 = false;
        this.A05 = false;
        this.A03 = false;
        this.A0A = new PD(super.A03);
        this.A0A.setFunnelLoggingHandler(super.A05);
        this.A0A.getEventBus().A04(this.A0G, this.A0F, this.A0E, this.A0H, this.A0C, this.A0D);
        this.A0B = new C03177y(super.A03, super.A04, this.A0A, super.A01.A0T());
        this.A09 = new PA(super.A03, super.A09, super.A01.A0Z(), m9);
        this.A0I = new IS(super.A03, super.A05);
        this.A0J = new IB(super.A03);
        A07();
        this.A0A.setVideoURI(super.A02.A0O(super.A01.A0N().A0E().A08()));
        A05();
        if (super.A01.A0N().A0E().A03() <= 0) {
            z = true;
        } else {
            z = false;
        }
        this.A04 = z;
        if (super.A01.A0N().A0M() && super.A01.A0N().A0E().A02() > 0) {
            z2 = true;
        }
        this.A02 = z2;
        C0632Lh.A0P(this, super.A01.A0M().A01().A07(true));
    }

    private AbstractC0699Nx A00(int i) {
        return C0700Ny.A00(new O0(super.A03, super.A04, super.A08, super.A01, this.A0A, super.A0A, super.A06).A0E(super.A07.getToolbarHeight()).A0H(super.A07).A0D(i).A0F(this.A0I).A0I(this.A0J).A0J(), null, true);
    }

    private void A04() {
        this.A0A.postDelayed(new RM(this), (long) J4.A0I(super.A03));
    }

    private void A05() {
        this.A0A.postDelayed(new RL(this), (long) J4.A0J(super.A03));
    }

    private void A06() {
        this.A04 = true;
        AbstractC0699Nx nx = this.A00;
        if (nx != null) {
            nx.A0X();
        }
    }

    /* JADX INFO: Multiple debug info for r5v0 'this'  com.facebook.ads.redexgen.X.86: [D('placeholderImagePlugin' com.facebook.ads.redexgen.X.7Z), D('touchPlayPausePlugin' com.facebook.ads.redexgen.X.7L)] */
    private void A07() {
        this.A0A.A0Z(this.A0J);
        this.A0A.A0Z(this.A0I);
        if (!TextUtils.isEmpty(super.A01.A0N().A0E().A07())) {
            AnonymousClass7Z r1 = new AnonymousClass7Z(super.A03);
            this.A0A.A0Z(r1);
            r1.setImage(super.A01.A0N().A0E().A07());
        }
        AnonymousClass7L r3 = new AnonymousClass7L(super.A03, true, super.A05);
        this.A0A.A0Z(r3);
        this.A0A.A0Z(new C0554Ia(r3, EnumC0728Pb.A03, true));
        this.A0A.A0Z(new AnonymousClass7T(super.A03));
    }

    /* access modifiers changed from: private */
    public void A0E(C03167w r5, boolean z) {
        if (!this.A05) {
            this.A05 = true;
            if (!this.A04) {
                A06();
            }
            AbstractC0699Nx nx = this.A00;
            if (A0L[6].length() != 26) {
                throw new RuntimeException();
            }
            A0L[1] = "skYYV88BTcDGkk1Ge0IaKZH0HqJ76mgM";
            if (nx != null) {
                nx.A0I(r5);
            }
            super.A07.setToolbarActionMessage(A03(0, 0, 25));
            A0I(z);
            super.A07.setToolbarActionMode(getCloseButtonStyle());
        }
    }

    /* access modifiers changed from: private */
    public void A0F(AnonymousClass7s r5) {
        if (this.A0A.getState() == QB.A02 && J4.A0y(super.A03)) {
            this.A0A.postDelayed(new C0827Sy(this, r5), 5000);
        }
    }

    /* access modifiers changed from: private */
    public void A0G(AnonymousClass7s r7) {
        int A002 = r7.A00();
        if (this.A02) {
            int A022 = super.A01.A0N().A0E().A02() - (A002 / AdError.NETWORK_ERROR_CODE);
            if (A022 > 0) {
                super.A07.setToolbarActionMessage(super.A01.A0R().A00().replace(A03(0, 6, 74), String.valueOf(A022)));
            } else {
                super.A07.setToolbarActionMessage(A03(0, 0, 25));
                A0I(false);
            }
        }
        float min = ((float) A002) / Math.min(((float) super.A01.A0N().A0E().A03()) * 1000.0f, (float) this.A0A.getDuration());
        super.A07.setProgress(100.0f * min);
        if (min >= 1.0f && !this.A04) {
            A06();
            String[] strArr = A0L;
            if (strArr[2].length() != strArr[7].length()) {
                String[] strArr2 = A0L;
                strArr2[0] = "PXM0w4DTcyhv6xVVxlaJPbpxowOdlGPl";
                strArr2[4] = "ZagmJHoPVKqTZKI94Zh80WtjAbW4VeCE";
                super.A07.setToolbarActionMode(getCloseButtonStyle());
                return;
            }
            throw new RuntimeException();
        }
    }

    /* access modifiers changed from: private */
    public void A0H(String str) {
        int i = 0;
        int i2 = 0;
        PD pd = this.A0A;
        if (pd != null) {
            i = pd.getCurrentPositionInMillis();
            i2 = this.A0A.getDuration();
        }
        super.A03.A04().A8V(A03(6, 5, 12), C03228e.A2F, new C03238f(str));
        if (J4.A0z(super.A03)) {
            A0E(new C03167w(i, i2), false);
            return;
        }
        M9 m9 = super.A08;
        if (A0L[3].charAt(0) != 'z') {
            A0L[3] = "uhCmlX27t5rzSWT78KYVdoY12DutI5Be";
            m9.A3t(super.A09.A6Q());
            super.A08.A3t(super.A09.A6L());
            return;
        }
        throw new RuntimeException();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0042, code lost:
        r2 = com.facebook.ads.redexgen.X.AnonymousClass86.A0L;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0052, code lost:
        if (r2[2].length() == r2[7].length()) goto L_0x005c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0054, code lost:
        com.facebook.ads.redexgen.X.AnonymousClass86.A0L[6] = "pCCqOlrdcXyBK9Nv0jyTBmGbmh";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x005b, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void A0I(boolean r6) {
        /*
        // Method dump skipped, instructions count: 101
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass86.A0I(boolean):void");
    }

    @Override // com.facebook.ads.redexgen.X.XM
    public final void A0R() {
        float f;
        C0632Lh.A0O(this.A00);
        C0632Lh.A0O(super.A07);
        PD pd = this.A0A;
        if (super.A01.A0N().A0E().A09()) {
            f = 0.0f;
        } else {
            f = 1.0f;
        }
        pd.setVolume(f);
        this.A0A.A0Y(PO.A03, 20);
        AbstractC0699Nx nx = this.A00;
        if (nx != null && this.A02) {
            nx.A0W();
        }
        AbstractC0699Nx nx2 = this.A00;
        if (nx2 != null && !this.A04) {
            nx2.A0Y();
        }
        A04();
    }

    @Override // com.facebook.ads.redexgen.X.XM
    public final void A0T(AnonymousClass50 r5) {
        boolean z;
        r5.A0L(this.A08);
        this.A00 = A00(r5.A0I().getResources().getConfiguration().orientation);
        addView(this.A00, XM.A0D);
        addView(super.A07, new FrameLayout.LayoutParams(-1, super.A07.getToolbarHeight()));
        C0632Lh.A0K(this.A00);
        C0632Lh.A0K(super.A07);
        AbstractC0699Nx nx = this.A00;
        if (nx == null || !nx.A0a()) {
            z = false;
        } else {
            z = true;
        }
        setUpFullscreenMode(z);
    }

    @Override // com.facebook.ads.redexgen.X.XM
    public final boolean A0U() {
        AbstractC0699Nx nx = this.A00;
        if (nx == null || !nx.A0b(this.A02)) {
            return false;
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void AB2(boolean z) {
        if (!this.A0A.A0f()) {
            this.A01 = this.A0A.getVideoStartReason();
            this.A03 = z;
            this.A0A.A0b(false, 13);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ABR(boolean z) {
        if (!this.A0A.A0g() && !this.A05 && this.A0A.getState() != QB.A06 && this.A01 != null) {
            if (!this.A03 || z) {
                PD pd = this.A0A;
                PO po = this.A01;
                String[] strArr = A0L;
                if (strArr[0].charAt(8) != strArr[4].charAt(8)) {
                    A0L[1] = "5vrQw9TAnlgebYwA7tbvLzoGHglPMjBr";
                    pd.A0Y(po, 19);
                    return;
                }
                throw new RuntimeException();
            }
        }
    }

    private int getCloseButtonStyle() {
        AbstractC0699Nx nx = this.A00;
        if (nx != null) {
            return nx.getCloseButtonStyle();
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.MA, com.facebook.ads.redexgen.X.XM
    public final void onDestroy() {
        super.onDestroy();
        AbstractC0699Nx nx = this.A00;
        if (nx != null) {
            nx.A0U();
        }
        PD pd = this.A0A;
        if (pd != null) {
            if (!this.A05) {
                pd.A0X(PK.A05);
            }
            this.A0A.getEventBus().A05(this.A0G, this.A0F, this.A0E, this.A0H, this.A0C, this.A0D);
            this.A0A.A0S();
        }
        this.A0B.A0h();
    }
}
