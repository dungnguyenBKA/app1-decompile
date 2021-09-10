package com.google.android.gms.internal.ads;

public final class zzcud implements zzeqb<zzctx> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzcen> zzfdq;
    private final zzeqo<zzcau> zzgtg;
    private final zzeqo<zzdof<zzcgk>> zzgus;

    public zzcud(zzeqo<zzcau> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<zzcen> zzeqo3, zzeqo<zzdof<zzcgk>> zzeqo4) {
        this.zzgtg = zzeqo;
        this.zzewf = zzeqo2;
        this.zzfdq = zzeqo3;
        this.zzgus = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzctx(this.zzgtg.get(), this.zzewf.get(), this.zzfdq.get(), this.zzgus.get());
    }
}
