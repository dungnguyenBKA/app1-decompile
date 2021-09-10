package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.common.internal.n;

public final class zzaof implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {
    private final zzank zzdnw;
    private NativeAdMapper zzdnx;
    private UnifiedNativeAdMapper zzdny;
    private NativeCustomTemplateAd zzdnz;

    public zzaof(zzank zzank) {
        this.zzdnw = zzank;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdClicked.");
        try {
            this.zzdnw.onAdClicked();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdClosed.");
        try {
            this.zzdnw.onAdClosed();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        n.d("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error. ");
        sb.append(i);
        zzazk.zzdy(sb.toString());
        try {
            this.zzdnw.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.zzdnx;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.zzdny;
        if (this.zzdnz == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                zzazk.zze("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideImpressionRecording()) {
                zzazk.zzdy("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideImpressionRecording()) {
                zzazk.zzdy("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        zzazk.zzdy("Adapter called onAdImpression.");
        try {
            this.zzdnw.onAdImpression();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdLeftApplication.");
        try {
            this.zzdnw.onAdLeftApplication();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdLoaded.");
        try {
            this.zzdnw.onAdLoaded();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdOpened.");
        try {
            this.zzdnw.onAdOpened();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onVideoEnd(MediationNativeAdapter mediationNativeAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onVideoEnd.");
        try {
            this.zzdnw.onVideoEnd();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void zza(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAppEvent.");
        try {
            this.zzdnw.onAppEvent(str, str2);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final NativeAdMapper zzvi() {
        return this.zzdnx;
    }

    public final UnifiedNativeAdMapper zzvj() {
        return this.zzdny;
    }

    public final NativeCustomTemplateAd zzvk() {
        return this.zzdnz;
    }

    private static void zza(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper, NativeAdMapper nativeAdMapper) {
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            VideoController videoController = new VideoController();
            videoController.zza(new zzany());
            if (unifiedNativeAdMapper != null && unifiedNativeAdMapper.hasVideoContent()) {
                unifiedNativeAdMapper.zza(videoController);
            }
            if (nativeAdMapper != null && nativeAdMapper.hasVideoContent()) {
                nativeAdMapper.zza(videoController);
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdClicked.");
        try {
            this.zzdnw.onAdClicked();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdClosed.");
        try {
            this.zzdnw.onAdClosed();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, AdError adError) {
        n.d("#008 Must be called on the main UI thread.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(domain).length() + String.valueOf(message).length() + 97);
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(code);
        sb.append(". ErrorMessage: ");
        sb.append(message);
        sb.append(". ErrorDomain: ");
        sb.append(domain);
        zzazk.zzdy(sb.toString());
        try {
            this.zzdnw.zzd(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdLeftApplication.");
        try {
            this.zzdnw.onAdLeftApplication();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdLoaded.");
        try {
            this.zzdnw.onAdLoaded();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdOpened.");
        try {
            this.zzdnw.onAdOpened();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.zzdnx;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.zzdny;
        if (this.zzdnz == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                zzazk.zze("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideClickHandling()) {
                zzazk.zzdy("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideClickHandling()) {
                zzazk.zzdy("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        zzazk.zzdy("Adapter called onAdClicked.");
        try {
            this.zzdnw.onAdClicked();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdClosed.");
        try {
            this.zzdnw.onAdClosed();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdLeftApplication.");
        try {
            this.zzdnw.onAdLeftApplication();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdLoaded.");
        this.zzdnx = nativeAdMapper;
        this.zzdny = null;
        zza(mediationNativeAdapter, (UnifiedNativeAdMapper) null, nativeAdMapper);
        try {
            this.zzdnw.onAdLoaded();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdOpened.");
        try {
            this.zzdnw.onAdOpened();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        n.d("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        zzazk.zzdy(sb.toString());
        try {
            this.zzdnw.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd) {
        n.d("#008 Must be called on the main UI thread.");
        String valueOf = String.valueOf(nativeCustomTemplateAd.getCustomTemplateId());
        zzazk.zzdy(valueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(valueOf) : new String("Adapter called onAdLoaded with template id "));
        this.zzdnz = nativeCustomTemplateAd;
        try {
            this.zzdnw.onAdLoaded();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, AdError adError) {
        n.d("#008 Must be called on the main UI thread.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(domain).length() + String.valueOf(message).length() + 97);
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(code);
        sb.append(". ErrorMessage: ");
        sb.append(message);
        sb.append(". ErrorDomain: ");
        sb.append(domain);
        zzazk.zzdy(sb.toString());
        try {
            this.zzdnw.zzd(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper) {
        n.d("#008 Must be called on the main UI thread.");
        zzazk.zzdy("Adapter called onAdLoaded.");
        this.zzdny = unifiedNativeAdMapper;
        this.zzdnx = null;
        zza(mediationNativeAdapter, unifiedNativeAdMapper, (NativeAdMapper) null);
        try {
            this.zzdnw.onAdLoaded();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        if (nativeCustomTemplateAd instanceof zzafo) {
            try {
                this.zzdnw.zza(((zzafo) nativeCustomTemplateAd).zztv(), str);
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        } else {
            zzazk.zzex("Unexpected native custom template ad type.");
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        n.d("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        zzazk.zzdy(sb.toString());
        try {
            this.zzdnw.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, AdError adError) {
        n.d("#008 Must be called on the main UI thread.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(domain).length() + String.valueOf(message).length() + 97);
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(code);
        sb.append(". ErrorMessage: ");
        sb.append(message);
        sb.append(". ErrorDomain: ");
        sb.append(domain);
        zzazk.zzdy(sb.toString());
        try {
            this.zzdnw.zzd(adError.zzdq());
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
