package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import androidx.annotation.Nullable;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONObject;

@SuppressLint({"HardcodedIPAddressUse"})
public abstract class SJ implements KD {
    public static byte[] A0E;
    public static String[] A0F;
    public static final Handler A0G = new Handler(Looper.getMainLooper());
    public static final C01400s A0H = null;
    @SuppressLint({"StaticFieldLeak"})
    public static final KE A0I = null;
    public static final String A0J = SJ.class.getSimpleName();
    public View A00;
    @Nullable
    public AbstractC01350n A01;
    public AbstractC01350n A02;
    @Nullable
    public String A03 = null;
    public long A04 = -1;
    public C03408w A05;
    public KB A06;
    public AbstractC01360o A07;
    public final C01601m A08;
    public final JC A09;
    public final C01400s A0A;
    public final KE A0B;
    public final XJ A0C;
    public volatile boolean A0D;

    public static String A08(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        A0E = new byte[]{75, 110, 107, 122, 126, 111, 120, 42, 110, 101, 111, 121, 42, 100, 101, 126, 42, 111, 114, 99, 121, 126, 78, 107, 110, Byte.MAX_VALUE, 123, 106, 125, 47, 102, 124, 47, 97, 122, 99, 99, 47, 96, 97, 47, 124, 123, 110, 125, 123, 78, 107, 62, 25, 17, 20, 29, 28, 88, 12, 23, 88, 17, 22, 17, 12, 17, 25, 20, 17, 2, 29, 88, 59, 23, 23, 19, 17, 29, 53, 25, 22, 25, 31, 29, 10, 86, 34, 3, 76, 1, 3, 30, 9, 76, 13, 8, 76, 15, 13, 2, 8, 5, 8, 13, 24, 9, 31, 66, 88, 125, 96, 97, 104, 47, 110, 107, 110, Byte.MAX_VALUE, 123, 106, 125, 47, 123, 118, Byte.MAX_VALUE, 106, 33, 42, 47, 107, 42, 39, 57, 46, 42, 47, 50, 107, 56, 63, 42, 57, 63, 46, 47, 76, 93, 68, 44, 59, 91, 94, 75, 94, 112, 93, 85, 90, 92, 75, 31, 86, 76, 31, 81, 74, 83, 83, 48, 59, 54, 39, 44, 37, 33, 48, 49, 10, 60, 49, 28, 23, 15, 16, 11, 22, 23, 20, 28, 23, 13, 89, 16, 10, 89, 28, 20, 9, 13, 0, 73, 93, 74, 94, 90, 74, 65, 76, 86, 112, 76, 78, 95, 95, 70, 65, 72, 66, 65, 79, 74, 113, 90, 71, 67, 75, 113, 67, 93, 49, 38, 50, 54, 38, 48, 55, 28, 42, 39};
    }

    public static void A0B() {
        A0F = new String[]{"4yJhIog9RzpC9w4XHjq79o6hmz2pMXrt", "bLneqHgNlbzxjE", "P7gevZ65hMGDm5VmgpkLcWEi46YxYduR", "Pajg2XTKXpS0pN0AoGLcPnQoa2IWF6Z7", "YyJRdl3XxpBTstTmsw", "OvgbPt0JG7dlaj99kqPbJKVmb9CPKTVr", "21VbiQWRKHmC0d4xB3zoTsbqXtN2ZOxw", "Q3Y9mBD7X4l0uaedlY7FP5X0xCsXbtIX"};
    }

    public abstract void A0N();

    public abstract void A0Q(AbstractC01350n v, C03408w v2, C03388u v3, C01611n v4);

    static {
        A0B();
        A0A();
        C0634Lj.A02();
    }

    public SJ(XJ xj, C01601m r7) {
        this.A0C = xj;
        this.A08 = r7;
        KE ke = A0I;
        if (ke != null) {
            this.A0B = ke;
        } else {
            this.A0B = new KE(this.A0C);
        }
        this.A0B.A0R(this);
        C01400s r0 = A0H;
        if (r0 != null) {
            this.A0A = r0;
        } else {
            this.A0A = new C01400s();
        }
        if (J4.A0l(this.A0C)) {
            try {
                CookieManager.getInstance();
                if (Build.VERSION.SDK_INT < 21) {
                    CookieSyncManager.createInstance(this.A0C);
                }
            } catch (Exception e) {
                Log.w(A0J, A08(48, 35, 112), e);
            }
        }
        DynamicLoaderFactory.makeLoader(this.A0C).getInitApi().onAdLoadInvoked(this.A0C);
        this.A09 = xj.A06();
        this.A0C.A0A().A4X();
    }

