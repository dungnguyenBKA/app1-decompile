package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.util.zzj;
import java.util.ArrayList;

public final class zzdnp {
    public final zzvs zzbpo;
    public final zzaeh zzdoe;
    public final zzajt zzdvt;
    public final int zzgzc;
    public final boolean zzhar;
    public final zzxz zzhku;
    public final zzaau zzhkv;
    public final zzvl zzhkw;
    public final String zzhkx;
    public final ArrayList<String> zzhky;
    public final ArrayList<String> zzhkz;
    public final zzvx zzhla;
    public final AdManagerAdViewOptions zzhlb;
    public final PublisherAdViewOptions zzhlc;
    public final zzxt zzhld;
    public final zzdnc zzhle;

    private zzdnp(zzdnr zzdnr) {
        zzaau zzaau;
        zzaeh zzaeh;
        this.zzbpo = zzdnr.zza(zzdnr);
        this.zzhkx = zzdnr.zzb(zzdnr);
        this.zzhku = zzdnr.zzc(zzdnr);
        this.zzhkw = new zzvl(zzdnr.zzn(zzdnr).versionCode, zzdnr.zzn(zzdnr).zzchn, zzdnr.zzn(zzdnr).extras, zzdnr.zzn(zzdnr).zzcho, zzdnr.zzn(zzdnr).zzchp, zzdnr.zzn(zzdnr).zzchq, zzdnr.zzn(zzdnr).zzado, zzdnr.zzn(zzdnr).zzbni || zzdnr.zzo(zzdnr), zzdnr.zzn(zzdnr).zzchr, zzdnr.zzn(zzdnr).zzchs, zzdnr.zzn(zzdnr).zznb, zzdnr.zzn(zzdnr).zzcht, zzdnr.zzn(zzdnr).zzchu, zzdnr.zzn(zzdnr).zzchv, zzdnr.zzn(zzdnr).zzchw, zzdnr.zzn(zzdnr).zzchx, zzdnr.zzn(zzdnr).zzchy, zzdnr.zzn(zzdnr).zzchz, zzdnr.zzn(zzdnr).zzcia, zzdnr.zzn(zzdnr).zzadp, zzdnr.zzn(zzdnr).zzadq, zzdnr.zzn(zzdnr).zzcib, zzj.zzdf(zzdnr.zzn(zzdnr).zzcic));
        if (zzdnr.zzp(zzdnr) != null) {
            zzaau = zzdnr.zzp(zzdnr);
        } else {
            zzaau = zzdnr.zzq(zzdnr) != null ? zzdnr.zzq(zzdnr).zzdfu : null;
        }
        this.zzhkv = zzaau;
        this.zzhky = zzdnr.zzd(zzdnr);
        this.zzhkz = zzdnr.zze(zzdnr);
        if (zzdnr.zzd(zzdnr) == null) {
            zzaeh = null;
        } else if (zzdnr.zzq(zzdnr) == null) {
            zzaeh = new zzaeh(new NativeAdOptions.Builder().build());
        } else {
            zzaeh = zzdnr.zzq(zzdnr);
        }
        this.zzdoe = zzaeh;
        this.zzhla = zzdnr.zzf(zzdnr);
        this.zzgzc = zzdnr.zzg(zzdnr);
        this.zzhlb = zzdnr.zzh(zzdnr);
        this.zzhlc = zzdnr.zzi(zzdnr);
        this.zzhld = zzdnr.zzj(zzdnr);
        this.zzdvt = zzdnr.zzk(zzdnr);
        this.zzhle = new zzdnc(zzdnr.zzl(zzdnr));
        this.zzhar = zzdnr.zzm(zzdnr);
    }

    public final zzagl zzavc() {
        PublisherAdViewOptions publisherAdViewOptions = this.zzhlc;
        if (publisherAdViewOptions == null && this.zzhlb == null) {
            return null;
        }
        if (publisherAdViewOptions != null) {
            return publisherAdViewOptions.zzjr();
        }
        return this.zzhlb.zzjr();
    }
}
