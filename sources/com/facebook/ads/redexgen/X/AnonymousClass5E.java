package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.api.NativeAdViewApi;

/* renamed from: com.facebook.ads.redexgen.X.5E  reason: invalid class name */
public final class AnonymousClass5E implements NativeAdViewApi {
    public static String[] A00;

    static {
        A02();
    }

    public static void A02() {
        A00 = new String[]{"4lhDSJeQx8ImoxNIMYyIsOpW4XJuQDgf", "lqCKp7vrLkXGNxXrvc6I3m7c", "zCZ5ygsfQGVhB3Y237HbJ1q9o76yX", "bq9vw23WcXUY1kk1BWsR1Wz1yPOY5uBm", "", "Hv6Nwq3QZSzEF0Nb8JqXMZqCHWYzLqUn", "tYYpfGiIizklMQ8", "46C5bVFnHWUcfGRcMiONp8ja9wt0MV54"};
    }

    public static View A00(XJ xj, NativeAd nativeAd, NativeAdView.Type type, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        C0578Ja ja = (C0578Ja) nativeAdViewAttributes.getInternalAttributes();
        C1143cD A0J = C1143cD.A0J(nativeAd.getInternalNativeAd());
        A0J.A1W(EnumC0579Jb.A00(type.getEnumCode()));
        A0J.A1V(ja);
        C0455Ea ea = new C0455Ea();
        NativeAdLayout nativeAdLayout = new NativeAdLayout(xj, ea);
        ea.A05(nativeAdLayout, xj, nativeAd, ja);
        nativeAdLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) (C0632Lh.A01 * ((float) type.getHeight()))));
        return nativeAdLayout;
    }

    public static View A01(XJ xj, NativeAd nativeAd, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        C1143cD A0J = C1143cD.A0J(nativeAd.getInternalNativeAd());
        C0578Ja ja = (C0578Ja) nativeAdViewAttributes.getInternalAttributes();
        A0J.A1W(EnumC0579Jb.A0B);
        A0J.A1V(ja);
        C0455Ea ea = new C0455Ea();
        NativeAdLayout nativeAdLayout = new NativeAdLayout(xj, ea);
        ea.A05(nativeAdLayout, xj, nativeAd, ja);
        return nativeAdLayout;
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd) {
        return render(context, nativeAd, (NativeAdViewAttributes) null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type) {
        return render(context, nativeAd, type, null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    @SuppressLint({"CatchGeneralException"})
    public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
        try {
            return A00(AnonymousClass56.A02(context), nativeAd, type, nativeAdViewAttributes);
        } catch (Throwable th) {
            XJ A02 = AnonymousClass56.A02(context);
            if (A00[1].length() != 17) {
                String[] strArr = A00;
                strArr[0] = "2CJ6YuIajjVObDWBrmgwGQhi0qiA6kO3";
                strArr[3] = "BzZMljeHsN6l5z4UR6G3olqVRWzg5ScF";
                return MJ.A00(A02, th);
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    @SuppressLint({"CatchGeneralException"})
    public final View render(Context context, NativeAd nativeAd, @Nullable NativeAdViewAttributes nativeAdViewAttributes) {
        try {
            return A01(AnonymousClass56.A02(context), nativeAd, nativeAdViewAttributes);
        } catch (Throwable th) {
            return MJ.A00(AnonymousClass56.A02(context), th);
        }
    }
}
