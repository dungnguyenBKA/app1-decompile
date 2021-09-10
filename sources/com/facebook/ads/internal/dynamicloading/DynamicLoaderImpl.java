package com.facebook.ads.internal.dynamicloading;

import android.content.Context;
import androidx.annotation.Nullable;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdScrollView;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.internal.api.AdOptionsViewApi;
import com.facebook.ads.internal.api.AdSettingsApi;
import com.facebook.ads.internal.api.AdSizeApi;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.api.AudienceNetworkActivityApi;
import com.facebook.ads.internal.api.AudienceNetworkAdsApi;
import com.facebook.ads.internal.api.BidderTokenProviderApi;
import com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi;
import com.facebook.ads.internal.api.InitApi;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.api.MediaViewApi;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeAdImageApi;
import com.facebook.ads.internal.api.NativeAdLayoutApi;
import com.facebook.ads.internal.api.NativeAdScrollViewApi;
import com.facebook.ads.internal.api.NativeAdViewApi;
import com.facebook.ads.internal.api.NativeAdViewAttributesApi;
import com.facebook.ads.internal.api.NativeAdViewTypeApi;
import com.facebook.ads.internal.api.NativeAdsManagerApi;
import com.facebook.ads.internal.api.NativeBannerAdApi;
import com.facebook.ads.internal.api.NativeBannerAdViewApi;
import com.facebook.ads.internal.api.NativeComponentTagApi;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import com.facebook.ads.redexgen.X.AnonymousClass50;
import com.facebook.ads.redexgen.X.AnonymousClass51;
import com.facebook.ads.redexgen.X.AnonymousClass53;
import com.facebook.ads.redexgen.X.AnonymousClass56;
import com.facebook.ads.redexgen.X.AnonymousClass57;
import com.facebook.ads.redexgen.X.AnonymousClass58;
import com.facebook.ads.redexgen.X.AnonymousClass5B;
import com.facebook.ads.redexgen.X.AnonymousClass5C;
import com.facebook.ads.redexgen.X.AnonymousClass5D;
import com.facebook.ads.redexgen.X.AnonymousClass5E;
import com.facebook.ads.redexgen.X.AnonymousClass5F;
import com.facebook.ads.redexgen.X.AnonymousClass5G;
import com.facebook.ads.redexgen.X.AnonymousClass5K;
import com.facebook.ads.redexgen.X.AnonymousClass5L;
import com.facebook.ads.redexgen.X.AnonymousClass5M;
import com.facebook.ads.redexgen.X.AnonymousClass5N;
import com.facebook.ads.redexgen.X.AnonymousClass91;
import com.facebook.ads.redexgen.X.C02434s;
import com.facebook.ads.redexgen.X.C02454u;
import com.facebook.ads.redexgen.X.C02464v;
import com.facebook.ads.redexgen.X.C02665q;
import com.facebook.ads.redexgen.X.C0578Ja;
import com.facebook.ads.redexgen.X.C0589Jm;
import com.facebook.ads.redexgen.X.C0836Th;
import com.facebook.ads.redexgen.X.C0837Ti;
import com.facebook.ads.redexgen.X.C1133c2;
import com.facebook.ads.redexgen.X.C1143cD;
import com.facebook.ads.redexgen.X.EnumC0592Jq;
import com.facebook.ads.redexgen.X.JY;
import com.facebook.ads.redexgen.X.JZ;
import com.facebook.ads.redexgen.X.TT;
import org.json.JSONObject;

public class DynamicLoaderImpl implements DynamicLoader {
    public static AdSettingsApi A00;
    public static AudienceNetworkAdsApi A01;
    public static NativeAdViewApi A02;
    public static NativeBannerAdViewApi A03;
    public static C02665q A04;
    public static String[] A05;
    public static final InitApi A06 = new AnonymousClass57();

    public static void A00() {
        A05 = new String[]{"", "hl0DpOFqxM1jfK98LJTADvCdgffrETQN", "QW5nZBv4w8ebawOaJAju5UC6DpXIEYNP", "lDXIr49IIqC5d9soZ9ZlhOdK7Sq4PNcS", "1TLrXBQAGAxZIydv1bacR9cCDSxOiDhT", "HKpyy44hPf1TiYKwXHdFJYATCyhvdc4i", "5Vop4gtsdytJgHep4xjnsMChzM034SFi", "0HGMkPnlBdCz3NKZQL2lJn"};
    }