    /* JADX INFO: Multiple debug info for r0v24 com.facebook.ads.redexgen.X.XK: [D('dataObject' org.json.JSONObject), D('sdkContext' com.facebook.ads.redexgen.X.XK)] */
    /* access modifiers changed from: private */
    public void A09() {
        this.A01 = null;
        C03408w r4 = this.A05;
        C03388u A042 = r4.A04();
        String A082 = A08(0, 0, 73);
        if (A042 == null) {
            C0588Jl A022 = C0588Jl.A02(AdErrorType.NO_FILL, A082);
            this.A0C.A0A().A4Z(A022.A04().getErrorCode(), A08(83, 22, 100));
            this.A07.A0F(A022);
            return;
        }
        String A032 = A042.A03();
        AbstractC01350n adapter = this.A0A.A00(r4.A05().A0D());
        if (adapter == null) {
            this.A0C.A04().A8V(A08(142, 3, 37), C03228e.A0P, new C03238f(A08(0, 22, 2), A032));
            A0O();
        } else if (this.A08.A00() != adapter.A6x()) {
            C0588Jl A023 = C0588Jl.A02(AdErrorType.INTERNAL_ERROR, A082);
            this.A0C.A0A().A4Z(A023.A04().getErrorCode(), A08(FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS, 19, 7));
            this.A07.A0F(A023);
        } else {
            this.A01 = adapter;
            C03418x A052 = r4.A05();
            JSONObject A053 = A042.A05();
            if (A053 != null) {
                String[] strArr = A0F;
                if (strArr[0].charAt(1) != strArr[5].charAt(1)) {
                    String[] strArr2 = A0F;
                    strArr2[4] = "xCRhnlDAhS4MFpckcT";
                    strArr2[1] = "gHgyVSON2W8zeI";
                    String optString = A053.optString(A08(226, 10, 75));
                    this.A0C.A0A().ADs(optString);
                    this.A0C.A08(optString);
                    XK sdkContext = AnonymousClass8C.A00();
                    if (sdkContext != null) {
                        sdkContext.A08(optString);
                    }
                    A0E(A053.optJSONObject(A08(197, 17, 39)));
                    C01611n r7 = new C01611n(A053, A052, this.A08.A08, A052.A0C());
                    if (this.A06 == null) {
                        String adapterName = A08(177, 20, 113);
                        C0588Jl A024 = C0588Jl.A02(AdErrorType.UNKNOWN_ERROR, adapterName);
                        this.A0C.A0A().A4Z(A024.A04().getErrorCode(), adapterName);
                        this.A07.A0F(A024);
                        return;
                    }
                    A0Q(adapter, r4, A042, r7);
                    return;
                }
                throw new RuntimeException();
            }
            String adapterName2 = A08(147, 18, 55);
            C0588Jl A025 = C0588Jl.A02(AdErrorType.UNKNOWN_ERROR, adapterName2);
            this.A0C.A0A().A4Z(A025.A04().getErrorCode(), adapterName2);
            this.A07.A0F(A025);
        }
    }

    /* JADX INFO: Multiple debug info for r4v0 'this'  com.facebook.ads.redexgen.X.SJ: [D('e' com.facebook.ads.redexgen.X.Jm), D('bidPayload' com.facebook.ads.redexgen.X.Jw)] */
    private final void A0D(@Nullable String str, @Nullable AdExperienceType adExperienceType) {
        boolean z;
        AnonymousClass0R A0A2 = this.A0C.A0A();
        if (str != null) {
            z = true;
        } else {
            z = false;
        }
        A0A2.A4a(z);
        this.A04 = System.currentTimeMillis();
        if (Build.VERSION.SDK_INT < 17) {
            AA7(new C0588Jl(AdErrorType.API_NOT_SUPPORTED, A08(0, 0, 73)));
            return;
        }
        try {
            this.A06 = this.A08.A01(this.A0C, new C0598Jw(this.A0C, str, this.A08.A08, this.A08.A07), adExperienceType);
            if (A0F[6].charAt(21) != '6') {
                String[] strArr = A0F;
                strArr[4] = "3q2wB1pMY3UXfOrLgu";
                strArr[1] = "CsXqAZILgfX2KA";
                this.A0B.A0Q(this.A06);
                return;
            }
            throw new RuntimeException();
        } catch (C0589Jm e) {
            AA7(C0588Jl.A03(e));
        }
    }

