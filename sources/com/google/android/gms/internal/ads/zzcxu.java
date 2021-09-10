package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

public final class zzcxu extends zzxh {
    private zzwx zzbps;
    private final zzbgc zzguy;
    private final Context zzgxt;
    private final zzdnr zzgxu;
    private final zzccq zzgxv = new zzccq();

    public zzcxu(zzbgc zzbgc, Context context, String str) {
        zzdnr zzdnr = new zzdnr();
        this.zzgxu = zzdnr;
        this.zzguy = zzbgc;
        zzdnr.zzgs(str);
        this.zzgxt = context;
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzafr zzafr) {
        this.zzgxv.zzb(zzafr);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zzb(zzwx zzwx) {
        this.zzbps = zzwx;
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final zzxd zzqz() {
        zzcco zzaor = this.zzgxv.zzaor();
        this.zzgxu.zzc(zzaor.zzaoo());
        this.zzgxu.zzd(zzaor.zzaop());
        zzdnr zzdnr = this.zzgxu;
        if (zzdnr.zzkg() == null) {
            zzdnr.zzg(zzvs.zzqe());
        }
        return new zzcxt(this.zzgxt, this.zzguy, this.zzgxu, zzaor, this.zzbps);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzagg zzagg) {
        this.zzgxv.zzb(zzagg);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zzb(zzxz zzxz) {
        this.zzgxu.zzc(zzxz);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzafs zzafs) {
        this.zzgxv.zzb(zzafs);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(String str, zzafy zzafy, zzafx zzafx) {
        this.zzgxv.zzb(str, zzafy, zzafx);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzaeh zzaeh) {
        this.zzgxu.zzd(zzaeh);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzajt zzajt) {
        this.zzgxu.zzb(zzajt);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzakb zzakb) {
        this.zzgxv.zzb(zzakb);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzagf zzagf, zzvs zzvs) {
        this.zzgxv.zza(zzagf);
        this.zzgxu.zzg(zzvs);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzgxu.zzb(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zzgxu.zzb(adManagerAdViewOptions);
    }
}