    static {
        A00();
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public AdOptionsViewApi createAdOptionsView(Context context, NativeAdBase nativeAdBase, @Nullable NativeAdLayout nativeAdLayout, AdOptionsView.Orientation orientation, int i, AdOptionsView adOptionsView) {
        return new TT(context, nativeAdBase, nativeAdLayout, orientation, i, adOptionsView);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public AdOptionsViewApi createAdOptionsView(Context context, NativeAdBase nativeAdBase, @Nullable NativeAdLayout nativeAdLayout, AdOptionsView adOptionsView) {
        return new TT(context, nativeAdBase, nativeAdLayout, adOptionsView);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public AdSettingsApi createAdSettingsApi() {
        if (A00 == null) {
            A00 = new C02454u();
        }
        AdSettingsApi adSettingsApi = A00;
        String[] strArr = A05;
        if (strArr[5].charAt(22) != strArr[3].charAt(22)) {
            A05[7] = "zPBUQH";
            return adSettingsApi;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public AdSizeApi createAdSizeApi(int i) {
        return EnumC0592Jq.A00(i);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public AdViewApi createAdViewApi(Context context, String str, AdSize adSize, AdViewParentApi adViewParentApi, AdView adView) {
        return (AdViewApi) C02434s.A00(new C02464v(context, str, adSize, adViewParentApi, adView), AdViewApi.class);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public AdViewApi createAdViewApi(Context context, String str, String str2, AdViewParentApi adViewParentApi, AdView adView) throws Exception {
        try {
            return (AdViewApi) C02434s.A00(new C02464v(context, str, str2, adViewParentApi, adView), AdViewApi.class);
        } catch (C0589Jm e) {
            throw new Exception(e.A01());
        }
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public AudienceNetworkActivityApi createAudienceNetworkActivity(AudienceNetworkActivity audienceNetworkActivity, AudienceNetworkActivityApi audienceNetworkActivityApi) {
        return new AnonymousClass51(audienceNetworkActivity, audienceNetworkActivityApi, new AnonymousClass50(audienceNetworkActivity, audienceNetworkActivityApi));
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public AudienceNetworkAdsApi createAudienceNetworkAdsApi() {
        if (A01 == null) {
            A01 = new AnonymousClass53();
        }
        return A01;
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public BidderTokenProviderApi createBidderTokenProviderApi() {
        return getBidderTokenProviderApi();
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public DefaultMediaViewVideoRendererApi createDefaultMediaViewVideoRendererApi() {
        return new C1133c2();
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public InterstitialAdApi createInterstitialAd(Context context, String str, InterstitialAd interstitialAd) {
        return (InterstitialAdApi) C02434s.A00(new AnonymousClass58(context, str, interstitialAd), InterstitialAdApi.class);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public MediaViewApi createMediaViewApi() {
        return new C0836Th();
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public MediaViewVideoRendererApi createMediaViewVideoRendererApi() {
        return new AnonymousClass5B();
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public AnonymousClass5C createNativeAdApi(NativeAd nativeAd, NativeAdBaseApi nativeAdBaseApi) {
        return new AnonymousClass5C(nativeAd, nativeAdBaseApi);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public AnonymousClass5C createNativeAdApi(NativeAdBase nativeAdBase, NativeAd nativeAd, NativeAdBaseApi nativeAdBaseApi) {
        return new AnonymousClass5C(nativeAdBase, nativeAd, nativeAdBaseApi);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeAdBaseApi createNativeAdBaseApi(Context context, String str) {
        return new C1143cD(context, str, C1143cD.A0I(), false);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeAdBaseApi createNativeAdBaseApi(NativeAdBaseApi nativeAdBaseApi) {
        return new C1143cD((C1143cD) nativeAdBaseApi);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeAdBase createNativeAdBaseFromBidPayload(Context context, String str, String str2) throws Exception {
        try {
            return C1143cD.A0A(context, str, str2);
        } catch (C0589Jm e) {
            throw new Exception(e.A01());
        }
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    @Nullable
    public NativeAdImageApi createNativeAdImageApi(JSONObject jSONObject) {
        return JY.A00(jSONObject);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeAdLayoutApi createNativeAdLayoutApi() {
        return new C0837Ti();
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    @Nullable
    public JZ createNativeAdRatingApi(JSONObject jSONObject) {
        return JZ.A00(jSONObject);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeAdScrollViewApi createNativeAdScrollViewApi(NativeAdScrollView nativeAdScrollView, Context context, NativeAdsManager nativeAdsManager, @Nullable NativeAdScrollView.AdViewProvider adViewProvider, int i, @Nullable NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes, int i2) {
        return new AnonymousClass5D(nativeAdScrollView, context, nativeAdsManager, adViewProvider, i, type, nativeAdViewAttributes, i2);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeAdViewApi createNativeAdViewApi() {
        if (A02 == null) {
            A02 = new AnonymousClass5E();
        }
        return A02;
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeAdViewAttributesApi createNativeAdViewAttributesApi() {
        return new C0578Ja();
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeAdViewTypeApi createNativeAdViewTypeApi(int i) {
        return new AnonymousClass5F(i);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeAdsManagerApi createNativeAdsManagerApi(Context context, String str, int i) {
        return (NativeAdsManagerApi) C02434s.A00(new AnonymousClass5G(context, str, i), NativeAdsManagerApi.class);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeBannerAdApi createNativeBannerAdApi(NativeBannerAd nativeBannerAd, NativeAdBaseApi nativeAdBaseApi) {
        return new AnonymousClass5K(nativeAdBaseApi);
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeBannerAdViewApi createNativeBannerAdViewApi() {
        if (A03 == null) {
            A03 = new AnonymousClass5L();
        }
        return A03;
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public NativeComponentTagApi createNativeComponentTagApi() {
        return new AnonymousClass5M();
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public RewardedVideoAdApi createRewardedVideoAd(Context context, String str, RewardedVideoAd rewardedVideoAd) {
        return (RewardedVideoAdApi) C02434s.A00(new AnonymousClass5N(context, str, rewardedVideoAd), RewardedVideoAdApi.class);
    }

    public static C02665q getBidderTokenProviderApi() {
        if (A04 == null) {
            A04 = new C02665q();
        }
        return A04;
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public InitApi getInitApi() {
        return A06;
    }

    @Override // com.facebook.ads.internal.dynamicloading.DynamicLoader
    public void maybeInitInternally(Context context) {
        AnonymousClass91.A0B(AnonymousClass56.A07(context));
    }
}
