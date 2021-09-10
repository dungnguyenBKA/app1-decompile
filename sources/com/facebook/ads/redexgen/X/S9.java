package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.proguard.annotations.DoNotStrip;
import java.util.Arrays;
import java.util.EnumSet;
import org.json.JSONObject;

public final class S9 implements AbstractC01440w {
    public static byte[] A05;
    public static String[] A06;
    @Nullable
    public AnonymousClass7D A00;
    public EnumC0679Nd A01 = EnumC0679Nd.A06;
    @Nullable
    @DoNotStrip
    public OS A02;
    public final S1 A03;
    public final AbstractC01481a A04;

    static {
        A08();
        A07();
    }

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 96);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A05 = new byte[]{-97, -39, -27, -34, -35, -81, -44, -38, -53, -40, -44, -57, -46, -122, -85, -40, -40, -43, -40, -122, -104, -106, -106, -100, -122, -35, -49, -38, -50, -43, -37, -38, -122, -57, -122, -36, -57, -46, -49, -54, -122, -89, -54, -81, -44, -52, -43, -108, 31, 34, 29, 34, 31, 50, 31, 29, 32, 51, 44, 34, 42, 35, -45, -30, -37, -53, -48, -42, -57, -44, -43, -42, -53, -42, -53, -61, -50};
    }

    public static void A08() {
        A06 = new String[]{"jJreqFAWfQsm2UlBXjWleQZy51A8w9r3", "B5vxrqY9e1pfFDILbPSJEQZe5Zep9JAF", "7hwRhDIA2xM98ucsNVPICP0872", "8yYdfjKxcW1uK5E8nS4F9bT", "cwoTvwLLOWGZrFwonmn2qn9xu", "wuc4L", "VoE60CbUCih", "1JGxuEjawtyxaKItdz1AQ1lnM"};
    }

    public S9(XJ xj, C01611n r3, AbstractC01481a r4, @Nullable String str) {
        this.A03 = A02(xj, r3, str, r3.A03());
        this.A04 = r4;
    }

    @Nullable
    private AdError A00(XJ xj) {
        if (!this.A03.A0a().isEmpty()) {
            return null;
        }
        xj.A04().A8V(A06(62, 3, 18), C03228e.A0O, new C03238f(A06(5, 43, 6)));
        return AdError.internalError(AdError.INTERNAL_ERROR_2006);
    }

    public static S1 A02(XJ xj, C01611n r2, @Nullable String str, JSONObject jSONObject) {
        S1 adDataBundle = S1.A02(jSONObject, xj);
        adDataBundle.A0f(str);
        C03418x A012 = r2.A01();
        if (A012 != null) {
            adDataBundle.A0d(A012.A06());
        }
        return adDataBundle;
    }

    private AnonymousClass7D A04(XJ xj) {
        AnonymousClass7D r0 = this.A00;
        return r0 != null ? r0 : new AnonymousClass7D(xj);
    }

    /* JADX INFO: Multiple debug info for r0v16 com.facebook.ads.redexgen.X.JJ: [D('funnelLoggingHandler' com.facebook.ads.redexgen.X.JJ), D('cacheHelper' com.facebook.ads.redexgen.X.1f)] */
    private void A09(XJ xj, EnumSet<CacheFlag> enumSet) {
        EnumC0679Nd nd;
        AnonymousClass1U A062 = this.A03.A0N().A0E().A06();
        if (A062 != null) {
            nd = A062.A0B();
        } else {
            nd = EnumC0679Nd.A06;
        }
        A0B(nd);
        S8 s8 = new S8(this);
        AnonymousClass7D r6 = new AnonymousClass7D(xj);
        C01531f r3 = new C01531f(this, this.A03, A06(65, 12, 2), r6);
        if (r3.A09()) {
            r6.A0Z(new JJ(this.A03.A0T(), xj.A06()));
            r3.A08();
            return;
        }
        S1 s1 = this.A03;
        if (A06[5].length() != 5) {
            throw new RuntimeException();
        }
        A06[5] = "kxumv";
        C01581k.A03(xj, s1, true, s8);
    }

    /* JADX INFO: Multiple debug info for r3v14 com.facebook.ads.redexgen.X.19: [D('funnelLoggingHandler' com.facebook.ads.redexgen.X.JJ), D('adInfo' com.facebook.ads.redexgen.X.19)] */
    private void A0A(XJ xj, EnumSet<CacheFlag> enumSet) {
        AnonymousClass7D A042 = A04(xj);
        A042.A0Z(new JJ(this.A03.A0T(), xj.A06()));
        S1 s1 = this.A03;
        String A062 = A06(65, 12, 2);
        C01531f r3 = new C01531f(this, s1, A062, A042);
        if (r3.A09()) {
            r3.A08();
            return;
        }
        boolean A0m = this.A03.A0m();
        if (A0m) {
            AnonymousClass7C r8 = new AnonymousClass7C(this.A03.A0U(), this.A03.A0Y(), A062);
            r8.A04 = true;
            r8.A03 = A06(0, 5, 17);
            A042.A0V(r8);
        }
        A042.A0U(new AnonymousClass7A(this.A03.A0Q().A01(), C0719Os.A04, C0719Os.A04, this.A03.A0Y(), A06(65, 12, 2)));
        boolean contains = enumSet.contains(CacheFlag.VIDEO);
        int i = 0;
        boolean A1t = J4.A1t(xj, C0751Py.A04());
        for (AnonymousClass19 adInfo : this.A03.A0a()) {
            AnonymousClass7A r14 = new AnonymousClass7A(adInfo.A0E().A07(), C01541g.A00(adInfo.A0E()), C01541g.A01(adInfo.A0E()), this.A03.A0Y(), A06(65, 12, 2));
            if (i == 0) {
                A042.A0T(r14);
            } else {
                A042.A0U(r14);
            }
            for (String str : adInfo.A0H().A00()) {
                A042.A0U(new AnonymousClass7A(str, -1, -1, this.A03.A0Y(), A06(65, 12, 2)));
            }
            if (contains && !TextUtils.isEmpty(adInfo.A0E().A08())) {
                AnonymousClass7C r142 = new AnonymousClass7C(adInfo.A0E().A08(), this.A03.A0Y(), A06(65, 12, 2), adInfo.A0E().A05());
                r142.A04 = false;
                if (i == 0) {
                    if (!A0m || A1t) {
                        A042.A0Y(r142);
                    } else {
                        A042.A0V(r142);
                    }
                } else if (!A0m || A1t) {
                    A042.A0X(r142);
                } else {
                    A042.A0W(r142);
                }
            }
            i++;
        }
        A042.A0S(new S7(this, xj, A0m), new AnonymousClass76(this.A03.A0Y(), A062));
    }

    private void A0B(EnumC0679Nd nd) {
        this.A01 = nd;
    }

    public final KK A0C() {
        if (this.A03.A0m()) {
            return KK.A03;
        }
        int size = this.A03.A0a().size();
        String[] strArr = A06;
        if (strArr[6].length() != strArr[2].length()) {
            A06[3] = "f4kXngrP8CD5dz";
            if (size > 1) {
                return KK.A06;
            }
            if (this.A03.A0N().A0E().A06() != null) {
                KK kk = KK.A08;
                String[] strArr2 = A06;
                if (strArr2[7].length() == strArr2[4].length()) {
                    A06[3] = "ny";
                    return kk;
                }
            } else if (A0I()) {
                KK kk2 = KK.A09;
                String[] strArr3 = A06;
                if (strArr3[6].length() != strArr3[2].length()) {
                    A06[3] = "JH";
                    return kk2;
                }
                throw new RuntimeException();
            } else {
                KK kk3 = KK.A07;
                if (A06[3].length() != 32) {
                    String[] strArr4 = A06;
                    strArr4[1] = "93R6MUXHMTxUt8WfLt1oZ3ea5zubl3sl";
                    strArr4[0] = "9xXPI1nVQC4CSUB4soKlPH985bh9DAt9";
                    return kk3;
                }
                A06[3] = "ySAy4b6nQ";
                return kk3;
            }
        }
        throw new RuntimeException();
    }

    public final EnumC0679Nd A0D() {
        return this.A01;
    }

    public final String A0E() {
        return this.A03.A0T();
    }

    public final void A0F() {
        this.A04.AEP();
    }

    public final void A0G(Intent intent, RewardData rewardData, String str) {
        this.A03.A0e(rewardData);
        this.A03.A0h(str);
        intent.putExtra(A06(48, 14, 94), this.A03);
    }

    public final void A0H(XJ xj, EnumSet<CacheFlag> enumSet) {
        AdError A002 = A00(xj);
        if (A002 != null) {
            this.A04.A9J(A002);
            return;
        }
        this.A04.ACw();
        if (A0C() == KK.A08) {
            A09(xj, enumSet);
        } else {
            A0A(xj, enumSet);
        }
    }

    public final boolean A0I() {
        return !TextUtils.isEmpty(this.A03.A0N().A0E().A08());
    }

    public final boolean A0J() {
        return this.A03.A0k();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01440w
    public final void A9g() {
        this.A04.A9K();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01440w
    public final void A9h() {
        this.A04.A9J(AdError.CACHE_ERROR);
    }
}
