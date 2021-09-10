package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

public final class zzaqw {
    private final NativeCustomFormatAd.OnCustomFormatAdLoadedListener zzdqn;
    private final NativeCustomFormatAd.OnCustomClickListener zzdqo;
    private NativeCustomFormatAd zzdqp;

    public zzaqw(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.zzdqn = onCustomFormatAdLoadedListener;
        this.zzdqo = onCustomClickListener;
    }

    /* access modifiers changed from: private */
    public final synchronized NativeCustomFormatAd zzc(zzafn zzafn) {
        NativeCustomFormatAd nativeCustomFormatAd = this.zzdqp;
        if (nativeCustomFormatAd != null) {
            return nativeCustomFormatAd;
        }
        zzara zzara = new zzara(zzafn);
        this.zzdqp = zzara;
        return zzara;
    }

    public final zzafx zzua() {
        if (this.zzdqo == null) {
            return null;
        }
        return new zzaqy(this);
    }

    public final zzafy zzvs() {
        return new zzarb(this);
    }
}
