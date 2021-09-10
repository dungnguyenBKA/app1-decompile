package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.VideoAutoplayBehavior;
import com.facebook.ads.internal.api.NativeAdApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.5C  reason: invalid class name */
public final class AnonymousClass5C implements NativeAdApi {
    public static String[] A02;
    public final NativeAd A00;
    public final NativeAdBaseApi A01;

    static {
        A01();
    }

    public static void A01() {
        A02 = new String[]{"mRGpAzErj1xKeHc9WkF3Ujy7h38joZC8", "9wVKpObP8FA1o7oyYWhkpjh48o8VAcWp", "pz3BbJjT9xlHe4B2EghGg76rolJKqfV", "txN8wQ5fkL3IFh565s3Q1NMKA4RH7CNr", "KrzK51p50C2Qp4g1XOaXdDfTUeF", "0wnkiGzVks6qBKMatIgqU8hY2PaKlPy", "GWxCKnjCJrIvVlnjjEtvZJVKWYpK", "UfKYcBFUD7Ap"};
    }

    public AnonymousClass5C(NativeAd nativeAd, NativeAdBaseApi nativeAdBaseApi) {
        this.A00 = nativeAd;
        this.A01 = nativeAdBaseApi;
        C1143cD.A0J(nativeAdBaseApi).A1X(EnumC0593Jr.A05);
    }

    public AnonymousClass5C(NativeAdBase nativeAdBase, NativeAd nativeAd, NativeAdBaseApi nativeAdBaseApi) {
        this.A00 = nativeAd;
        this.A01 = nativeAdBaseApi;
    }

    private C1143cD A00() {
        return C1143cD.A0J(this.A01);
    }

    @Nullable
    public final String A02() {
        return A00().A1E();
    }

    @Nullable
    public final String A03() {
        return A00().A1F();
    }

    @Nullable
    public final List<NativeAd> A04() {
        if (A00().A1H() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (C1143cD cDVar : A00().A1H()) {
            arrayList.add(new NativeAd(cDVar.A11(), cDVar));
        }
        return arrayList;
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final NativeAd.AdCreativeType getAdCreativeType() {
        if (!TextUtils.isEmpty(A00().A1F())) {
            return NativeAd.AdCreativeType.VIDEO;
        }
        if (A00().A1H() != null && !A00().A1H().isEmpty()) {
            return NativeAd.AdCreativeType.CAROUSEL;
        }
        if (A00().getAdCoverImage() == null || TextUtils.isEmpty(A00().getAdCoverImage().getUrl())) {
            return NativeAd.AdCreativeType.UNKNOWN;
        }
        NativeAd.AdCreativeType adCreativeType = NativeAd.AdCreativeType.IMAGE;
        String[] strArr = A02;
        if (strArr[7].length() != strArr[6].length()) {
            String[] strArr2 = A02;
            strArr2[7] = "AqlRmswAejgv";
            strArr2[6] = "RNgsy314kOszGsZ2llWC7eCbS6WS";
            return adCreativeType;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final VideoAutoplayBehavior getVideoAutoplayBehavior() {
        return EnumC0581Jd.A00(A00().A17());
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView) {
        registerViewForInteraction(view, mediaView, (MediaView) null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable ImageView imageView) {
        registerViewForInteraction(view, mediaView, imageView, (List<View>) null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable ImageView imageView, @Nullable List<View> list) {
        if (imageView != null) {
            XJ A11 = A00().A11();
            XJ A022 = AnonymousClass56.A02(imageView.getContext());
            A022.A0D(A11);
            C1143cD.A0h(A00().getAdIcon(), imageView, A022);
        }
        registerViewForInteraction(view, mediaView, (MediaView) null, list);
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable MediaView mediaView2) {
        registerViewForInteraction(view, mediaView, mediaView2, (List<View>) null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable MediaView mediaView2, @Nullable List<View> list) {
        if (mediaView != null) {
            ((C0836Th) mediaView.getMediaViewApi()).A0I(this.A00);
        }
        if (mediaView2 != null) {
            ((C0836Th) mediaView2.getMediaViewApi()).A0J(this.A01, false);
        }
        if (list != null) {
            A00().A1O(view, mediaView, list);
            return;
        }
        C1143cD A002 = A00();
        if (A02[4].length() != 7) {
            A02[1] = "MBrHnoNt0t7c904xRN41qBo9Q6s9Di6J";
            A002.A1N(view, mediaView);
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, @Nullable List<View> list) {
        registerViewForInteraction(view, mediaView, (MediaView) null, list);
    }
}
