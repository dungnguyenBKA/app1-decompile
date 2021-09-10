package com.google.android.gms.internal.ads;

public final class zzdgz implements zzdfi<zzdgw> {
    private String packageName;
    private zzdzv zzghl;
    private zzayg zzhep;

    public zzdgz(zzayg zzayg, zzdzv zzdzv, String str) {
        this.zzhep = zzayg;
        this.zzghl = zzdzv;
        this.packageName = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdgw> zzasy() {
        new zzbaa();
        zzdzw<String> zzag = zzdzk.zzag(null);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxc)).booleanValue()) {
            zzag = this.zzhep.zzdz(this.packageName);
        }
        zzdzw<String> zzea = this.zzhep.zzea(this.packageName);
        return zzdzk.zzb(zzag, zzea).zzb(new zzdgy(zzag, zzea), zzazp.zzeic);
    }
}
