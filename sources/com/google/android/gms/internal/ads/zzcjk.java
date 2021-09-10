package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zztw;
import com.google.android.gms.internal.ads.zzug;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

public final class zzcjk implements zzbrr, zzbse, zzbtb, zzbua, zzbwc, zzvc {
    private final zztu zzgkx;
    @GuardedBy("this")
    private boolean zzgky = false;

    public zzcjk(zztu zztu, @Nullable zzdkv zzdkv) {
        this.zzgkx = zztu;
        zztu.zza(zztw.zza.EnumC0068zza.AD_REQUEST);
        if (zzdkv != null) {
            zztu.zza(zztw.zza.EnumC0068zza.REQUEST_IS_PREFETCH);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final synchronized void onAdClicked() {
        if (!this.zzgky) {
            this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_FIRST_CLICK);
            this.zzgky = true;
            return;
        }
        this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_SUBSEQUENT_CLICK);
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final synchronized void onAdImpression() {
        this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_IMPRESSION);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_LOADED);
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zzalx() {
        this.zzgkx.zza(zztw.zza.EnumC0068zza.REQUEST_FAILED_TO_LOAD_FROM_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnl) {
        this.zzgkx.zza(new zzcjj(zzdnl));
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zzbg(boolean z) {
        zztw.zza.EnumC0068zza zza;
        zztu zztu = this.zzgkx;
        if (z) {
            zza = zztw.zza.EnumC0068zza.REQUESTED_CACHE_KEY_FROM_SERVICE_SUCCEEDED;
        } else {
            zza = zztw.zza.EnumC0068zza.REQUESTED_CACHE_KEY_FROM_SERVICE_FAILED;
        }
        zztu.zza(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zzbh(boolean z) {
        zztw.zza.EnumC0068zza zza;
        zztu zztu = this.zzgkx;
        if (z) {
            zza = zztw.zza.EnumC0068zza.NOTIFIED_CACHE_HIT_TO_SERVICE_SUCCEEDED;
        } else {
            zza = zztw.zza.EnumC0068zza.NOTIFIED_CACHE_HIT_TO_SERVICE_FAILED;
        }
        zztu.zza(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvg) {
        switch (zzvg.errorCode) {
            case 1:
                this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_FAILED_TO_LOAD_INVALID_REQUEST);
                return;
            case 2:
                this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_FAILED_TO_LOAD_NETWORK_ERROR);
                return;
            case 3:
                this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_FAILED_TO_LOAD_NO_FILL);
                return;
            case 4:
                this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_FAILED_TO_LOAD_TIMEOUT);
                return;
            case 5:
                this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_FAILED_TO_LOAD_CANCELLED);
                return;
            case 6:
                this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_FAILED_TO_LOAD_NO_ERROR);
                return;
            case 7:
                this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_FAILED_TO_LOAD_NOT_FOUND);
                return;
            default:
                this.zzgkx.zza(zztw.zza.EnumC0068zza.AD_FAILED_TO_LOAD);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatq) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zzd(zzug.zzb zzb) {
        this.zzgkx.zza(new zzcjl(zzb));
        this.zzgkx.zza(zztw.zza.EnumC0068zza.REQUEST_SAVED_TO_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zze(zzug.zzb zzb) {
        this.zzgkx.zza(new zzcjo(zzb));
        this.zzgkx.zza(zztw.zza.EnumC0068zza.REQUEST_PREFETCH_INTERCEPTED);
    }

    @Override // com.google.android.gms.internal.ads.zzbwc
    public final void zzc(zzug.zzb zzb) {
        this.zzgkx.zza(new zzcjm(zzb));
        this.zzgkx.zza(zztw.zza.EnumC0068zza.REQUEST_LOADED_FROM_CACHE);
    }
}
