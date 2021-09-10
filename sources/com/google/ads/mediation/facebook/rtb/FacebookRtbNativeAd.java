package com.google.ads.mediation.facebook.rtb;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;

public class FacebookRtbNativeAd extends UnifiedNativeAdMapper {
    private MediationNativeAdConfiguration adConfiguration;
    private MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> callback;
    private MediaView mMediaView;
    private NativeAdBase mNativeAdBase;
    private MediationNativeAdCallback mNativeAdCallback;

    /* access modifiers changed from: private */
    public class FacebookAdapterNativeAdImage extends NativeAd.Image {
        private Drawable mDrawable;
        private Uri mUri;

        public FacebookAdapterNativeAdImage() {
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Drawable getDrawable() {
            return this.mDrawable;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public double getScale() {
            return 1.0d;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Uri getUri() {
            return this.mUri;
        }

        /* access modifiers changed from: protected */
        public void setDrawable(Drawable drawable) {
            this.mDrawable = drawable;
        }

        public FacebookAdapterNativeAdImage(Uri uri) {
            this.mUri = uri;
        }

        public FacebookAdapterNativeAdImage(Drawable drawable) {
            this.mDrawable = drawable;
        }
    }

    /* access modifiers changed from: private */
    public interface NativeAdMapperListener {
        void onMappingFailed(String str);

        void onMappingSuccess();
    }

    /* access modifiers changed from: private */
    public class NativeListener implements AdListener, NativeAdListener {
        private WeakReference<Context> mContext;
        private NativeAdBase mNativeAd;

        NativeListener(Context context, NativeAdBase nativeAdBase) {
            this.mNativeAd = nativeAdBase;
            this.mContext = new WeakReference<>(context);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            FacebookRtbNativeAd.this.mNativeAdCallback.onAdOpened();
            FacebookRtbNativeAd.this.mNativeAdCallback.onAdLeftApplication();
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            if (ad != this.mNativeAd) {
                String createAdapterError = FacebookMediationAdapter.createAdapterError(FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, "Ad Loaded is not a Native Ad.");
                Log.e(FacebookMediationAdapter.TAG, createAdapterError);
                FacebookRtbNativeAd.this.callback.onFailure(createAdapterError);
                return;
            }
            Context context = this.mContext.get();
            if (context == null) {
                String createAdapterError2 = FacebookMediationAdapter.createAdapterError(FacebookMediationAdapter.ERROR_NULL_CONTEXT, "Context is null.");
                Log.e(FacebookMediationAdapter.TAG, createAdapterError2);
                FacebookRtbNativeAd.this.callback.onFailure(createAdapterError2);
                return;
            }
            FacebookRtbNativeAd.this.mapNativeAd(context, new NativeAdMapperListener() {
                /* class com.google.ads.mediation.facebook.rtb.FacebookRtbNativeAd.NativeListener.AnonymousClass1 */

                @Override // com.google.ads.mediation.facebook.rtb.FacebookRtbNativeAd.NativeAdMapperListener
                public void onMappingFailed(String str) {
                    String createAdapterError = FacebookMediationAdapter.createAdapterError(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, str);
                    Log.w(FacebookMediationAdapter.TAG, createAdapterError);
                    FacebookRtbNativeAd.this.callback.onFailure(createAdapterError);
                }

                @Override // com.google.ads.mediation.facebook.rtb.FacebookRtbNativeAd.NativeAdMapperListener
                public void onMappingSuccess() {
                    FacebookRtbNativeAd facebookRtbNativeAd = FacebookRtbNativeAd.this;
                    facebookRtbNativeAd.mNativeAdCallback = (MediationNativeAdCallback) facebookRtbNativeAd.callback.onSuccess(FacebookRtbNativeAd.this);
                }
            });
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            String createSdkError = FacebookMediationAdapter.createSdkError(adError);
            Log.w(FacebookMediationAdapter.TAG, createSdkError);
            FacebookRtbNativeAd.this.callback.onFailure(createSdkError);
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(Ad ad) {
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(Ad ad) {
            String str = FacebookMediationAdapter.TAG;
        }
    }

    public FacebookRtbNativeAd(MediationNativeAdConfiguration mediationNativeAdConfiguration, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        this.callback = mediationAdLoadCallback;
        this.adConfiguration = mediationNativeAdConfiguration;
    }

    private boolean containsRequiredFieldsForUnifiedNativeAd(NativeAdBase nativeAdBase) {
        boolean z = (nativeAdBase.getAdHeadline() == null || nativeAdBase.getAdBodyText() == null || nativeAdBase.getAdIcon() == null || nativeAdBase.getAdCallToAction() == null) ? false : true;
        if (nativeAdBase instanceof NativeBannerAd) {
            return z;
        }
        if (!z || nativeAdBase.getAdCoverImage() == null || this.mMediaView == null) {
            return false;
        }
        return true;
    }

    public void mapNativeAd(Context context, NativeAdMapperListener nativeAdMapperListener) {
        if (!containsRequiredFieldsForUnifiedNativeAd(this.mNativeAdBase)) {
            Log.w(FacebookMediationAdapter.TAG, "Ad from Facebook doesn't have all assets required for the app install format.");
            nativeAdMapperListener.onMappingFailed("Ad from Facebook doesn't have all assets required for the app install format.");
            return;
        }
        setHeadline(this.mNativeAdBase.getAdHeadline());
        ArrayList arrayList = new ArrayList();
        arrayList.add(new FacebookAdapterNativeAdImage());
        setImages(arrayList);
        setBody(this.mNativeAdBase.getAdBodyText());
        if (this.mNativeAdBase.getPreloadedIconViewDrawable() != null) {
            setIcon(new FacebookAdapterNativeAdImage(this.mNativeAdBase.getPreloadedIconViewDrawable()));
        } else if (this.mNativeAdBase.getAdIcon() == null) {
            setIcon(new FacebookAdapterNativeAdImage());
        } else {
            setIcon(new FacebookAdapterNativeAdImage(Uri.parse(this.mNativeAdBase.getAdIcon().getUrl())));
        }
        setCallToAction(this.mNativeAdBase.getAdCallToAction());
        setAdvertiser(this.mNativeAdBase.getAdvertiserName());
        this.mMediaView.setListener(new MediaViewListener() {
            /* class com.google.ads.mediation.facebook.rtb.FacebookRtbNativeAd.AnonymousClass1 */

            @Override // com.facebook.ads.MediaViewListener
            public void onComplete(MediaView mediaView) {
                if (FacebookRtbNativeAd.this.mNativeAdCallback != null) {
                    FacebookRtbNativeAd.this.mNativeAdCallback.onVideoComplete();
                }
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onEnterFullscreen(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onExitFullscreen(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onFullscreenBackground(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onFullscreenForeground(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onPause(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onPlay(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onVolumeChange(MediaView mediaView, float f) {
            }
        });
        setHasVideoContent(true);
        setMediaView(this.mMediaView);
        setStarRating(null);
        Bundle bundle = new Bundle();
        bundle.putCharSequence(FacebookAdapter.KEY_ID, this.mNativeAdBase.getId());
        bundle.putCharSequence(FacebookAdapter.KEY_SOCIAL_CONTEXT_ASSET, this.mNativeAdBase.getAdSocialContext());
        setExtras(bundle);
        setAdChoicesContent(new AdOptionsView(context, this.mNativeAdBase, null));
        nativeAdMapperListener.onMappingSuccess();
    }

    public void render() {
        String placementID = FacebookMediationAdapter.getPlacementID(this.adConfiguration.getServerParameters());
        if (TextUtils.isEmpty(placementID)) {
            String createAdapterError = FacebookMediationAdapter.createAdapterError(101, "Failed to request ad, placementID is null or empty.");
            Log.e(FacebookMediationAdapter.TAG, createAdapterError);
            this.callback.onFailure(createAdapterError);
            return;
        }
        FacebookMediationAdapter.setMixedAudience(this.adConfiguration);
        this.mMediaView = new MediaView(this.adConfiguration.getContext());
        try {
            this.mNativeAdBase = NativeAdBase.fromBidPayload(this.adConfiguration.getContext(), placementID, this.adConfiguration.getBidResponse());
            if (!TextUtils.isEmpty(this.adConfiguration.getWatermark())) {
                this.mNativeAdBase.setExtraHints(new ExtraHints.Builder().mediationData(this.adConfiguration.getWatermark()).build());
            }
            NativeAdBase nativeAdBase = this.mNativeAdBase;
            nativeAdBase.loadAd(nativeAdBase.buildLoadAdConfig().withAdListener(new NativeListener(this.adConfiguration.getContext(), this.mNativeAdBase)).withBid(this.adConfiguration.getBidResponse()).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).withPreloadedIconView(-1, -1).build());
        } catch (Exception e) {
            StringBuilder q = ic.q("Failed to create native ad from bid payload: ");
            q.append(e.getMessage());
            String createAdapterError2 = FacebookMediationAdapter.createAdapterError(FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD, q.toString());
            Log.w(FacebookMediationAdapter.TAG, createAdapterError2);
            this.callback.onFailure(createAdapterError2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
        setOverrideClickHandling(true);
        ArrayList arrayList = new ArrayList(map.values());
        ImageView imageView = (ImageView) map.get("3003");
        NativeAdBase nativeAdBase = this.mNativeAdBase;
        if (nativeAdBase instanceof com.facebook.ads.NativeAd) {
            ((com.facebook.ads.NativeAd) nativeAdBase).registerViewForInteraction(view, this.mMediaView, imageView, arrayList);
        } else if (nativeAdBase instanceof NativeBannerAd) {
            ((NativeBannerAd) nativeAdBase).registerViewForInteraction(view, imageView, arrayList);
        }
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void untrackView(View view) {
        NativeAdBase nativeAdBase = this.mNativeAdBase;
        if (nativeAdBase != null) {
            nativeAdBase.unregisterView();
        }
        super.untrackView(view);
    }
}
