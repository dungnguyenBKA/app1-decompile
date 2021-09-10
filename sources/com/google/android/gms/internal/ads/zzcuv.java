package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MobileAds;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;

/* access modifiers changed from: package-private */
public final class zzcuv implements zzdzl<T> {
    private final /* synthetic */ zzdnb zzgjc;
    private final /* synthetic */ long zzgvc;
    private final /* synthetic */ String zzgvd;
    private final /* synthetic */ zzdmw zzgve;
    private final /* synthetic */ zzcuw zzgvf;

    zzcuv(zzcuw zzcuw, long j, String str, zzdmw zzdmw, zzdnb zzdnb) {
        this.zzgvf = zzcuw;
        this.zzgvc = j;
        this.zzgvd = str;
        this.zzgve = zzdmw;
        this.zzgjc = zzdnb;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void onSuccess(T t) {
        long b = this.zzgvf.zzbqg.b() - this.zzgvc;
        this.zzgvf.zza(this.zzgvd, 0, b, this.zzgve.zzhjw);
        if (this.zzgvf.zzgvi) {
            this.zzgvf.zzgvg.zza(this.zzgjc, this.zzgve, 0, null, b);
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdab)).booleanValue()) {
            this.zzgvf.zzfxh.zza(this.zzgve, b, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        int i;
        zzvg zzvg;
        long b = this.zzgvf.zzbqg.b() - this.zzgvc;
        if (th instanceof TimeoutException) {
            i = 2;
        } else if (th instanceof zzcum) {
            i = 3;
        } else if (th instanceof CancellationException) {
            i = 4;
        } else if (th instanceof zzdnt) {
            i = 5;
        } else {
            i = (!(th instanceof zzcmb) || zzdok.zzh(th).errorCode != 3) ? 6 : 1;
        }
        this.zzgvf.zza(this.zzgvd, i, b, this.zzgve.zzhjw);
        if (this.zzgvf.zzgvi) {
            this.zzgvf.zzgvg.zza(this.zzgjc, this.zzgve, i, th instanceof zzcrn ? (zzcrn) th : null, b);
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdab)).booleanValue()) {
            zzvg zzh = zzdok.zzh(th);
            int i2 = zzh.errorCode;
            if ((i2 == 3 || i2 == 0) && (zzvg = zzh.zzchi) != null && !zzvg.zzchh.equals(MobileAds.ERROR_DOMAIN)) {
                zzh = zzdok.zzh(new zzcrn(zzdom.MEDIATION_NO_FILL, zzh.zzchi));
            }
            this.zzgvf.zzfxh.zza(this.zzgve, b, zzh);
        }
    }
}
