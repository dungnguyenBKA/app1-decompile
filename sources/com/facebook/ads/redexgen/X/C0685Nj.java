package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Nj  reason: case insensitive filesystem */
public final class C0685Nj {
    public static byte[] A09;
    @Nullable
    public AbstractC0684Ni A00;
    public boolean A01 = true;
    public boolean A02;
    public final XJ A03;
    public final JC A04;
    public final C0625La A05;
    public final M9 A06;
    public final QE A07;
    public final String A08;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A09 = new byte[]{31, 8, 29, 30, 41, 40, 40, 51, 50, 31, 48, 53, 63, 55, 16, 53, 47, 40, 57, 50, 57, 46, 114, 69, 69, 88, 69, 23, 82, 79, 82, 84, 66, 67, 94, 89, 80, 23, 86, 84, 67, 94, 88, 89, 73, 126, 126, 99, 126, 44, 123, 100, 101, 96, 105, 44, 99, 124, 105, 98, 101, 98, 107, 44};
    }

    public C0685Nj(XJ xj, String str, QE qe, C0625La la, JC jc, M9 m9) {
        this.A03 = xj;
        this.A08 = str;
        this.A07 = qe;
        this.A05 = la;
        this.A04 = jc;
        this.A06 = m9;
    }

    public static void A03(XJ xj, @Nullable QE qe, C0625La la, JC jc, AnonymousClass1J r11, String str) {
        AbstractC01270f A012 = C01280g.A01(xj, jc, str, Uri.parse(r11.A04()), new C0678Nc().A04(qe).A03(la).A06(), false, false);
        if (A012 != null) {
            A012.A0A();
        }
    }

    private void A05(String str, String str2, Map<String, String> map) {
        this.A04.A8r(str, map);
        LB.A00(new DialogInterface$OnClickListenerC0682Ng(this, map, str, str2), new DialogInterface$OnClickListenerC0683Nh(this, str, map), C0619Ks.A00());
    }

    /* access modifiers changed from: private */
    public void A06(String str, String str2, Map<String, String> map) {
        String A012 = A01(0, 22, 52);
        try {
            AbstractC01270f A013 = C01280g.A01(this.A03, this.A04, str, Uri.parse(str2), new C0678Nc(map).A04(this.A07).A03(this.A05).A06(), this.A01, this.A02);
            if (A013 != null) {
                A013.A0D();
            }
            if (this.A00 != null) {
                this.A00.A9r();
            }
            this.A06.A3t(this.A08);
        } catch (ActivityNotFoundException e) {
            Log.e(A012, A01(44, 20, 100) + str2, e);
        } catch (Exception e2) {
            Log.e(A012, A01(22, 22, 95), e2);
        }
    }

    public final void A07(AbstractC0684Ni ni) {
        this.A00 = ni;
    }

    public final void A08(String str, String str2, Map<String, String> map) {
        new JJ(str, this.A04).A03(JI.A0J, null);
        if (this.A05.A0A(this.A03)) {
            this.A04.A8R(str, map);
        } else if (J4.A11(this.A03)) {
            A05(str, str2, map);
        } else {
            A06(str, str2, map);
        }
    }

    public final void A09(boolean z) {
        this.A02 = z;
    }

    public final void A0A(boolean z) {
        this.A01 = z;
    }
}
