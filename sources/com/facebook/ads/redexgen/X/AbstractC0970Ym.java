package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import java.util.Arrays;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.Ym  reason: case insensitive filesystem */
public abstract class AbstractC0970Ym extends AbstractC0699Nx {
    public static byte[] A06;
    public static String[] A07;
    public static final int A08 = ((int) (C0632Lh.A01 * 4.0f));
    public static final int A09 = AnonymousClass2L.A01(-1, 77);
    public static final int A0A = AnonymousClass2L.A01(A09, 90);
    public static final int A0B = ((int) (C0632Lh.A01 * 48.0f));
    public static final int A0C = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A0D = ((int) (C0632Lh.A01 * 12.0f));
    public static final int A0E = ((int) (C0632Lh.A01 * 44.0f));
    public static final int A0F = ((int) (C0632Lh.A01 * 16.0f));
    public static final int A0G = ((int) (C0632Lh.A01 * 26.0f));
    public static final int A0H = ((int) (C0632Lh.A01 * 12.0f));
    public C0587Jj A00;
    @Nullable
    public C0549Hv A01;
    public C0536Hi A02;
    public final AnonymousClass16 A03;
    public final AnonymousClass19 A04 = this.A03.A0N();
    public final AbstractC0681Nf A05;

    public static String A0J(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 22);
        }
        return new String(copyOfRange);
    }

    public static void A0K() {
        A06 = new byte[]{9, 5, 7, 68, 12, 11, 9, 15, 8, 5, 5, 1, 68, 11, 14, 25, 68, 3, 4, 30, 15, 24, 25, 30, 3, 30, 3, 11, 6, 68, 9, 6, 3, 9, 1, 15, 14, 92, 75, 89, 79, 92, 74, 75, 74, 113, 88, 71, 74, 75, 65};
    }

    public static void A0L() {
        A07 = new String[]{"1qM0UqBuKeNFs4931PZdKXfB5ZchECK5", "3ZSmcCEAG5Dz0dWrJNlp2MNszP7YT25A", "Vrvau7r1HMpQKQXhvyVkTfJZAsfHOW4A", "oVRoE2FdK0le1s2SfNIozg00Kc9sH4MP", "npYoVlwUwM4clRwIxvjz9nauDkw8jySV", "7Yuh663Y", "kkRlGGIMUj7iwn7pYEfT9Vq54HRzcbQk", "UynwTjbvMY6JmtelA"};
    }

    static {
        A0L();
        A0K();
    }

    public AbstractC0970Ym(O1 o1, boolean z) {
        super(o1, z);
        this.A03 = o1.A04();
        this.A05 = A0I(o1);
        M4 A082 = o1.A08();
        if (A082 != null) {
            A082.setLayoutParams(new RelativeLayout.LayoutParams(-1, A082.getToolbarHeight()));
            A082.setPageDetailsVisible(false);
        }
    }

    private AbstractC0681Nf A0I(O1 o1) {
        String A0J;
        AbstractC0681Nf yn;
        boolean z;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        if (o1.A04().A0X().equals(A0J(37, 14, 56))) {
            A0J = PR.A04.A02();
        } else if (A07[3].charAt(14) != '2') {
            throw new RuntimeException();
        } else {
            A07[5] = "WUaGuSp4tuIpD6iTfwLrbbBI";
            A0J = A0J(0, 37, 124);
        }
        if (J4.A1U(o1.A05())) {
            yn = new C1174cj(o1.A05(), A0B, getColors(), A0J, o1.A06(), o1.A09(), o1.A0B(), o1.A07());
            layoutParams.setMargins(AbstractC0699Nx.A08, 0, AbstractC0699Nx.A08, AbstractC0699Nx.A08);
        } else {
            XJ A052 = o1.A05();
            int i = A0B;
            if (this.A04.A0F().A00() == AnonymousClass1E.A05) {
                z = true;
            } else {
                z = false;
            }
            yn = new C0971Yn(A052, i, z, getColors(), A0J, o1.A06(), o1.A09(), o1.A0B(), o1.A07());
            this.A02 = new C0536Hi(yn, HttpStatus.SC_BAD_REQUEST, 100, 0);
        }
        C0632Lh.A0N(yn);
        yn.A0E(o1.A00());
        addView(yn, layoutParams);
        return yn;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public void A0Z(AnonymousClass19 r8, String str, double d, @Nullable Bundle bundle) {
        super.A0Z(r8, str, d, bundle);
        this.A05.setInfo(r8.A0F(), r8.A0G(), str, this.A03.A0Q().A01(), null);
    }

    public final int A0c(@Nullable M4 m4) {
        return m4 == null ? M4.A00 : m4.getToolbarHeight();
    }

    public void A0d() {
        View expandableLayout = getAdDetailsView().getExpandableLayout();
        if (expandableLayout != null) {
            this.A00 = new C0587Jj(true);
            C0549Hv hv = this.A01;
            if (hv != null) {
                C0587Jj jj = this.A00;
                if (A07[0].charAt(30) != 'l') {
                    A07[7] = "KTvg88bTO6HmKn15GgbH1";
                    jj.A0J(hv);
                } else {
                    throw new RuntimeException();
                }
            }
            AnonymousClass1I A012 = this.A03.A0M().A01();
            this.A00.A0J(new C0538Hk(getAdDetailsView().getCTAButton(), HttpStatus.SC_MULTIPLE_CHOICES, -1, A012.A09(true)));
            this.A00.A0J(new C0550Hw(getAdDetailsView().getCTAButton(), HttpStatus.SC_MULTIPLE_CHOICES, C0632Lh.A09(A09, A0A, A08), C0632Lh.A06(A012.A08(true), A08)));
            this.A00.A0J(new C0544Hq(expandableLayout, 150, false));
            this.A00.A0I(2300);
        }
    }

    public AnonymousClass16 getAdDataBundle() {
        return this.A03;
    }

    public C0536Hi getAdDetailsAnimation() {
        return this.A02;
    }

    public AbstractC0681Nf getAdDetailsView() {
        return this.A05;
    }

    public AnonymousClass19 getAdInfo() {
        return this.A04;
    }

    public C0587Jj getAnimationPlugin() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getAdDetailsView().A0E(configuration.orientation);
    }

    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View expandableLayout = getAdDetailsView().getExpandableLayout();
        if (expandableLayout != null && z) {
            C0549Hv hv = this.A01;
            if (A07[2].charAt(30) != '4') {
                throw new RuntimeException();
            }
            A07[0] = "AO2Vor543jhYYkt1oYijcT7buZTkR3eI";
            if (hv == null) {
                this.A01 = new C0549Hv(expandableLayout, HttpStatus.SC_MULTIPLE_CHOICES, expandableLayout.getHeight(), 0);
                this.A00.A0J(this.A01);
                this.A00.A0H();
            }
        }
    }
}
