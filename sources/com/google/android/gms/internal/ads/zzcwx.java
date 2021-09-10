package com.google.android.gms.internal.ads;

public final class zzcwx<AdT> implements zzeqb<zzcwt<AdT>> {
    private final zzeqo<zzdzv> zzfux;
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<zzacl> zzgww;
    private final zzeqo<zzcwy<AdT>> zzgxb;

    public zzcwx(zzeqo<zzdrj> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<zzacl> zzeqo3, zzeqo<zzcwy<AdT>> zzeqo4) {
        this.zzfvi = zzeqo;
        this.zzfux = zzeqo2;
        this.zzgww = zzeqo3;
        this.zzgxb = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcwt(this.zzfvi.get(), this.zzfux.get(), this.zzgww.get(), this.zzgxb.get());
    }
}
