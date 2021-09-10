package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.br  reason: case insensitive filesystem */
public final class C1122br implements JC {
    @Nullable
    @SuppressLint({"StaticFieldLeak"})
    public static JC A03;
    public static byte[] A04;
    public static final String A05 = C1122br.class.getSimpleName();
    public static volatile boolean A06 = false;
    public final XK A00;
    public final AnonymousClass9K A01;
    public final JB A02;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 79);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{-90, -21, -4, -21, -12, -6, -76, -88, -37, -37, -52, -44, -41, -37, -48, -43, -50, -121, -37, -42, -121, -45, -42, -50, -121, -56, -43, -121, -48, -43, -35, -56, -45, -48, -53, -121};
    }

    static {
        A03();
    }

    /* JADX INFO: Multiple debug info for r2v0 'this'  com.facebook.ads.redexgen.X.br: [D('adEventStorage' com.facebook.ads.redexgen.X.Xw), D('dispatchCallback' com.facebook.ads.redexgen.X.JA)] */
    public C1122br(XK xk) {
        JA A002;
        this.A00 = xk;
        if (J6.A0U(xk)) {
            this.A01 = AnonymousClass9I.A00(xk);
            A002 = JG.A01(xk, this.A01);
        } else {
            EQ A012 = AnonymousClass9I.A01(xk);
            A002 = JG.A00(xk, A012);
            this.A01 = A012;
        }
        this.A02 = new C1119bo(xk, A002);
        ExecutorC0637Lm.A08.execute(new C1120bp(this));
        A04(xk);
    }

    public static synchronized JC A01(XK xk) {
        JC jc;
        synchronized (C1122br.class) {
            if (A03 == null) {
                A03 = new C1122br(xk);
            }
            jc = A03;
        }
        return jc;
    }

    public static synchronized void A04(XK xk) {
        synchronized (C1122br.class) {
            if (!A06) {
                DynamicLoaderFactory.makeLoader(xk).getInitApi().onAdEventManagerCreated(xk);
                A06 = true;
            }
        }
    }

    private void A05(J9 j9) {
        if (!j9.A0B()) {
            String str = A05;
            Log.e(str, A02(7, 29, 24) + j9.A07() + A02(0, 7, 55));
            return;
        }
        this.A01.AEl(j9, new C1121bq(this, j9));
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8N(String str, Map<String, String> map) {
        A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A04).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8Q(String str, Map<String, String> map) {
        A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A06).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8R(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A07).A06(JL.A0A(str, JI.A0I)).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8S(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A08).A06(JL.A0A(str, JI.A06)).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8U(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A0B).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8Y(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A0C).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8a(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A05).A02(JE.A0D).A06(JL.A0A(str, JI.A0T)).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8b(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A05).A02(JE.A0E).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8c(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A05).A02(JE.A0H).A06(JL.A0A(str, JI.A0V)).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8e(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A0G).A06(JL.A0A(str, JI.A0W)).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8g(String str, Map<String, String> map, String str2, JD jd) {
        A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(jd).A02(JE.A00(str2)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8h(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A0I).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8m(String str) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A01(JD.A04).A02(JE.A0K).A06(JL.A0A(str, JI.A0Y)).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8o(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A0F).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8p(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A05).A02(JE.A0L).A06(JL.A0A(str, JI.A0c)).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8q(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A0P).A06(JL.A0A(str, JI.A0e)).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8r(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A04).A02(JE.A0O).A06(JL.A0A(str, JI.A0f)).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8s(String str, Map<String, String> map) {
        A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A05).A02(JE.A0Q).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void A8u(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            A05(new J8().A04(str).A00(this.A00.A05().A01()).A03(this.A00.A05().A02()).A05(map).A01(JD.A05).A02(JE.A0R).A07(this.A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.JC
    public final void ACS(String str) {
        new AsyncTaskC0757Qe(this.A00).execute(str);
    }
}
