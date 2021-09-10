package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

public final class zzagx {
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener zzdgk;
    private final NativeCustomTemplateAd.OnCustomClickListener zzdgl;
    private NativeCustomTemplateAd zzdgm;

    public zzagx(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.zzdgk = onCustomTemplateAdLoadedListener;
        this.zzdgl = onCustomClickListener;
    }

    /* access modifiers changed from: private */
    public final synchronized NativeCustomTemplateAd zzb(zzafn zzafn) {
        NativeCustomTemplateAd nativeCustomTemplateAd = this.zzdgm;
        if (nativeCustomTemplateAd != null) {
            return nativeCustomTemplateAd;
        }
        zzafo zzafo = new zzafo(zzafn);
        this.zzdgm = zzafo;
        return zzafo;
    }

    public final zzafy zztz() {
        return new zzagy(this);
    }

    public final zzafx zzua() {
        if (this.zzdgl == null) {
            return null;
        }
        return new zzagz(this);
    }
}
