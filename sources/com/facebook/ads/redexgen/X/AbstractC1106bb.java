package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.bb  reason: case insensitive filesystem */
public abstract class AbstractC1106bb extends RelativeLayout implements MA {
    public static byte[] A0E;
    public static String[] A0F;
    public View A00;
    @Nullable
    public L6 A01;
    @Nullable
    public C0711Ok A02;
    public boolean A03 = false;
    public boolean A04 = false;
    public AnonymousClass17 A05;
    public boolean A06;
    public final LV A07;
    public final M9 A08;
    public final S1 A09;
    public final XJ A0A;
    public final JC A0B;
    public final JJ A0C;
    public final M4 A0D;

    static {
        A0T();
        A0S();
    }

    public static String A0P(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 81);
        }
        return new String(copyOfRange);
    }

    public static void A0S() {
        A0E = new byte[]{88, 84, 86, 21, 93, 90, 88, 94, 89, 84, 84, 80, 21, 90, 95, 72, 21, 82, 85, 79, 94, 73, 72, 79, 82, 79, 82, 90, 87, 21, 82, 86, 75, 73, 94, 72, 72, 82, 84, 85, 21, 87, 84, 92, 92, 94, 95};
    }

    public static void A0T() {
        A0F = new String[]{"fqT9snXDZkE2N6bIU2twhbCcrvrF5wQR", "W8MK3buqarkLhDixdfnbfGeXuw3i87xB", "M5iWaw3OwwKxChS5bTa9KUrj63pwu1Od", "QKu8TlGQ3D7NsDDaY", "OUnrWL6BanKvWJF", "644mHU9zQQHAcSiNB", "MqQzuM0GD0HqxOL2854PPJvoiao7nama", "mSpdOD621tCilusEUOf234Jx9LR3KzyX"};
    }

    public abstract boolean A0f();

    @ToolbarActionView$ToolbarActionMode
    public abstract int getCloseButtonStyle();

    public AbstractC1106bb(XJ xj, JC jc, M9 m9, S1 s1) {
        super(xj);
        this.A0A = xj;
        this.A06 = J4.A19(this.A0A);
        this.A0B = jc;
        this.A08 = m9;
        this.A07 = new LV(this);
        this.A09 = s1;
        this.A0C = new JJ(this.A09.A0T(), this.A0B);
        this.A0D = new FullScreenAdToolbar(this.A0A, getAudienceNetworkListener(), this.A0C, 0, this.A09.A0F());
    }

    private AnonymousClass1I A0O(int i) {
        if (i == 1) {
            return this.A05.A01();
        }
        AnonymousClass17 r3 = this.A05;
        if (A0F[2].charAt(7) != 'O') {
            throw new RuntimeException();
        }
        A0F[0] = "MYlveE6g4wScBr3MsnlZwbj0w3RA4Q0m";
        return r3.A00();
    }

    private void A0Q() {
        removeAllViews();
        C0632Lh.A0M(this);
    }

    private void A0R() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (!A0c() || this.A02 != null) {
            this.A08.A3L(this, 0, layoutParams);
            return;
        }
        this.A04 = true;
        this.A02 = new C0710Oi(this.A0A, this.A09.A0N().A0F(), this.A09.A0Q()).A08(this.A09.A0M().A01()).A0B();
        JL.A04(this.A02, this.A0C, JI.A0U);
        this.A08.A3L(this, 0, layoutParams);
        this.A08.A3L(this.A02, 1, layoutParams);
        this.A02.A04(new C1111bg(this));
    }

    private void A0U(AnonymousClass1I r4, boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.A0D.getToolbarHeight());
        layoutParams.addRule(10);
        this.A0D.A05(r4, z);
        addView(this.A0D, layoutParams);
    }

    public final void A0X() {
        View view = this.A00;
        if (view != null && (view instanceof AbstractC0699Nx)) {
            if (A0d()) {
                ((AbstractC0699Nx) this.A00).A0Y();
            } else {
                ((AbstractC0699Nx) this.A00).A0X();
            }
        }
    }

    public final void A0Y(int i) {
        this.A01 = new L6(i, new C1110bf(this, i));
        this.A03 = true;
        A0X();
        this.A01.A08();
    }

    public final void A0Z(View view, boolean z, int i) {
        int toolbarHeight;
        this.A00 = view;
        this.A07.A05(LU.A03);
        A0Q();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (z) {
            toolbarHeight = 0;
        } else {
            toolbarHeight = this.A0D.getToolbarHeight();
        }
        layoutParams.setMargins(0, toolbarHeight, 0, 0);
        layoutParams.addRule(12);
        addView(view, layoutParams);
        AnonymousClass1I A0O = A0O(i);
        A0U(A0O, z);
        C0632Lh.A0P(this, A0O.A07(false));
        if (this.A08 != null) {
            A0R();
            String[] strArr = A0F;
            if (strArr[3].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A0F[0] = "NsWlVTe7e8AxmZfep9MsD1WsEVvEb3lR";
            if (z && Build.VERSION.SDK_INT >= 19) {
                LV lv = this.A07;
                if (A0F[0].charAt(10) != 'o') {
                    A0F[2] = "LlUUcmlOaTawHlOzciUSj9DhXPbTXBAe";
                    lv.A05(LU.A04);
                    return;
                }
                throw new RuntimeException();
            }
        }
    }

    public final void A0a(AnonymousClass50 r6) {
        int i;
        this.A07.A04(r6.A0I().getWindow());
        this.A05 = this.A09.A0M();
        AnonymousClass19 r1 = null;
        if (!(this.A09.A0N() == null || this.A09.A0N() == null)) {
            r1 = this.A09.A0N();
        }
        M4 m4 = this.A0D;
        AnonymousClass1S A0Q = this.A09.A0Q();
        String A0T = this.A09.A0T();
        if (r1 != null) {
            i = r1.A0E().A03();
        } else {
            i = 0;
        }
        m4.setPageDetails(A0Q, A0T, i, this.A09.A0R());
        this.A0D.setToolbarListener(new C1126bv(this, r6));
    }

    public final void A0b(AnonymousClass50 r5) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(200);
        alphaAnimation.setAnimationListener(new MG(this, this, r5));
        startAnimation(alphaAnimation);
    }

    public final boolean A0c() {
        if (!this.A09.A0a().isEmpty()) {
            boolean A0P = this.A09.A0N().A0P();
            if (A0F[6].charAt(3) != 'z') {
                throw new RuntimeException();
            }
            A0F[2] = "rwsNokIOLx9Fj0KMvDMbhHWjcozH5rOe";
            if (A0P) {
                return true;
            }
        }
        return false;
    }

    public final boolean A0d() {
        return this.A03;
    }

    public final boolean A0e() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public void AB2(boolean z) {
        L6 l6 = this.A01;
        if (l6 != null && l6.A06()) {
            this.A01.A07();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public void ABR(boolean z) {
        L6 l6 = this.A01;
        if (l6 != null && !l6.A05()) {
            this.A01.A08();
        }
    }

    public JC getAdEventManager() {
        return this.A0B;
    }

    public M9 getAudienceNetworkListener() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public void onDestroy() {
        this.A07.A03();
        this.A0D.setToolbarListener(null);
        A0Q();
    }

    public void setImpressionRecordingFlag(C0625La la) {
        la.A06();
        if (getAudienceNetworkListener() != null) {
            getAudienceNetworkListener().A3t(A0P(0, 47, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE));
        }
    }

    public void setListener(M9 m9) {
    }
}
