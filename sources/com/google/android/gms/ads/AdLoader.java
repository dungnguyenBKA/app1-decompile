package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzaeh;
import com.google.android.gms.internal.ads.zzagx;
import com.google.android.gms.internal.ads.zzahb;
import com.google.android.gms.internal.ads.zzahc;
import com.google.android.gms.internal.ads.zzahd;
import com.google.android.gms.internal.ads.zzahf;
import com.google.android.gms.internal.ads.zzahh;
import com.google.android.gms.internal.ads.zzanf;
import com.google.android.gms.internal.ads.zzaqw;
import com.google.android.gms.internal.ads.zzard;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzvi;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzxd;
import com.google.android.gms.internal.ads.zzxi;
import com.google.android.gms.internal.ads.zzzk;

public class AdLoader {
    private final Context a;
    private final zzxd b;

    AdLoader(Context context, zzxd zzxd) {
        zzvq zzvq = zzvq.zzcif;
        this.a = context;
        this.b = zzxd;
    }

    private final void a(zzzk zzzk) {
        try {
            this.b.zzb(zzvq.zza(this.a, zzzk));
        } catch (RemoteException e) {
            zzazk.zzc("Failed to load ad.", e);
        }
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        try {
            return this.b.zzkh();
        } catch (RemoteException e) {
            zzazk.zzd("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    public boolean isLoading() {
        try {
            return this.b.isLoading();
        } catch (RemoteException e) {
            zzazk.zzd("Failed to check if ad is loading.", e);
            return false;
        }
    }

    public void loadAd(AdRequest adRequest) {
        a(adRequest.zzds());
    }

    public void loadAds(AdRequest adRequest, int i) {
        try {
            this.b.zza(zzvq.zza(this.a, adRequest.zzds()), i);
        } catch (RemoteException e) {
            zzazk.zzc("Failed to load ads.", e);
        }
    }

    public static class Builder {
        private final Context a;
        private final zzxi b;

        public Builder(Context context, String str) {
            n.i(context, "context cannot be null");
            Context context2 = context;
            zzxi zzb = zzwr.zzqo().zzb(context, str, new zzanf());
            this.a = context2;
            this.b = zzb;
        }

        public AdLoader build() {
            try {
                return new AdLoader(this.a, this.b.zzqz());
            } catch (RemoteException e) {
                zzazk.zzc("Failed to build AdLoader.", e);
                return null;
            }
        }

        public Builder forAdManagerAdView(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.b.zza(new zzahb(onAdManagerAdViewLoadedListener), new zzvs(this.a, adSizeArr));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add Google Ad Manager banner ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forAppInstallAd(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.b.zza(new zzahd(onAppInstallAdLoadedListener));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add app install ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forContentAd(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.b.zza(new zzahc(onContentAdLoadedListener));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add content ad listener", e);
            }
            return this;
        }

        public Builder forCustomFormatAd(String str, NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            zzaqw zzaqw = new zzaqw(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                this.b.zza(str, zzaqw.zzvs(), zzaqw.zzua());
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add custom format ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forCustomTemplateAd(String str, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            zzagx zzagx = new zzagx(onCustomTemplateAdLoadedListener, onCustomClickListener);
            try {
                this.b.zza(str, zzagx.zztz(), zzagx.zzua());
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add custom template ad listener", e);
            }
            return this;
        }

        public Builder forNativeAd(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.b.zza(new zzard(onNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forPublisherAdView(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.b.zza(new zzahf(onPublisherAdViewLoadedListener), new zzvs(this.a, adSizeArr));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add publisher banner ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forUnifiedNativeAd(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.b.zza(new zzahh(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.b.zzb(new zzvi(adListener));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to set AdListener.", e);
            }
            return this;
        }

        public Builder withAdManagerAdViewOptions(AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.b.zza(adManagerAdViewOptions);
            } catch (RemoteException e) {
                zzazk.zzd("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }

        @Deprecated
        public Builder withCorrelator(Correlator correlator) {
            return this;
        }

        @Deprecated
        public Builder withNativeAdOptions(NativeAdOptions nativeAdOptions) {
            try {
                this.b.zza(new zzaeh(nativeAdOptions));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to specify native ad options", e);
            }
            return this;
        }

        @Deprecated
        public Builder withPublisherAdViewOptions(PublisherAdViewOptions publisherAdViewOptions) {
            try {
                this.b.zza(publisherAdViewOptions);
            } catch (RemoteException e) {
                zzazk.zzd("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }

        public Builder withNativeAdOptions(com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
            try {
                this.b.zza(new zzaeh(nativeAdOptions));
            } catch (RemoteException e) {
                zzazk.zzd("Failed to specify native ad options", e);
            }
            return this;
        }
    }

    @Deprecated
    public void loadAd(PublisherAdRequest publisherAdRequest) {
        a(publisherAdRequest.zzds());
    }

    public void loadAd(AdManagerAdRequest adManagerAdRequest) {
        a(adManagerAdRequest.zzds());
    }
}
