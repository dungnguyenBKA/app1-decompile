package com.facebook.ads.redexgen.X;

import android.content.Context;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
import com.facebook.ads.internal.api.Repairable;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.5N  reason: invalid class name */
public final class AnonymousClass5N implements RewardedVideoAdApi, Repairable {
    public static byte[] A04;
    public static String[] A05;
    public final RewardedVideoAd A00;
    public final C01731z A01;
    public final F0 A02 = new F0(this.A01);
    public final XJ A03;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 4);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{116, 118, 123, 117, 123, 123, -93, 117, -93, -89, -88, -94, -44, -95, -43, -90, -127, -122, Byte.MAX_VALUE, -123, Byte.MAX_VALUE, Byte.MAX_VALUE, -79, -78, 74, 70, 119, 76, 74, 69, 78, 76, 82, 119, 125, 110, 123, 119, 106, 117, 41, 110, 123, 123, 120, 123, 55, 19, -51, -32, -14, -36, -19, -33, -32, -33, -101, -15, -28, -33, -32, -22, -101, -36, -33, -101, -33, -32, -18, -17, -19, -22, -12, -32, -33, -81, -62, -44, -66, -49, -63, -62, -63, 125, -45, -58, -63, -62, -52, 125, -66, -63, 125, -55, -52, -66, -63, 125, -49, -62, -50, -46, -62, -48, -47, -62, -63, -63, -44, -26, -48, -31, -45, -44, -45, -113, -27, -40, -45, -44, -34, -113, -48, -45, -113, -30, -41, -34, -26, -113, -46, -48, -37, -37, -44, -45, -86, -85, -71, -70, -72, -75, -65, -84, -81, -95, -92, -127, -92, -43, -54, -47, -39};
    }

    public static void A02() {
        A05 = new String[]{"q8F3UYcndC8Ej6EzPObAfC2CDIoe743", "WHSSbjkejcnDJnmz9i28DmVQ7s5doV", "7Ae3C11G9ZnRQnjC1YEsbkjNlyvjMOhJ", "xIErM25UzhDXOZX5lXVK71ghnZu2uIsx", "TpWxEHvEZyAqJcOvGEooXr2tQ3t7MLKT", "CpjtrdZmrEbCE1OZgZlStH8uGVShpb", "AnU5GMoet7ZaRK4jG6aRRqRoHnPXG1EV", "P"};
    }

    public AnonymousClass5N(Context context, String str, RewardedVideoAd rewardedVideoAd) {
        this.A00 = rewardedVideoAd;
        this.A03 = AnonymousClass56.A05(context);
        this.A03.A0A().A2j(AdPlacementType.REWARDED_VIDEO.toString(), str);
        this.A01 = new C01731z(this.A03, str, this.A00);
        this.A03.A0C(this);
    }

    public final void A03(RewardData rewardData) {
        this.A02.A08(rewardData);
    }

    public final void A04(RewardedVideoAdListener rewardedVideoAdListener) {
        boolean z;
        this.A01.A04 = rewardedVideoAdListener;
        AnonymousClass0R A0A = this.A03.A0A();
        if (rewardedVideoAdListener != null) {
            z = true;
        } else {
            z = false;
        }
        A0A.A2c(z);
    }

    public final void A05(@Nullable String str, @Nullable AdExperienceType adExperienceType, boolean z) {
        if (str == null) {
            this.A03.A0A().A2g();
        } else {
            XJ xj = this.A03;
            if (A05[1].length() != 30) {
                throw new RuntimeException();
            }
            A05[1] = "VbNMcinO8suVZXvBDeNnaTURWjAwCx";
            xj.A0A().A2f();
        }
        this.A02.A09(this.A00, str, adExperienceType, z);
        this.A03.A0A().A2e();
    }

    @Override // com.facebook.ads.FullScreenAd, com.facebook.ads.internal.api.RewardedVideoAdApi
    public final RewardedVideoAd.RewardedVideoAdLoadConfigBuilder buildLoadAdConfig() {
        return new AnonymousClass5O(this);
    }

    @Override // com.facebook.ads.FullScreenAd, com.facebook.ads.internal.api.RewardedVideoAdApi
    public final RewardedVideoAd.RewardedVideoAdShowConfigBuilder buildShowAdConfig() {
        return new AnonymousClass5P();
    }

    @Override // com.facebook.ads.Ad, com.facebook.ads.internal.api.RewardedVideoAdApi
    public final void destroy() {
        C0601Jz.A05(A00(136, 7, 66), A00(48, 27, 119), A00(24, 8, 17));
        if (!J4.A1L(this.A03)) {
            this.A02.A05();
            this.A03.A0A().A2k();
        }
    }

    public final void finalize() {
        this.A02.A04();
    }

    @Override // com.facebook.ads.Ad, com.facebook.ads.internal.api.RewardedVideoAdApi
    public final String getPlacementId() {
        return this.A01.A0C;
    }

    @Override // com.facebook.ads.internal.api.RewardedVideoAdApi
    public final int getVideoDuration() {
        return this.A01.A00;
    }

    @Override // com.facebook.ads.Ad
    public final boolean isAdInvalidated() {
        boolean A0A = this.A02.A0A();
        this.A03.A0A().A4Y(A0A);
        return A0A;
    }

    @Override // com.facebook.ads.internal.api.RewardedVideoAdApi
    public final boolean isAdLoaded() {
        return this.A02.A0B();
    }

    @Override // com.facebook.ads.Ad, com.facebook.ads.internal.api.RewardedVideoAdApi
    public final void loadAd() {
        C0601Jz.A05(A00(143, 6, 60), A00(75, 32, 89), A00(8, 8, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS));
        A05(null, null, true);
    }

    @Override // com.facebook.ads.internal.api.RewardedVideoAdApi
    public final void loadAd(RewardedVideoAd.RewardedVideoLoadAdConfig rewardedVideoLoadAdConfig) {
        ((AnonymousClass5O) rewardedVideoLoadAdConfig).A00();
    }

    @Override // com.facebook.ads.internal.api.Repairable
    public final void repair(Throwable th) {
        if (this.A01.A04 != null) {
            RewardedVideoAdListener rewardedVideoAdListener = this.A01.A04;
            RewardedVideoAd rewardedVideoAd = this.A00;
            rewardedVideoAdListener.onError(rewardedVideoAd, new AdError(AdError.INTERNAL_ERROR_CODE, A00(32, 16, 5) + LQ.A03(this.A01.A0B, th)));
        }
    }

    @Override // com.facebook.ads.Ad, com.facebook.ads.internal.api.RewardedVideoAdApi
    @Deprecated
    public final void setExtraHints(ExtraHints extraHints) {
        this.A01.A06 = extraHints.getHints();
        this.A01.A07 = extraHints.getMediationData();
    }

    @Override // com.facebook.ads.FullScreenAd, com.facebook.ads.internal.api.RewardedVideoAdApi
    public final boolean show() {
        C0601Jz.A05(A00(149, 4, 94), A00(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 29, FacebookMediationAdapter.ERROR_NULL_CONTEXT), A00(16, 8, 74));
        this.A03.A0A().A2p();
        boolean A0C = this.A02.A0C(this.A00, new AnonymousClass5P().withAppOrientation(-1).build());
        this.A03.A0A().A2o(A0C);
        return A0C;
    }

    @Override // com.facebook.ads.internal.api.RewardedVideoAdApi
    public final boolean show(RewardedVideoAd.RewardedVideoShowAdConfig rewardedVideoShowAdConfig) {
        C0601Jz.A05(A00(149, 4, 94), A00(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 29, FacebookMediationAdapter.ERROR_NULL_CONTEXT), A00(0, 8, 62));
        this.A03.A0A().A2p();
        boolean A0C = this.A02.A0C(this.A00, rewardedVideoShowAdConfig);
        this.A03.A0A().A2o(A0C);
        return A0C;
    }
}
