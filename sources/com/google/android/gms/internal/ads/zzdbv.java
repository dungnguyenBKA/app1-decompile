package com.google.android.gms.internal.ads;

public final class zzdbv implements zzeqb<zzdbt> {
    private final zzeqo<zzdop> zzfal;
    private final zzeqo<zzbpf> zzfbf;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<String> zzhay;
    private final zzeqo<String> zzhbg;

    private zzdbv(zzeqo<String> zzeqo, zzeqo<String> zzeqo2, zzeqo<zzbpf> zzeqo3, zzeqo<zzdop> zzeqo4, zzeqo<zzdnp> zzeqo5) {
        this.zzhay = zzeqo;
        this.zzhbg = zzeqo2;
        this.zzfbf = zzeqo3;
        this.zzfal = zzeqo4;
        this.zzfvf = zzeqo5;
    }

    public static zzdbv zzg(zzeqo<String> zzeqo, zzeqo<String> zzeqo2, zzeqo<zzbpf> zzeqo3, zzeqo<zzdop> zzeqo4, zzeqo<zzdnp> zzeqo5) {
        return new zzdbv(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdbt(this.zzhay.get(), this.zzhbg.get(), this.zzfbf.get(), this.zzfal.get(), this.zzfvf.get());
    }
}
