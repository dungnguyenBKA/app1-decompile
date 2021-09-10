package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Sk  reason: case insensitive filesystem */
public final class C0815Sk extends AnonymousClass20 implements S2SRewardedVideoAdExtendedListener {
    public static byte[] A02;
    public final C0808Sd A00;
    public final C01731z A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 24);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{103, 96, 122, 113, 107, 124, 124, 97, 124, 113, 109, 97, 106, 107, 113, 101, 107, 119, 34, 37, 63, 52, 57, 61, 52, 61, 34, 47, 46, 36, 52, 47, 62, 57, 42, 63, 34, 36, 37, 52, 32, 46, 50, 62, 61, 60, 53, 45, 59, 60, 36, 51, 62, 59, 54, 51, 38, 59, 61, 60, 45, 38, 59, 63, 55, 45, 57, 55, 43, 74, 77, 75, 70, 92, 75, 75, 86, 75, 70, 84, 92, 74, 74, 88, 94, 92, 70, 82, 92, 64};
    }

    public C0815Sk(String str, AnonymousClass22 r2, C0808Sd sd, C01731z r4) {
        super(str, r2);
        this.A00 = sd;
        this.A01 = r4;
    }

    @Override // com.facebook.ads.AdListener
    public final void onAdClicked(Ad ad) {
        super.A00.AAq(2104, super.A01, null);
    }

    @Override // com.facebook.ads.AdListener
    public final void onAdLoaded(Ad ad) {
        Bundle bundle = new Bundle();
        bundle.putLong(A00(43, 26, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE), this.A00.A0C());
        bundle.putInt(A00(18, 25, 115), this.A01.A00);
        super.A00.AAq(AdError.BROKEN_MEDIA_ERROR_CODE, super.A01, bundle);
    }

    @Override // com.facebook.ads.AdListener
    public final void onError(Ad ad, AdError adError) {
        Bundle bundle = new Bundle();
        bundle.putString(A00(69, 21, 1), adError.getErrorMessage());
        bundle.putInt(A00(0, 18, 54), adError.getErrorCode());
        super.A00.AAq(2103, super.A01, bundle);
    }

    @Override // com.facebook.ads.RewardedVideoAdListener, com.facebook.ads.AdListener
    public final void onLoggingImpression(Ad ad) {
        super.A00.AAq(2105, super.A01, null);
    }

    @Override // com.facebook.ads.S2SRewardedVideoAdListener
    public final void onRewardServerFailed() {
        super.A00.AAq(3002, super.A01, null);
    }

    @Override // com.facebook.ads.S2SRewardedVideoAdListener
    public final void onRewardServerSuccess() {
        super.A00.AAq(AdError.MEDIATION_ERROR_CODE, super.A01, null);
    }

    @Override // com.facebook.ads.RewardedVideoAdExtendedListener
    public final void onRewardedVideoActivityDestroyed() {
        super.A00.AAq(2106, super.A01, null);
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public final void onRewardedVideoClosed() {
        super.A00.AAq(2110, super.A01, null);
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public final void onRewardedVideoCompleted() {
        super.A00.AAq(3000, super.A01, null);
    }
}
