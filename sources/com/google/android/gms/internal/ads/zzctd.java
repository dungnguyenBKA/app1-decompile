package com.google.android.gms.internal.ads;

import android.os.Bundle;
import javax.annotation.concurrent.GuardedBy;

public final class zzctd extends zzann implements zzbsu {
    @GuardedBy("this")
    private zzank zzdox;
    @GuardedBy("this")
    private zzbsx zzguf;

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onAdClicked() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onAdClosed() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onAdFailedToLoad(int i) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onAdFailedToLoad(i);
        }
        zzbsx zzbsx = this.zzguf;
        if (zzbsx != null) {
            zzbsx.onAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onAdImpression() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onAdLeftApplication() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onAdLoaded() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onAdLoaded();
        }
        zzbsx zzbsx = this.zzguf;
        if (zzbsx != null) {
            zzbsx.onAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onAdOpened() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onAppEvent(String str, String str2) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onAppEvent(str, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onVideoEnd() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onVideoEnd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onVideoPause() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onVideoPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void onVideoPlay() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.onVideoPlay();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsu
    public final synchronized void zza(zzbsx zzbsx) {
        this.zzguf = zzbsx;
    }

    public final synchronized void zzb(zzank zzank) {
        this.zzdox = zzank;
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zzc(int i, String str) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zzc(i, str);
        }
        zzbsx zzbsx = this.zzguf;
        if (zzbsx != null) {
            zzbsx.zzf(i, str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zzd(zzvg zzvg) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zzd(zzvg);
        }
        zzbsx zzbsx = this.zzguf;
        if (zzbsx != null) {
            zzbsx.zzc(zzvg);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zzdb(int i) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zzdb(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zzdi(String str) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zzdi(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zzdj(String str) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zzdj(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zzf(zzvg zzvg) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zzf(zzvg);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zzve() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zzve();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zzvf() {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zzvf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zza(zzanp zzanp) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zza(zzanp);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zzb(zzavj zzavj) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zzb(zzavj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zza(zzafn zzafn, String str) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zza(zzafn, str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zzb(Bundle bundle) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zzb(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final synchronized void zza(zzavl zzavl) {
        zzank zzank = this.zzdox;
        if (zzank != null) {
            zzank.zza(zzavl);
        }
    }
}
