package com.facebook.ads.redexgen.X;

import android.content.Context;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedAdListener;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.api.Repairable;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.EnumSet;

/* renamed from: com.facebook.ads.redexgen.X.58  reason: invalid class name */
public final class AnonymousClass58 implements InterstitialAdApi, Repairable {
    public static byte[] A04;
    public static String[] A05;
    public final InterstitialAd A00;
    public final C01691v A01;
    public final F1 A02 = new F1(this.A01);
    public final XJ A03;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = copyOfRange[i4] - i3;
            if (A05[0].charAt(22) != '3') {
                throw new RuntimeException();
            }
            A05[4] = "dLq0XFJawohP2A9uDPm8W8ZKhW9iXRhW";
            copyOfRange[i4] = (byte) (i5 - 126);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-29, 19, -33, 20, -27, 19, 17, 18, -69, -73, -25, -69, -23, -66, -22, -68, 38, 36, 82, 36, 83, 84, 81, 33, -49, -12, -6, -21, -8, -12, -25, -14, -90, -21, -8, -8, -11, -8, -76, -112, -29, 8, 14, -1, 12, 13, 14, 3, 14, 3, -5, 6, -70, -5, -2, -70, -2, -1, 13, 14, 12, 9, 19, -1, -2, -56, -19, -13, -28, -15, -14, -13, -24, -13, -24, -32, -21, -97, -32, -29, -97, -21, -18, -32, -29, -97, -15, -28, -16, -12, -28, -14, -13, -28, -29, -18, 19, 25, 10, 23, 24, 25, 14, 25, 14, 6, 17, -59, 6, 9, -59, 24, 13, 20, 28, -59, 8, 6, 17, 17, 10, 9, -10, -9, 5, 6, 4, 1, 11, -28, -17, -52, -17, -31, -28, -63, -28, 49, 38, 45, 53};
    }

    public static void A02() {
        A05 = new String[]{"S822El9zG6GuADGrtluuLX363osWhxiG", "ZFI3hp6NIHNPBZ8p7tKJKM6DxTur89gU", "rKe2xKovfMLHVnc2kJBHIfRtW7KI2joW", "CTsEdbmp9bu3ZhSS7yZH02ALmjP1FNtP", "mPYAOoIIU9PuPwOlU3lFT13mhy9mIxzC", "", "", "HqZNdyzgU2LJRhG9zHJvoyCPzWSUAGCn"};
    }

    public AnonymousClass58(Context context, String str, InterstitialAd interstitialAd) {
        this.A00 = interstitialAd;
        this.A03 = AnonymousClass56.A03(context);
        this.A03.A0A().A2j(AdPlacementType.INTERSTITIAL.toString(), str);
        this.A01 = new C01691v(this.A03, interstitialAd, str);
        this.A03.A0C(this);
    }

    public final void A03(InterstitialAdListener interstitialAdListener) {
        boolean z;
        AnonymousClass0R A0A = this.A03.A0A();
        if (interstitialAdListener != null) {
            z = true;
        } else {
            z = false;
        }
        A0A.A2c(z);
        this.A01.A0D(interstitialAdListener);
        if (A05[0].charAt(22) != '3') {
            throw new RuntimeException();
        }
        A05[4] = "rYQ6gTbtajntBm3fXVm84HcfyQ9ACN8J";
    }

    public final void A04(RewardData rewardData) {
        this.A01.A0E(rewardData);
    }

    public final void A05(RewardedAdListener rewardedAdListener) {
        this.A01.A0F(rewardedAdListener);
    }

    public final void A06(EnumSet<CacheFlag> enumSet, @Nullable String str) {
        C0601Jz.A05(A00(129, 8, 2), A00(65, 30, 1), A00(16, 8, 113));
        if (str == null) {
            this.A03.A0A().A2g();
        } else {
            this.A03.A0A().A2f();
        }
        this.A02.A08(this.A00, enumSet, str);
        this.A03.A0A().A2e();
    }

    @Override // com.facebook.ads.FullScreenAd, com.facebook.ads.internal.api.InterstitialAdApi
    public final InterstitialAd.InterstitialAdLoadConfigBuilder buildLoadAdConfig() {
        return new AnonymousClass59(this);
    }

    @Override // com.facebook.ads.FullScreenAd, com.facebook.ads.internal.api.InterstitialAdApi
    public final InterstitialAd.InterstitialAdShowConfigBuilder buildShowAdConfig() {
        return new AnonymousClass5A();
    }

    @Override // com.facebook.ads.Ad
    public final void destroy() {
        C0601Jz.A05(A00(122, 7, 20), A00(40, 25, 28), A00(0, 8, 49));
        if (!J4.A1L(this.A03)) {
            this.A02.A05();
            this.A03.A0A().A2k();
        }
    }

    public final void finalize() {
        this.A02.A04();
    }

    @Override // com.facebook.ads.Ad
    public final String getPlacementId() {
        return this.A01.A09();
    }

    @Override // com.facebook.ads.Ad
    public final boolean isAdInvalidated() {
        boolean A09 = this.A02.A09();
        this.A03.A0A().A4Y(A09);
        return A09;
    }

    @Override // com.facebook.ads.internal.api.InterstitialAdApi
    public final boolean isAdLoaded() {
        return this.A02.A0A();
    }

    @Override // com.facebook.ads.Ad
    public final void loadAd() {
        A06(CacheFlag.ALL, null);
    }

    @Override // com.facebook.ads.internal.api.InterstitialAdApi
    public final void loadAd(InterstitialAd.InterstitialLoadAdConfig interstitialLoadAdConfig) {
        ((AnonymousClass59) interstitialLoadAdConfig).A00();
    }

    @Override // com.facebook.ads.internal.api.Repairable
    public final void repair(Throwable th) {
        if (this.A01.A02() != null) {
            InterstitialAdListener A022 = this.A01.A02();
            InterstitialAd interstitialAd = this.A00;
            A022.onError(interstitialAd, new AdError(AdError.INTERNAL_ERROR_CODE, A00(24, 16, 8) + LQ.A03(this.A03, th)));
        }
    }

    @Override // com.facebook.ads.Ad, com.facebook.ads.internal.api.InterstitialAdApi
    @Deprecated
    public final void setExtraHints(ExtraHints extraHints) {
        this.A01.A0H(extraHints.getHints());
        this.A01.A0I(extraHints.getMediationData());
    }

    @Override // com.facebook.ads.FullScreenAd, com.facebook.ads.internal.api.InterstitialAdApi
    public final boolean show() {
        C0601Jz.A05(A00(137, 4, 64), A00(95, 27, 39), A00(8, 8, 7));
        this.A03.A0A().A2p();
        boolean A0B = this.A02.A0B(this.A00, new AnonymousClass5A());
        this.A03.A0A().A2o(A0B);
        return A0B;
    }

    @Override // com.facebook.ads.internal.api.InterstitialAdApi
    public final boolean show(InterstitialAd.InterstitialShowAdConfig interstitialShowAdConfig) {
        this.A03.A0A().A2p();
        boolean A0B = this.A02.A0B(this.A00, interstitialShowAdConfig);
        this.A03.A0A().A2o(A0B);
        return A0B;
    }
}
