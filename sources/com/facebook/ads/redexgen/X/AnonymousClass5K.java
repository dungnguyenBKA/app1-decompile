package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.facebook.ads.MediaView;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeBannerAdApi;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.5K  reason: invalid class name */
public final class AnonymousClass5K implements NativeBannerAdApi {
    public static byte[] A01;
    public static String[] A02;
    public final C1143cD A00;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 40);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{43, 47, 44, 24, 9, 4, 8, 3, 14, 8, 35, 8, 25, 26, 2, 31, 6};
        String[] strArr = A02;
        if (strArr[3].length() != strArr[4].length()) {
            A02[1] = "g9VMJ7KVDiHxjzY4mov6XPU8OVFxG";
            return;
        }
        throw new RuntimeException();
    }

    public static void A02() {
        A02 = new String[]{"GHtEJsCBxF6ZG8G1CCL5RBmKmDCxDlHG", "8TFtHG5", "ovYsObbmHQ4MgJZYSDt7UbSE4I8Jd3xL", "OStrwIklzSQSoVp6y3SnTe0L", "CizBuXx6tKQSK5P8xVf5ORSYZ1", "CxGaKpsxgS6bhWDX5B71lG4aeRzyf4w9", "ZUquOnXGk9BCY4cqa0yz5KxW6oH5Pvvn", "wvrH4lpYI8UyLhNBrrW8XGK9bs66R2Pk"};
    }

    public AnonymousClass5K(NativeAdBaseApi nativeAdBaseApi) {
        this.A00 = C1143cD.A0J(nativeAdBaseApi);
        this.A00.A1X(EnumC0593Jr.A04);
    }

    /* JADX INFO: Multiple debug info for r7v0 com.facebook.ads.redexgen.X.cD: [D('preloadedBitmap' android.graphics.Bitmap), D('adListener' com.facebook.ads.redexgen.X.cE)] */
    private void A03(ImageView imageView, NativeAdBaseApi nativeAdBaseApi) {
        C1143cD A0J = C1143cD.A0J(nativeAdBaseApi);
        C0843Tp tp = new C0843Tp(this, imageView, A0J);
        JY A13 = A0J.getAdIcon();
        if (A13 != null) {
            Bitmap A0I = A0J.A10().A0I(A13.getUrl());
            XJ A022 = AnonymousClass56.A02(imageView.getContext());
            if (A0I != null) {
                Drawable A05 = C1143cD.A05(A022, A0I, A0J.A1c(), A0J.A1B());
                C1143cD.A0c(A05, imageView);
                imageView.post(new C0844Tq(this, A0J, A05));
                return;
            }
            new AnonymousClass5H(A022, tp, A0J.A1c(), null).execute(new AnonymousClass5J(A13.getUrl(), A0J.A1B(), null));
            return;
        }
        AbstractC1144cE A14 = A0J.A14();
        AdErrorType adErrorType = AdErrorType.NATIVE_AD_IS_NOT_LOADED;
        A0J.A11().A0A().A2d(-1, adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
        if (A14 != null) {
            A14.AA7(C0588Jl.A01(adErrorType));
        }
        Log.e(A00(0, 17, 69), adErrorType.getDefaultErrorMessage());
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdApi
    public final void registerViewForInteraction(View view, ImageView imageView) {
        registerViewForInteraction(view, imageView, (List<View>) null);
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdApi
    public final void registerViewForInteraction(View view, ImageView imageView, @Nullable List<View> list) {
        if (imageView != null) {
            A03(imageView, this.A00);
        }
        if (list != null) {
            this.A00.A1M(view, imageView, list);
        } else {
            this.A00.A1L(view, imageView);
        }
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView) {
        registerViewForInteraction(view, mediaView, (List<View>) null);
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable List<View> list) {
        if (mediaView != null) {
            C0836Th th = (C0836Th) mediaView.getMediaViewApi();
            C1143cD cDVar = this.A00;
            String[] strArr = A02;
            if (strArr[3].length() != strArr[4].length()) {
                String[] strArr2 = A02;
                strArr2[2] = "js1TYeoyNOBe6miaJaLofzAsC6CsUfwk";
                strArr2[0] = "W1hafLFlhK2580scubVHArACmFSZlS1F";
                th.A0J(cDVar, true);
            } else {
                throw new RuntimeException();
            }
        }
        if (list != null) {
            this.A00.A1O(view, mediaView, list);
        } else {
            this.A00.A1N(view, mediaView);
        }
    }
}
