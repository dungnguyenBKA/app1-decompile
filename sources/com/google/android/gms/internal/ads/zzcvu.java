package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final class zzcvu implements zzcag {
    private final Context context;
    private final zzazn zzboz;
    private final zzdmw zzesr;
    private final zzdnp zzfwy;
    private final zzchq zzggk;
    private final zzdzw<zzchd> zzgtj;
    private final zzbeb zzgvt;

    private zzcvu(Context context2, zzchq zzchq, zzdnp zzdnp, zzazn zzazn, zzdmw zzdmw, zzdzw<zzchd> zzdzw, zzbeb zzbeb) {
        this.context = context2;
        this.zzggk = zzchq;
        this.zzfwy = zzdnp;
        this.zzboz = zzazn;
        this.zzesr = zzdmw;
        this.zzgtj = zzdzw;
        this.zzgvt = zzbeb;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context2) {
        zzbeb zzbeb;
        zzbeb zzbeb2;
        zzchd zzchd = (zzchd) zzdzk.zzb(this.zzgtj);
        try {
            zzdmw zzdmw = this.zzesr;
            if (!this.zzgvt.zzadm()) {
                zzbeb2 = this.zzgvt;
            } else {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcpd)).booleanValue()) {
                    zzbeb2 = this.zzgvt;
                } else {
                    zzbeb zze = this.zzggk.zze(this.zzfwy.zzbpo);
                    zzaio.zza(zze, zzchd.zzaih());
                    zzcig zzcig = new zzcig();
                    zzcig.zzc(this.context, zze.getView());
                    zzchd.zzahe().zza(zze, true);
                    zze.zzacx().zza(new zzcvt(zzcig, zze));
                    zze.zzacx().zza(zzcvw.zzn(zze));
                    zzdnd zzdnd = zzdmw.zzhjg;
                    zze.zzb(zzdnd.zzdsw, zzdnd.zzdsy, null);
                    zzbeb = zze;
                    zzbeb.zzay(true);
                    zzr.zzkr();
                    boolean zzax = zzj.zzax(this.context);
                    zzdmw zzdmw2 = this.zzesr;
                    zzk zzk = new zzk(false, zzax, false, 0.0f, -1, z, zzdmw2.zzftq, zzdmw2.zzbpm);
                    zzr.zzkq();
                    zzbzw zzahf = zzchd.zzahf();
                    zzdmw zzdmw3 = this.zzesr;
                    int i = zzdmw3.zzhjp;
                    zzazn zzazn = this.zzboz;
                    String str = zzdmw3.zzdwd;
                    zzdnd zzdnd2 = zzdmw3.zzhjg;
                    zzm.zza(context2, new AdOverlayInfoParcel((zzvc) null, zzahf, (zzv) null, zzbeb, i, zzazn, str, zzk, zzdnd2.zzdsw, zzdnd2.zzdsy), true);
                }
            }
            zzbeb = zzbeb2;
            zzbeb.zzay(true);
            zzr.zzkr();
            boolean zzax2 = zzj.zzax(this.context);
            zzdmw zzdmw22 = this.zzesr;
            zzk zzk2 = new zzk(false, zzax2, false, 0.0f, -1, z, zzdmw22.zzftq, zzdmw22.zzbpm);
            zzr.zzkq();
            zzbzw zzahf2 = zzchd.zzahf();
            zzdmw zzdmw32 = this.zzesr;
            int i2 = zzdmw32.zzhjp;
            zzazn zzazn2 = this.zzboz;
            String str2 = zzdmw32.zzdwd;
            zzdnd zzdnd22 = zzdmw32.zzhjg;
            zzm.zza(context2, new AdOverlayInfoParcel((zzvc) null, zzahf2, (zzv) null, zzbeb, i2, zzazn2, str2, zzk2, zzdnd22.zzdsw, zzdnd22.zzdsy), true);
        } catch (zzben e) {
            zzazk.zzc("", e);
        }
    }
}