    private void A0E(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            this.A03 = jSONObject.optString(A08(165, 12, 93));
            C01420u.A0H(jSONObject);
        }
    }

    public final long A0F() {
        C03408w r0 = this.A05;
        if (r0 != null) {
            return r0.A03();
        }
        return -1;
    }

    public final Handler A0G() {
        return A0G;
    }

    public final C03418x A0H() {
        C03408w r0 = this.A05;
        if (r0 == null) {
            return null;
        }
        return r0.A05();
    }

    @Nullable
    public final String A0I() {
        AbstractC01350n r0 = this.A02;
        if (r0 == null) {
            return null;
        }
        return r0.A5x();
    }

    public final void A0J() {
        this.A0C.A0A().A2h(LZ.A01(this.A04));
        if (this.A02 != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(A08(214, 12, 38), LZ.A04(this.A04));
            new JJ(this.A02.A5x(), this.A09).A03(JI.A08, hashMap);
        }
    }

    public final void A0K() {
        AbstractC01350n r3 = this.A02;
        String A082 = A08(142, 3, 37);
        if (r3 == null) {
            String A083 = A08(22, 26, 7);
            this.A0C.A04().A8V(A082, C03228e.A0F, new C03238f(A083));
            AdErrorType adErrorType = AdErrorType.INTERNAL_ERROR;
            this.A0C.A0A().A4Z(adErrorType.getErrorCode(), A083);
            this.A07.A0F(C0588Jl.A02(adErrorType, adErrorType.getDefaultErrorMessage()));
            this.A0C.A0A().A4c();
        } else if (this.A0D) {
            String A084 = A08(124, 18, 67);
            this.A0C.A04().A8V(A082, C03228e.A0C, new C03238f(A084));
            AdErrorType adErrorType2 = AdErrorType.AD_ALREADY_STARTED;
            this.A0C.A0A().A4Z(adErrorType2.getErrorCode(), A084);
            this.A07.A0F(C0588Jl.A02(adErrorType2, adErrorType2.getDefaultErrorMessage()));
            this.A0C.A0A().A4b();
        } else {
            if (!TextUtils.isEmpty(this.A02.A5x())) {
                this.A09.A8m(this.A02.A5x());
            }
            this.A0C.A0A().A4d();
            this.A0D = true;
            A0N();
        }
    }

    public final void A0L() {
        A0W(false);
    }

    public final void A0M() {
        String str = this.A03;
        if (str != null) {
            C01420u.A0E(str);
        }
    }

    public final synchronized void A0O() {
        A0G.post(new SH(this));
    }

    public final void A0P(AbstractC01350n r1) {
        if (r1 != null) {
            r1.onDestroy();
        }
    }

    public final void A0R(AbstractC01360o r1) {
        this.A07 = r1;
    }

    public final void A0S(C01611n r5) {
        this.A0C.A0A().A4W();
        String optString = r5.A03().optString(A08(145, 2, 71));
        if (!TextUtils.isEmpty(optString)) {
            new JJ(optString, this.A09).A03(JI.A04, null);
        }
    }

    public void A0T(@Nullable String str) {
        A0D(str, null);
    }

    public final void A0U(@Nullable String str) {
        A0T(str);
    }

    public final void A0V(@Nullable String str, @Nullable AdExperienceType adExperienceType) {
        A0D(str, adExperienceType);
    }

    public final void A0W(boolean z) {
        if (z || this.A0D) {
            this.A0C.A0A().A4e();
            A0P(this.A02);
            this.A00 = null;
            this.A0D = false;
        }
    }

    public final boolean A0X() {
        C03408w r0 = this.A05;
        return r0 == null || r0.A0A();
    }

    @Override // com.facebook.ads.redexgen.X.KD
    public final synchronized void AA7(C0588Jl jl) {
        A0G().post(new SI(this, jl));
    }

    @Override // com.facebook.ads.redexgen.X.KD
    public final synchronized void ABk(C1155cP cPVar) {
        A0G().post(new SG(this, cPVar));
    }
}
